class_name PlantaAtaque
extends PlantaBase


# Estadisticas
@export var daño_por_disparo : float = 25
@export var tiempo_de_disparo : float = 1.0

@onready var timer = $Timer

func _ready() -> void:
	timer.wait_time = tiempo_de_disparo
	timer.timeout.connect(disparar)

func disparar():
	print("DISPARAR")
