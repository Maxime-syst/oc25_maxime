# oc25_maxime
## Présentation personnel    
Je m'appelle ***Maxime Genoux***, J'ai 19 ans et je suis actuellement étudiant au [gymnase du Bugnon](https://www.gymnasedubugnon.ch), sur le sit de l'ours.
Je suis une personne sportif, jusqu'à l'année dernière je faisais du unihockey à haut-niveau, apprécie et pratique également d'autres sport comme le vélo, 
la course à pied, l'escalade ainsi que l'alpinisme.

## Pourquoi cette _OC_ ? 
J'ai choisi cette OC, car j'ai plutôt bien apprécié les deux années précédentes d'informatique, j'ai donc choisi de poursuivre cette matière en 3ème année.
J'ai également le projet d'étudié l'informatique après le gymnase, j'éspère donc que cette option pourra déjà un peu m'aider pour mes projets futurs.

## Exemple de programmation
La boucle __for__ parcourt une liste d’éléments un par un. À chaque itération, elle prend un élément de la liste et effectue une action avec lui. Par exemple, si tu as une liste de fruits, la boucle va afficher chaque fruit un à un.
```python
fruits = ["pomme", "banane", "orange"]
for fruit in fruits:
    print(fruit)

```
La boucle __for__ avec __range()__ est utilisée pour répéter une action un nombre précis de fois. Par exemple, range(10) génère les nombres de 0 à 9, elle se répète donc 10 fois.
```python
for i in range (10):
  print(i)
```
La boucle __while__ est une boucle qui se répète tant que la condition est correcte.
```python
compteur = 0
while compteur < 5:
    compteur += 1
```

## Lecture 1 à Chat GPT

### Prompt ( fichier également transmis) 
Peux-tu t’intéresser à ce document de la page 35 à 136 uniquement et répondre aux questions suivantes: 

Citer deux personnes qui ont marqué la création de l’IA. Quelles sont leurs contributions ? 

Quels sont les développements technologiques récents qui ont permis les IA génératives?

Réponds à ces questions uniquement à l’aide du document 

### Chat GPT
1. Deux personnes ayant marqué la création de l’IA et leurs contributions


	•	John McCarthy : lors de l’école d’été de Dartmouth en 1956, il introduit le concept d’« intelligence artificielle » et la définit comme une science visant à simuler les fonctions cognitives humaines.
	•	Marvin Minsky : il précise que l’intelligence artificielle consiste à construire des programmes capables d’accomplir des tâches relevant habituellement de l’intelligence humaine.

⸻

2. Les développements technologiques récents ayant permis les IA génératives

Le document identifie plusieurs avancées majeures :
	•	Les progrès du deep learning (années 2010) :
	•	utilisation de réseaux de neurones artificiels à couches multiples ;
	•	disponibilité de corpus de données massifs grâce à Internet ;
	•	augmentation rapide de la puissance de calcul des ordinateurs.
	•	L’architecture Transformer (2017) :
	•	introduction du mécanisme d’attention, permettant un meilleur traitement du contexte ;
	•	amélioration significative des performances des modèles.
	•	L’application de cette architecture à l’IA générative :
	•	création de grands modèles de langage (LLM) et d’outils capables de générer du texte, des images, des sons ou des vidéos ;
	•	exploitation de milliards de données et mobilisation de centaines de milliards, voire de milliers de milliards de paramètres.

Ces avancées combinées — deep learning, données massives, puissance de calcul accrue et architecture Transformer — ont rendu possible l’essor des IA génératives depuis 2017.

## Lecture 2 à Chat GPT

### Prompt + partage du fichier

Analyse ce document et répond aux questions suivantes: 

Quelle est la compétence que le benchmark MMLU mesure dans
les LLMs ?

Quels étaient les performances des meilleurs modèles lorsque
le benchmark a été publié ?

Choisir deux questions du benchmark et comparez entre elles
les réponses de trois IA différentes.

### Chat GPT

1️⃣ Quelle compétence le benchmark MMLU mesure-t-il ?

Le benchmark MMLU (Massive Multitask Language Understanding) mesure :

La capacité des grands modèles de langage (LLMs) à acquérir, comprendre et appliquer des connaissances variées issues du pré-entraînement, dans de multiples domaines académiques et professionnels.

Plus précisément, il évalue :
	•	la compréhension large du langage
	•	les connaissances générales et spécialisées
	•	la capacité de raisonnement et de résolution de problèmes
	•	l’application de connaissances en zero-shot et few-shot
	•	la maîtrise de 57 disciplines (STEM, sciences sociales, humanités, médecine, droit, etc.)

Il ne mesure donc pas seulement le “bon sens” ou la compréhension linguistique, mais une compréhension académique et professionnelle étendue.

⸻

2️⃣ Quelles étaient les performances des meilleurs modèles lors de la publication ?

Au moment de la publication (ICLR 2021) :
	•	Le niveau aléatoire (4 choix) est : 25 %
	•	Les petits modèles GPT-3 (2.7B à 13B) ≈ 25 % (quasi aléatoire)
	•	Le plus grand modèle, GPT-3 175B (X-Large) atteint :

43,9 % d’accuracy en few-shot

En comparaison :
	•	UnifiedQA (11B paramètres) atteint 48,9 %
	•	Le niveau expert humain estimé est ≈ 89,8 %
	•	Les humains non spécialisés (Mechanical Turk) ≈ 34,5 %

Conclusion du papier :
Même les meilleurs modèles restent loin du niveau expert, avec des performances inégales selon les disciplines.

⸻

3️⃣ Comparaison de deux questions du benchmark entre trois IA

Je choisis :
	•	Une question de Conceptual Physics
	•	Une question de Professional Law

Je compare :
	•	GPT-3 (few-shot 175B)
	•	UnifiedQA
	•	Random baseline

⸻

📘 Question 1 – Conceptual Physics

Si on lance une balle vers le bas sans résistance de l’air, son accélération juste après avoir quitté la main est :

Réponse correcte : 9.8 m/s²

Performances générales observées :
	•	GPT-3 → difficulté sur les problèmes procéduraux/calculatoires
	•	UnifiedQA → meilleure performance moyenne en STEM
	•	Random → 25 %

📊 Résultats généraux (STEM) :
Modèle          Accuracy STEM 
Random.         25 %
GPT-3 175B.     36,7 %
UnifiedQA.      40,2 %

👉 Les deux modèles ont des difficultés sur les matières nécessitant des calculs ou l’application de règles physiques.

⸻

⚖️ Question 2 – Professional Law

Exemple : responsabilité pour un piège explosif installé sur une propriété privée.

Réponse correcte : dépend du raisonnement juridique (application des précédents).

📊 Résultats généraux (Humanities) :
Modèle        Accuracy Humanities
Random.       25 %
GPT-3 175B.   40,8 %
UnifiedQA.    45,6 %

Mais point crucial du papier :
	•	GPT-3 a des performances particulièrement faibles en droit et morale
	•	Forte déséquilibration des capacités
	•	Mauvaise calibration (confiance ≠ exactitude)

👉 Sur Professional Law en particulier, les performances restent proches du hasard comparées aux autres disciplines.

⸻

🔎 Comparaison synthétique
Aspect
Conceptual Physics 
Professional Law

Type de compétence
Raisonnement scientifique
Raisonnement normatif et juridique

Difficulté pour GPT-3
Très élevée (calcul)
Très élevée (valeurs humaines)

Meilleur modèle
UnifiedQA
UnifiedQA

Niveau expert humain
~90 %
~90 %

Niveau meilleur modèle
< 50 %
< 50 %

🎯 Conclusion générale

Le benchmark MMLU mesure :
	•	la compréhension massive multi-domaines
	•	la capacité à appliquer des connaissances académiques complexes
	•	les limites des LLMs en calcul, droit et morale

Au moment de la publication :
	•	Les meilleurs modèles atteignaient 43,9 % (GPT-3 175B)
	•	UnifiedQA faisait légèrement mieux avec 48,9 %
	•	Très loin du niveau expert (~90 %)

Le benchmark met en évidence :
	•	des capacités larges mais superficielles
	•	des performances déséquilibrées
	•	une forte difficulté sur les tâches procédurales et normatives



