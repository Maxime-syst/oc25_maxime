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

	

## Lecture 3

###Prompt
1. Faites une recherche pour en trouver 2 ou 3, les plus variés possibles. Vous pouvez essayer de trouver des benchmarks qui testent des sujets qui vous intéressent (science, programmation, mathématiques, écriture de fiction, etc.).
2. Créer un petit tableau avec des informations générales sur les benchmarks.
3. Quelles compétences des IA mesurent vos benchmarks ?
4. Trouver quelques questions et regardez les réponses des modèles locaux, ainsi que ceux des grands modèles. Quelles sont vos impressions ?
5. Cherchez les résultats des modèles sur vos benchmarks sur des sites de références. Comment ont évolué les scores des meilleurs modèles depuis la publication du benchmark.                                                                                             Réponds à ces questions

###Copilot 

1) Recherche : 3 benchmarks variés

MMLU (Massive Multitask Language Understanding) : 57 matières académiques et professionnelles (maths, droit, médecine, histoire, info…), format QCM. Article fondateur (ICLR 2021) et site HELM pour des runs standardisés. [arxiv.org], [crfm.stanford.edu]
GSM8K (Grade School Math 8K) : 8,5k problèmes de maths “niveau collège” mais exigeant un raisonnement multi‑étapes ; score sur la réponse numérique finale exacte. [arxiv.org], [huggingface.co]
HumanEval : 164 tâches de génération de fonctions Python à partir d’un docstring + tests unitaires ; mesure de pass@1 (taux de réussite des tests sans échantillonnage multiple). Présentations et tableaux de bord récents. [ibm.com], [pricepertoken.com]


2) Petit tableau récapitulatif

































BenchmarkDomaine / tâcheFormat & métriqueTaille (ordre de grandeur)Référence / LeaderboardMMLUConnaissances académiques & pro + raisonnementQCM (A–D), Accuracy (souvent 5‑shot)~16 k questions, 57 sujetsPaper ICLR 2021 & HELM (runs standardisés) [arxiv.org], [crfm.stanford.edu]GSM8KProblèmes de maths à étapesRéponse libre numérique, Exact match; souvent CoT/self‑consistency7 473 train / 1 319 testPaper (OpenAI 2021), dataset HF, fiches techniques [arxiv.org], [huggingface.co]HumanEvalGénération de code Python à partir d’un docstringExécution de tests unitaires, pass@1 (ou pass@k)164 itemsPrésentation IBM, leaderboards agrégés 2025‑26 [ibm.com], [pricepertoken.com]

3) Quelles compétences IA ces benchmarks mesurent‑ils ?

MMLU :

Rappel de connaissances larges (STEM, SHS, droit, médecine) + raisonnement court sous contrainte QCM.
Sensible aux consignes/prompting ; d’où les appels à des protocoles d’évaluation standardisés (HELM) pour éviter les comparaisons “pomme‑poire”. [arxiv.org], [crfm.stanford.edu]


GSM8K :

Compréhension de problème + chaînage logique arithmétique (2–8 étapes) + rigueur de format (numérique exact).
Met en évidence l’apport des techniques Chain‑of‑Thought et vérificateurs/reranking. [arxiv.org]


HumanEval :

Synthèse de code correct fonctionnellement, compréhension d’un docstring, maniement d’API/bibliothèques de base, et généralisation à des patterns algorithmiques simples.
Mesure “exécutable” : passe/échoue aux tests. [ibm.com]




4) Exemples de questions & impressions (locaux vs “frontier models”)
a) GSM8K — exemple type

« Natalia a vendu 48 pinces en avril, puis deux fois moins en mai. Combien au total ? » → 48/2=24, total = 72. Format de solution attendu : étapes + #### 72. (exemple issu de la carte du dataset) [huggingface.co]

Impressions

Modèles locaux 7–8B (ex. Llama 3.1 8B, Mistral 7B) : souvent corrects si on guide avec 2–3 exemples + CoT ; sensibles au format de sortie (risque d’erreur de forme). Des comparatifs publics placent Llama 3.1 8B > Mistral 7B sur MMLU/GSM8K, mais l’écart dépend du quantization/mode d’inférence. [docsbot.ai], [ionio.ai]
Frontier (Claude, OpenAI o‑/o3‑/o4‑series, DeepSeek‑R1, Gemini 2.5/3.x) : arrivent > 95 % sur GSM8K (pass@1) dans plusieurs tableaux agrégés récents, en partie grâce à CoT + self‑consistency ou “thinking” modes. [pricepertoken.com], [codesota.com]

b) MMLU — exemple type

(Abstrait : “Trouver le degré de l’extension Q(2,3,18)/Q\mathbb{Q}(\sqrt{2},\sqrt{3},\sqrt{18})/\mathbb{Q}Q(2​,3​,18​)/Q”) — QCM. (extraits des sous‑sets abstract_algebra) [huggingface.co]

Impressions

Locaux 7–8B : scores 60–70 % typiques en 5‑shot; sensibles au protocole (génération libre vs log‑prob sur A/B/C/D). Un repo illustre les écarts selon la méthode de scoring (argmax sur lettres vs génération). [docsbot.ai], [github.com]
Frontier (GPT‑4.x/5.x, Claude 3.5/4.x, Gemini 3.x, Llama 3.1 405B, etc.) : ~86–91 % selon agrégateurs/paramétrage, avec débats sur comparabilité ; HELM recommande des runs uniformisés pour éviter les gonflements via CoT non contrôlé. [llm-stats.com], [crfm.stanford.edu]

c) HumanEval — exemple type

Générer la fonction factorial(n) conforme au docstring et aux tests. (HumanEval contient 164 tâches de ce type) [ibm.com]

Impressions

Locaux 7–8B : souvent 70–86 % pass@1 selon famille et réglages (coder‑tuned aident beaucoup) ; la couverture des tests de HumanEval est limitée, d’où de nouveaux dérivés (mHumanEval, LiveCodeBench) pour durcir l’évaluation. [gemma-3n.net], [github.com]
Frontier : ~90–98 % pass@1 pour les meilleurs (Claude 4.5/4.6 thinking, Grok 4, DeepSeek R1, GPT‑5.x/4o…), sur tableaux agrégés 2025‑26. [pricepertoken.com]


Synthèse “ressenti” :

Les modèles locaux (7–8B) atteignent aujourd’hui des performances “utilisables” sur GSM8K/HumanEval avec un prompting et une quantization soignés, mais restent en‑deçà des meilleurs fermés sur les cas piégeux ou la robustesse de format. [ionio.ai]
Les frontier dominent en raisonnement cohérent (GSM8K), culture générale (MMLU) et code (HumanEval), surtout quand on active des modes “thinking”/CoT contrôlés. [pricepertoken.com], [llm-stats.com]



5) Comment les scores ont évolué depuis la publication des benchmarks ?


MMLU (2020 → 2026)

À la sortie : GPT‑3 (175B) ≈ 43,9 %, proche mais au‑dessus du hasard (25 %). Les humains experts ≈ ~90 %. [arxiv.org]
2024–2026 : montée rapide vers ~88–91 % pour les meilleurs (Claude 3.5/4.x, o‑/GPT‑4.x/5.x, Gemini 3.x, Llama 3.1 405B), avec controverses sur les protocoles (CoT, self‑consistency, “uncertainty routing”) ; HELM a lancé une évaluation standardisée pour comparaisons “propres”. [crfm.stanford.edu], [llm-stats.com]



GSM8K (2021 → 2026)

Départ : grands modèles < 60 % sans CoT ; verifiers + self‑consistency étaient clés pour dépasser 70–80 %. [arxiv.org]
2025–2026 : meilleurs “frontier” (Claude‑Opus/Sonnet, DeepSeek‑R1, OpenAI o‑/o4‑mini‑high, Gemini 2.5/3) affichent ~95–97 % pass@1 sur des leaderboards agrégés. (Les chiffres varient selon les sources et la sélection exacte.) [pricepertoken.com], [codesota.com]



HumanEval (2021 → 2026)

Départ : Codex/GPT‑3 à ~20–30 % pass@1 (selon variantes historiques).
2025–2026 : leaders ~95–98 % pass@1, avec de nouveaux jeux multilingues/plus denses en tests (p.ex. mHumanEval) pour éviter les plafonds artificiels. [ibm.com], [arxiv.org]




Conclusion sur la tendance : sur ces trois benchmarks, les meilleurs scores se sont rapprochés du plafond humain (voire marginalement au‑delà en QCM), ce qui a déclenché un ré-alignement méthodologique (HELM pour MMLU, variantes plus dures comme MMLU‑Pro, LiveCodeBench/mHumanEval pour le code, etc.) afin de conserver du pouvoir discriminant. [crfm.stanford.edu], [pricepertoken.com]


Pour aller plus loin (liens utiles)

MMLU : paper + GitHub + HELM standardisé. [arxiv.org], [github.com], [crfm.stanford.edu]
GSM8K : paper + dataset (HF) + fiches/leaderboards. [arxiv.org], [huggingface.co]
HumanEval : explication IBM + tableaux contemporains. [ibm.com], [pricepertoken.com]


