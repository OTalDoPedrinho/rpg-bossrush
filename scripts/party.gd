class_name Party
extends Node2D

@export var membros: Array[Personagem] = []

func _ready():
	for child in get_children():
		if child is Personagem:
			membros.append(child)

func get_membros_vivos() -> Array[Personagem]:
	var vivos = []
	for m in membros:
		if m.hp_atual > 0:
			vivos.append(m)
	return vivos

func todos_mortos() -> bool:
	return get_membros_vivos().is_empty()

func adicionar_membro(personagem: Personagem):
	add_child(personagem)
	membros.append(personagem)
