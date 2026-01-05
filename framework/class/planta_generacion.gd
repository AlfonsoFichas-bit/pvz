class_name PlantaGeneracion
extends PlantaBase


# Estadisticas
@export var cantidad_de_soles := 25
@export var tiempo_de_generacion : float = 10.0

@onready var timer = $Timer

func _ready() -> void:
	timer.wait_time = tiempo_de_generacion
	timer.timeout.connect(generar_soles)
	
func generar_soles():
	print("GENERAR SOLES")