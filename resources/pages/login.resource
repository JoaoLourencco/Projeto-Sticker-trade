*** Settings ***
Documentation            Login Page

Library    Browser

*** Keywords ***
Go To Login Page
    New Page           https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]      ${email}        ${password}
    Fill Text        css=input[name=email]        ${email}
    Fill Text        css=input[name=password]     ${password}
    Click            css=button >> text=Entrar

Submit Empty Password
    [Arguments]    ${email}
    Fill Text        css=input[name=email]     ${email}
    Click            css=button >> text=Entrar

Submit Empty Email
    [Arguments]    ${password}
    Fill Text        css=input[name=password]     ${password}
    Click            css=button >> text=Entrar

Submit Empty Email and Password
    Click            css=button >> text=Entrar

Toast Message Should Be
    [Arguments]        ${expected_message}

    ${locator}
    ...            Set Variable
    ...            css=.Toastify__toast-body div >> text=${expected_message}
    
    Wait For Elements State      ${locator}     visible    2