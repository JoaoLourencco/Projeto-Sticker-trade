*** Settings ***
Documentation            Login tests

Resource       ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submit Credentials            papito@gmail.com    vaibrasil
    User Logged In

Nao deve logar com senha incorreta
    Go To Login Page
    Submit Credentials            papito@gmail.com    abc123
    Toast Message Should Be       Credenciais inválidas, tente novamente!

Deve exibir notificacao toaster se a senha nao for preenchida
    [Tags]    empty_pass          
    Go To login Page
    Submit Empty Password          papito@gmail.com
    Toast Message Should Be        Por favor, informe a sua senha secreta!
    Sleep    1
    Take Screenshot

Deve exibir notificação toaster se o email não for preenchido
    [Tags]    empty_email
    Go To login Page
    Submit Empty Email              senha123  
    Toast Message Should Be         Por favor, informe o seu email!
    Sleep    1
    Take Screenshot



Deve exibir notificação toaster se email e senha não forem preenchidos
    [Tags]     empty_credent
    Go To login Page
    Submit Empty Email and Password
    Toast Message Should Be         Por favor, informe suas credenciais!
    Sleep    1
    Take Screenshot




