extends Node

var serveurs = []
var serveur_actif = null

func _ready():
	# Récupère tous les serveurs
	serveurs = get_tree().get_nodes_in_group("serveurs")
	
	# Choisit un serveur au hasard et active son voyant
	_activer_serveur_aleatoire()

func _activer_serveur_aleatoire():
	if serveurs.is_empty():
		print("Aucun serveur trouvé !")
		return
	
	# Choisit un serveur au hasard
	serveur_actif = serveurs[randi() % serveurs.size()]
	serveur_actif.activer_voyant()
	
	# Connecte le signal de réparation
	serveur_actif.serveur_repare.connect(_on_serveur_repare)

func _on_serveur_repare():
	print("Serveur réparé, activation d'un nouveau serveur...")
	
	# Déconnecte l'ancien signal
	serveur_actif.serveur_repare.disconnect(_on_serveur_repare)
	
	# Active un nouveau serveur au hasard (différent du précédent)
	var anciens_serveurs = serveurs.duplicate()
	anciens_serveurs.erase(serveur_actif)
	
	if anciens_serveurs.is_empty():
		print("Tous les serveurs sont réparés !")
		_fin_du_niveau()
		return
	
	serveur_actif = anciens_serveurs[randi() % anciens_serveurs.size()]
	serveur_actif.activer_voyant()
	serveur_actif.serveur_repare.connect(_on_serveur_repare)

func _fin_du_niveau():
	print("Niveau terminé !")
	# Charger la scène suivante, afficher un écran de victoire, etc.
