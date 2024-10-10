extends Node


const CAMINHO_DA_PONTUACAO_MAXIMA: String = "user://pontuacao-maxima.txt"

var pontuacao: int = 0
var pontuacao_maxima: int = 0


func _ready():
	ler_pontuacao_maxima_no_arquivo()
	
	
func ganhar_ponto() -> void:
	pontuacao += 1
	
	if pontuacao > pontuacao_maxima:
		pontuacao_maxima = pontuacao
		salvar_pontuacao_maxima_no_arquivo()

		
func ler_pontuacao_maxima_no_arquivo() -> void:
	var arquivo: FileAccess = FileAccess.open(CAMINHO_DA_PONTUACAO_MAXIMA, FileAccess.READ)
	
	if arquivo:
		if arquivo.get_length() > 0:
			pontuacao_maxima = arquivo.get_as_text().to_int()
			print(pontuacao_maxima)
		else:
			print("Arquivo vazio.")
		
		arquivo.close()
		
	else:
		print("Não foi possível carregar o arquivo.")
	

func salvar_pontuacao_maxima_no_arquivo() -> void:
	var arquivo: FileAccess = FileAccess.open(CAMINHO_DA_PONTUACAO_MAXIMA, FileAccess.WRITE)
	
	if arquivo:
		arquivo.store_string(str(pontuacao_maxima))
		arquivo.close()
	else:
		print("Não foi possível carregar o arquivo.")
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
