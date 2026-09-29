class_name Item
extends Resource

@export var nome: String
@export var descricao: String

enum Tipos {POCAO, ARMA, LIVRO}

@export var tipo: Tipos

@export var usos: int
@export var preco: int
@export var qntd: int

@export var icone: Texture2D
