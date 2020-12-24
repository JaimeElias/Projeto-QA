#language: pt
Funcionalidade: Cadastro de usuários

	Contexto: Formulário
		Dado que esteja no formulário de cadastro
	
		@cadastro @logout
		Cenário: Cadastro usuário
			E inserir os dados "Claitinho" e "@xd.com" e "123456"
			Quando realizar cadastro
			Então exibir a mensagem de boas vindas "Olá, Claitinho"

		@cadastro
		Esquema do Cenário: Campos obrigatórios
			E que inserir os dados "<nome>" e "<email>" e "<senha>"
			Quando realizar cadastro
			Então exibir a mensagem de erro "<saida>"
			
			Exemplos:
				| nome       | email                    | senha    | saida                |
				|            |jaimeeliasjunior@gmail.com|geladera2 | Nome é obrigatório.  |
				|Jaime Elias |                          |geladera2 | Email é obrigatório. |
				|Jaime Elias |jaimeeliasjunior@gmail.com|          | Informe uma senha.   |