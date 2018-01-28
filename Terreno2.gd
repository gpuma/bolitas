extends Node

func _ready():
	set_process(true)

func _process(delta):
	cambiar_puntaje(global.score1,global.score2)
	actu_vida(global.VIDA1, global.VIDA2)

func actu_vida(score1, score2):
	self.limpiar_vida()
	var x=1;
	while x<score1 + 1:
		get_node("hot"+str(x)).set_texture(global.hot)
		x=x+1
	x=1;
	while x<score2 + 1:
		get_node("ice"+str(x)).set_texture(global.cold)
		x=x+1

func limpiar_vida():
	var x=1;
	while x<6:
		get_node("hot"+str(x)).set_texture(global.vacio)
		get_node("ice"+str(x)).set_texture(global.vacio)
		x=x+1
		
func cambiar_puntaje(score1, score2):
	var formato_lbl_puntaje = "%s | %s"
	get_node("Puntaje").set_text(formato_lbl_puntaje % [score1 , score2])