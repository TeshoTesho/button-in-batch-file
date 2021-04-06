@Echo off
@Mode 48,18
@Title %~n0
Batbox /h 0


	


	:menu
	cls
	Call Button  12 3 " Exemplo de botao 1"  12 7 "Exemplo de botao 2 " 19 11 "Sair" # Press
	Getinput /m %Press% /h 70
	:: Check for the pressed button 
	if %errorlevel%==1 (goto open_old)
	if %errorlevel%==2 (goto excluir)
	if %errorlevel%==3 (goto menu)
	if %errorlevel%==4 (exit)
	goto menu