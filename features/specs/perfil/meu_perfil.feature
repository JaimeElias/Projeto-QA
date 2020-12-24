#language: pt
Funcionalidade: Acessar perfil

	@perfil @logout
	Esquema do Cenário: Atualizar perfil
		Dado que esteja autenticado com "<email>" e "<senha>"
		Quando acessar o perfil
		E completar cadastro com "<empresa>" e "<cargo>"
		Então deverá exibir a mensagem de atualização cadastral:
        """
        Perfil atualizado com sucesso.
        """

            Exemplos:
                |email                    | senha  | empresa |cargo     |
                |wade@testes.com.br       | 123456 |Yahoo    |Developer |
                |jaimeElias@gmail.com     | 654321 |Google   |QA        |
                |gabrielly@hotmail.com    | 123457 |Microsoft|CEO       |
                |joaozinho@gameplay.com.br| 012345 |Linkedin |CTO       |
                |pedro@confuso.com.br     | 135790 |Facebook |Estagiario|