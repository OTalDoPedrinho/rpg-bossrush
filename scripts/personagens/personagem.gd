class_name Personagem
extends Node2D

#region Var
@export var nome: String

@export var arma_equip: Arma
@export var efeito: Efeito
@export var classe: Classe

@export var barra_hp: ProgressBar
@export var barra_mana: ProgressBar

@export var is_enemy: bool
@export var prot: bool
@export var active: bool

@export var lvl: int

@export var hp_atual: float = classe.hp_max
@export var mana_atual: float = classe.mana_max
#endregion

func _ready() -> void:
	hp_atual = classe.hp_max
	mana_atual = classe.mana_max

func _dano(alvo: Personagem, arma: Arma):
	var mult_tipo_a = 1
	var mult_tipo_c = 1
	if arma.tipagem and alvo.arma_equip.tipagem:
		# Verifica se o tipo da arma é vantagem contra o tipo do alvo
		if arma.tipagem in alvo.arma_equip.tipagem.desvantagens:
			mult_tipo_a = 2.0  # Vantagem
		# Verifica se o tipo da arma é desvantagem contra o tipo do alvo
		elif arma.tipagem in alvo.arma_equip.tipagem.vantagens:
			mult_tipo_a = 0.5  # Desvantagem
	if classe.tipagem and alvo.classe.tipagem:
		# Verifica se o tipo da arma é vantagem contra o tipo do alvo
		if classe.tipagem in alvo.classe.tipagem.desvantagens:
			mult_tipo_c = 2.0  # Vantagem
		# Verifica se o tipo da arma é desvantagem contra o tipo do alvo
		elif classe.tipagem in alvo.classe.tipagem.vantagens:
			mult_tipo_c = 0.5  # Desvantagem
	var mult_tipo = mult_tipo_a*mult_tipo_c
	
	var defesa_total = clamp(alvo.classe.atributos["DEFESA"], 0, 90)
	var defesa_final = 1.0 - defesa_total / 100.0
	
	var dano_final = (randi_range(1, arma_equip.dano))*(mult_tipo)*(defesa_final)
	
	return dano_final
