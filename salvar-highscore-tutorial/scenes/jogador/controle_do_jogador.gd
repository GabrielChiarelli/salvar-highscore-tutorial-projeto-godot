extends Node2D


# Referências Gerais
@onready var o_jogador: CharacterBody2D = $"../.."

# Movimento do Jogador
const VELOCIDADE_DE_MOVIMENTO: float = 350.0
var input_de_movimento: Vector2 = Vector2.ZERO
var direcao_do_movimento: Vector2 = Vector2.ZERO


func _process(_delta):
	receber_inputs()


func _physics_process(_delta):
	movimentar_jogador()
	

func receber_inputs() -> void:
	input_de_movimento.x = Input.get_axis("mv_esquerda", "mv_direita")
	input_de_movimento.y = Input.get_axis("mv_cima", "mv_baixo")


func movimentar_jogador() -> void:
	direcao_do_movimento = input_de_movimento.normalized() * VELOCIDADE_DE_MOVIMENTO
	o_jogador.velocity = direcao_do_movimento
	o_jogador.move_and_slide()
