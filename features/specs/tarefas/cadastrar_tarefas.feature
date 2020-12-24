#language: pt
Funcionalidade: Cadastro de tarefas

	@smoke @login @logout
	Cenário: Nova Tarefa
		Dado que o nome da tarefa é "Fazer Compras de natal"
		E a data de finalização será "24/12/2020"
		E criar as tags para esta tarefa com:
			| tag     	 |
			| Mercado  	 |
			| presentes  |
			| biscoito 	 |
		Quando fizer o cadastro desta tarefa
		Então esta tarefa deverá exibir o status "Em andamento"
		E deve haver somente 1 tarefa com o nome cadastrado

	@tentativa @login @logout
	Esquema do Cenário: Tentar cadastrar
		Dado que o nome da tarefa é "<nome>"
		E a data de finalização será "<data>"
		Quando fizer o cadastro desta tarefa
		Então deve exibir a seguinte mensagem "<mensagem>"

		Exemplos:
			| nome | data | mensagem| 
			| Ler  | 18/12/2022 | 10 caracteres é o mínimo permitido. | 
			|      | 18/12/2022 | Nome é obrigatório. |

	@duplo @login @logout
	Cenário: Tarefa não pode ser duplicada
		Dado que o nome da tarefa é "Testando tarefa duplicada"
		E a data de finalização será "27/03/2021"
		Mas a tarefa já foi cadastrada
		Quando fizer o cadastro desta tarefa
		Então deve exibir a seguinte mensagem "Tarefa duplicada."
		E deve haver somente 1 tarefa com o nome cadastrado