extends Node

#periodor :  0 dia, 1 noite
#anel : 0 ouro , 1 esmeralda , 2 violeta, 3 rubí
#hora: 0-3
#lua: 0 lua nova , 1 crecente, 2 lua cheia, 3 minguante
#ummidade: 0-100
#runa: 0-5

var setup = {
"umidade":0,"periodo": 0, "anel" : 0, "hora":0 , "lua": 0, "runa": 0, "runaEscolhida": null, "palavra": "","temperatura" : 0,"item_sequencia": [],
"animais" : [],"frasco" :0}

func _init():
	randomize()
	setup.umidade = randi()%101
	setup.periodo = randi()%2
	setup.anel = randi()%4
	setup.lua = randi()%4
	setup.hora = randi()%4
	setup.runa = randi()%5
	setup.palavra = get_palavra(setup.umidade,setup.periodo)
	setup.runa  = get_runa(setup.palavra)
	setup.temperatura = get_temperatura(setup.runa)
	setup.item_sequencia = get_inten_sequencia(setup.runa,setup.anel)
	setup.animais = get_animais(setup.anel)
	pass

func get_runa(palavra):
	if get_palavra(setup.umidade,setup.periodo) == palavra :
		return setup.runa
	return false
	pass

func get_temperatura(runa):
	if typeof(runa) != TYPE_BOOL:
		if runa == 0:
			return 100
		if runa == 1:
			return 130
		if runa == 2:
			return 160
		if runa == 3:
			return 190
		if runa == 4:
			return 220
	return false
	pass
func get_palavra(umidade,periodo):
	if(periodo == 0):
		if umidade <=19:
			return "DELGAL"
		if umidade <=39:
			return "OMCIEN"
		if umidade <=59:
			return "SAHBAI"
		if umidade <=89:
			return "IROLS"
		if umidade <=100:
			return "WAKIUS"
	else:
		if umidade <=19:
			return "DOLILI"
		if umidade <=39:
			return "CELEBXE"
		if umidade <=59:
			return "TUNO"
		if umidade <=89:
			return "WEDELIA"
		if umidade <=100:
			return "LEASNO"

func get_inten_sequencia(runa,anel):
	if runa <4:
		if runa == 0 and anel == 0 :
			return [0,1,2,3]
		if runa == 0 and anel == 1 :
			return [0,1,3,2]
		if runa == 0 and anel == 2 :
			return [0,2,1,3]
		if runa == 0 and anel == 3 :
			return [0,2,3,1]
		if runa == 1 and anel == 0 :
			return [0,3,1,2]
		if runa == 1 and anel == 1 :
			return [0,3,2,1]
		if runa == 1 and anel == 2 :
			return [1,0,2,3]
		if runa == 1 and anel == 3 :
			return [1,0,3,2]
		if runa == 2 and anel == 0 :
			return [1,2,0,3]
		if runa == 2 and anel == 1 :
			return [1,2,3,0]
		if runa == 2 and anel == 2 :
			return [1,3,2,0]
		if runa == 2 and anel == 3 :
			return [1,3,0,2]
		if runa == 3 and anel == 0 :
			return [2,0,1,3]
		if runa == 4 and anel == 1 :
			return [2,0,3,1]
		if runa == 5 and anel == 2 :
			return [2,1,0,3]
		if runa == 3 and anel == 3 :
			return [2,1,3,0]
	pass
	
func get_animais(anel):
	match anel:
		0:
			return [0,1]
		1:
			return [2,3]
		2:
			return [0,3]
		3:
			return [1,2]
	pass
func get_frasco(runa,dia):
	pass
func get_quantidade(item):
	if setup.periodo == 0:
		return item.tamanho - (item.tamanho/(setup.hora+1))
	else:
		return item.tamanho - (item.tamanho/(setup.lua+1))
	
	pass


