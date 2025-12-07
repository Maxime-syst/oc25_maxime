# oc25_maxime

## Site web

Pour réaliser ce travail, j'ai travailler avec html css et javascript, dans le but de proposer un site qui permet d'avoir accès à une liste de randonnée possible à faire. 


### page accueil
## HTML
```html
<!DOCTYPE html>

<html>
    <head>
        <title>
           Site Maxime Genoux
        </title>
        <meta charset="UTF-8">
         <link rel="stylesheet" href="css/style-accueil.css">
    </head>

    <body>
        <div id="navigation">
            <canvas id="image"></canvas>
            <script src="js/animation.js"></script>
            <ul>
                <li><a href="accueil.html">Accueil</a></li>
                <li><a href="été.html">Été</a></li>
                <li><a href="hiver.html">Hiver</a></li>

            </ul>
        </div>
        <h1> Site Maxime Genoux</h1>

        <br>
        <p id="texte">
            Bienvenu sur mon site web, ici vous pourrez trouver une liste de randonnées,
            que vous pourrez réaliser dans les alentours. Que ce soit sur le canton de Vaud, ou en Valais, 
            il y en a pour tous les goûts, et également pour tous les niveaux. 
            Ces randonnées couvrent aussi un programme annuel, que se soit en hiver,
            pour marcher sur la neige, faire de la raquette ou du ski de randonnée,
            Ansi qu'en été pour de la randonné pédestre.

        </p>

        <br>

        <p id="texte">
            Pour ceux qui cherche une escapade plutôt estivale
        </p>

        <br>

        <h2>  <a class="link_centre" href ="été.html">  
            <img class="img_centre" src="images/image1.png" width="300"> </a> </h2>

        <br>

        <p id="texte">
            Et pour ceux qui souhaite s'évader dans les montagnes couvertes de neige
        </p>


        <h2>  <a class="link_centre" href ="hiver.html"> 
            <img class="img_centre" src="images/ski.jpeg" width="300"> </a> </h2>
        
        <br>

```
Cette page comporte une barre d'accueil qui est également sur toutes les autres page. 
```html
 <div id="navigation">
            <canvas id="image"></canvas>
            <script src="js/animation.js"></script>
            <ul>
                <li><a href="accueil.html">Accueil</a></li>
                <li><a href="été.html">Été</a></li>
                <li><a href="hiver.html">Hiver</a></li>

            </ul>
        </div>

```
Avec le style suivant pour permettre l'affichage en ligne.

```css
#navigation {
    background-color:red ;
    padding-top: 1px;
    padding-bottom:1px;
    text-decoration: none;
    overflow: hidden;

}

#navigation canvas{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none; 
    z-index: 0;    
}
 
#navigation ul{
    /* border:solid 1px blue; */
    position: relative;
    width: fit-content;
    padding-left: 0px;
    margin-left: auto;
    margin-right: auto;
}
#navigation li {
    display:inline;
    /* border:solid 1px red; */
    margin-left: 5px;
    margin-right: 5px;

}

```
Cela facilite ensuite, le fonctionnement des variables, en ayant déjà certaines valeurs fixes.

### Variables
Ensuite, nous avons commencer par définir une fonction qui permet de faire fonctionner le capteur à ultrason, dans le but de détecter des objets, qui se trouveraient devant le robot.
```python
def distance_cm():
    trigger.write_digital(1)
    trigger.write_digital(0)
    distance = time_pulse_us(echo,1)/2e6*340
    return max(0, min(400, round(distance*100)))
```

Nous avons ensuite créé une variable qui permet de colorer les LED du robot de manière différente, à chaque moment de la mission A-->B
```python
def set_all(color):
    for i in range(4):
        np[i] = color
    np.show()
```

Nous avons fait une variable qui permet d'ouvrir la pince
```python
def grip_open():
    robot.goToPosition(1, GRIP_OPEN)
```
Et une pour la fermer
```python
def grip_close():
    robot.goToPosition(1, GRIP_CLOSED)
```
Ensuite nous avons définit une variable, qui permet de suivre une ligne, grâce aux capteurs infrarouges, qui se situent en dessous de lui.
```python
def follow_line_step(base=LINE_SPEED, k=LINE_K):
    left = pin1.read_analog()
    right = pin2.read_analog()
    # erreur: positif si la ligne est plus à droite (right < left)
    error = (left - right)
    correction = int(k * error)
    # limite les vitesses
    l = max(-100, min(100, base - correction))
    r = max(-100, min(100, base + correction))
    robot.move(l, r)
```

### Assemblage variable

Nous avons, ensuite assembler plusieurs variables pour en définir d'autre plus précises et qui permettent au robot de réaliser une partie complète de la mission.

Premierement, nous avons fait une variable qui permet de suivre une ligne jusqu'à ce que le robot détecte un objet. Nous avons inclus la notion de temps pour que le robot puisse revenir approximativement à la même place une fois le travail effectué.
```python
def follow_line_until_object(dist_thresh=DIST_THRESH_PICK, max_ms=30000):
    set_all(blue)  # suivi A→B
    t0 = running_time()
    while running_time() - t0 < max_ms:
        d = distance_cm()
        if d <= DIST_APPROACH_MAX:
            base = max(12, int(LINE_SPEED * 0.6))
        else:
            base = LINE_SPEED
        follow_line_step(base=base)
        if d <= dist_thresh and d > 0:
            robot.move(0, 0)
            return running_time() - t0, True
        sleep(5)
    robot.move(0, 0)
    return running_time() - t0, False
```

Ensuite nous avons fait une variable qui permet au robot d'approcher l'objet, une fois qu'il l'à détecté.
```python
def approach_until(dist_thresh=DIST_THRESH_PICK):
    set_all(cyan)
    while True:
        d = distance_cm()
        if 0 < d <= dist_thresh:
            robot.move(0, 0)
            return True
        robot.move(APPROACH_SPEED, APPROACH_SPEED)
        sleep(10)
```

Puis une variable pour qu'il se retourne
```python
def turn_180():
    set_all(magenta)
    tourner(180)
    robot.move(0, 0)
```

Et enfin, pour qu'il retourne à son point initial en suivant un tracé
```python
def follow_line_for_ms(duration_ms):
    set_all(yellow)  # retour B→A
    t0 = running_time()
    while running_time() - t0 < duration_ms:
        follow_line_step(base=LINE_SPEED)
        sleep(5)
    robot.move(0, 0)
```

### Code global

Finalement, nous avons tout mis ensemble pour définir une seule variable qui réalise l'entier du travail.
```python
def mission_A_to_B_pick_and_return():
    
    display.show('A')
    grip_open()
    set_all(blue)

    # 1) A -> B en suivant la ligne jusqu'à l'objet
    t_out, found = follow_line_until_object()
    if not found:
        set_all(red)
        display.scroll("OBJ?", 60)
        return  # échec: pas d'objet détecté

    # 2) Approche fine si besoin

    
    #reculer avant de chopper l'objet
    set_all(orange)
    avancer(-BACK_OFF_CM)
    sleep(150)
    
    # 4) 180°
    turn_180()
    sleep(200)

    #reculer avant de chopper l'objet
    set_all(orange)
    avancer(-BACK_OFF_CM)
    sleep(150)
    
    # 3) Attraper l'objet
    set_all(orange)
    grip_close()
    sleep(400)

    
    # 5) Retour vers A 
    set_all(blue)
    t_back_target = t_out + RETURN_BONUS_MS
    follow_line_for_ms(t_back_target)

    # 6) Déposer l'objet à A
    set_all(green)
    grip_open()
    sleep(400)

    # Reculer légèrement pour dégager la pince
    robot.move(-30, -30, RELEASE_BACK_MS)
    robot.move(0, 0)
    set_all(white)
    display.show('A')
```

### Code pour la télécommande

Finalement, nous avons mis un code final que nous avons attribuer à l'une des variable de la télécommande
```python
 if prog == 3:
        msg = radio.receive()
        if msg == 'd':
            robot.move(0, 0)
            set_all(red)
        elif msg == 'u':
            mission_A_to_B_pick_and_return()
        # Petit blink pour montrer l’attente
        blink(0, 600, 120, blue, black)
        sleep(5)
```

