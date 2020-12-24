# REGEX ou Expressao Regular
# Contem => *
# termina com => $
# comeca com => ^

Before do
	@nav = Navbar.new
	@side = Sidebar.new
	@login_page = LoginPage.new
	@tarefas_page = TarefasPage.new
	@perfil_page = PerfilPage.new
	@cadastro_page = CadastroPage.new
	@dao = DAO.new

	page.current_window.resize_to(800, 600)
end

Before("@login") do
	@usuario = {email: "jaimeElias@gmail.com", senha: "654321"}

	@login_page.login_path
	@login_page.logar(@usuario[:email], @usuario[:senha])
end

After("@logout") do
	@nav.sair
end