class_name Classe
extends Resource

@export var nome: String

@export var hp_max: float
@export var hp: float
@export var mana_max: float
@export var mana: float
@export var xp: float
@export var next_lvl_xp: float

@export var lvl: int

@export var atributos = {
	"FORÇA": 10, #dano fisico
	"AGILIDADE": 10, #velocidade em q ataca
	"VONTADE": 10, #dano magico
	"MENTE": 10, #defesa magica, em porcentagem
	"DEFESA": 10, #defesa fisica em porcentagem
}

@export var inventario: Array[Item] = []
@export var magias: Array[Magia] = []

@export var arma_ini: Arma
@export var arma_equip: Arma

@export var efeito: Efeito
