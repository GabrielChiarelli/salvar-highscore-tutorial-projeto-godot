extends Area2D


func _on_body_entered(body):
	GameManager.ganhar_ponto()
	queue_free()
