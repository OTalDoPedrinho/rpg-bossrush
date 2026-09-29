class_name Arma
extends Item

var crit_mult = 1.5

@export var dano: float			#1~5
@export var defesa: float		#1~5

@export var alcance: int		#0=curto, 1=medio, 2=longo
@export var chance_crit: int	#0~100
@export var chance_acerto: int#0~100

@export var tipagem: Tipo
@export var efeito: Efeito
