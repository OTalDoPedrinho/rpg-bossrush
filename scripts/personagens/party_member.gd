class_name PartyMember
extends Personagem

@export var prot: bool
@export_range(1, 3) var lvl: int

func atacar(alvo: Personagem):
	var dano = _dano(alvo, arma_equip)
	alvo.tomar_dano(dano)

func usar_magia(magia: Magia, alvo: Personagem):
	if mana_atual >= magia.custo_mana:
		mana_atual -= magia.custo_mana
		# ... lógica de magia ...

func usar_item(item: Item, alvo: Personagem):
	pass
