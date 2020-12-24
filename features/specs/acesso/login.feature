# language: pt
Funcionalidade: Autenticação

	Contexto: Home
		Dado que acesse o sistema
	
        @entrar @logout
        Cenário: Login
            Quando fazer login com "jaimeeliasjunior@gmail.com" e "Geladera2"
            Então deverá exibir a mensagem de boas vindas "Olá, Jaime Elias"

        @entrar
        Esquema do Cenário: Login exception
            Quando fazer login com "<email>" e "<senha>"
            Então deverá exibir a mensagem de alerta "<saida>"

        Exemplos:
        |email|senha|saida|
        |jaimeeliasjunior@gmail.com|Geladera20|Senha inválida.|
        |jaimeeliasjunior@gmail.org|Geladera2|Usuário não cadastrado.|
        |                          |Geladera2|Email incorreto ou ausente.|
        |jaimeeliasjunior@gmail.com|         |Senha ausente.|
