

# Projeto Trade Sticker

O projeto Trade Sticker consiste em testes web de ponta ponta
usando o framework Robot Framework e a sua integração com o Playwright,
com seus testes realizados no site https://trade-sticker-dev.vercel.app, site
projetado para troca de figurinhas do Album da Copa.
Nesse projeto, abordamos e implantamos o padrão Page Objects, uma 
prática comum de estruturação e muito usada nos principais projetos de automação,
independente do seu framework.

## O projeto consiste em 3 casos de Testes e seus respectivos principáis cenários:

**-Slogan:** Acesso a página Trade Sticker
Validar se o usuário acessa a página Trade Sticker com sucesso

**-Login**: Execução dos Cenários da Page login
Tais como: Login com sucesso, login com insucesso, Não deve logar com a senha correta,
Validar a notificação toaster caso os dados não forem preenchidos com sucesso.

**-Trade:** Negociando uma figurinha do Neymar Legend
Será executado um teste de ponta a ponta onde o usuário pesquisará por Neymar Legend
no campo de pesquisa e finalizará validando se uma nova aba foi aberta direcionando o usuário
ao whatsapp do atual dono da figurinha.


## O que precisaremos para realizar os Testes?

**Python**<br/>
1-Download: https://www.python.org/downloads/<br/>
2-Para Validarmos a instalação do Python, devemos abrir o CDM
e digitarmos python --version, o resultado esperado é que o CMD nos
mostre a versão do python, confirmando assim sua instalação.<br/>
![enter image description here](https://lh3.googleusercontent.com/g7Y2Jx2OFEXyAZemMmPF11FtpTG5XVoPYCOGR7w2THVfPssXwFftiM54Q3gyRisH9JZikgDUdQJjwcNIU6wJIbqHguSXJGBApIAuXUXvRtCRwA5sP4w52FLDbOj4vc1Vn1C-OhC_IvT9uONkXA2vgFYeRSPNglm2QA0VV_tMel5txYsJqDI--h8CMCLKqnzsXZOfYFBaZ__yQ_GIJv2MemP1xKId11AAsEfdNZAsGjReywaNAAqy5Mh69FEtWMN1ix2kz_-VQ77DyVcEI3qk7DXz2I1bhzyFgYXS6SBtVeCCscp2Cj1MlWcWca_9gBk5xcI0pShTY9vkc57QB8qRvhB3q0LelzuiRjstqCsFZrRzCX0Ajxi9oMNklWagzxPffDjIw4ITiRTg1AqbIroz8Bk-miQtS7pLFrKn4k_Hitl465WiFgeJ8zgUJAOQN0ogDCFOyX9ZMUiYV9n5JuWY5krc389-pRFs7xnB7LANhnpBeRQmFs-dAZVsc3aENe8_NHyvgYpWqwHw-f_LN1isRG9kSROWJ4MEFJaOpf9yTjFrcUWKT4ddOZXgC0aooaMkxrjs4Qxe3_lsCZf-d9oc6WsK2tuLnUMEWD_w8G0o7_sXjJx__B146-i4wSPzEBHs-r4usap9e5B5R-GSHhYJ8cmRqfkEomvDvUiSBoUewyGiYiGSvt_7EabJQyo0PstiY-gLzHzSlbcZmBaG35pJgLToiAZlKTBwbLGi4T8uFvzsk1by6wCyUG98SSS-UIv5qHdWVyGqrAQyPtV2aF_BOjqA0gC2d7qfhVwvpVfGZw77QiQZEogdZaCLuLpKdcIHsUrSIZgOlybFyn06h0EgvmgnqI84rqbKyXWLExcvJmCmmGvUF0Ip8OSLj_Mvyz5yA-ZhtLgVgeGQMr5Sk-sHrnM0N7m93wT4mODtWK1dVm3X=w246-h37-no?authuser=0)

**Visual Studio Code**<br/>
Download: https://code.visualstudio.com/download

Git for Windows (Opcional)<br/>
Download: https://gitforwindows.org/

**Robot Framework**<br/>
1-No CMD, digite o comando: pip install robot framework.<br/>
2-Para Validarmos a instalação do Robot, devemos abrir o CDM
e digitarmos robot --version, o resultado esperado é que o CMD nos
mostre a versão do Robot, confirmando assim sua instalação.<br/> 
![enter image description here](https://lh3.googleusercontent.com/ZrpWmTcqUJRWrLrkdZ1xgbeDkgeAClRFiaX3LHUuxz8gXYv_sGJzQ2G_EFCJen4L4D4mNUiWM0YcyXz4BDTQ1R82lkgn3ixbu3YPHsr-4KIfZVQZoan2XYyRyKjVQ0ph_JNQbfuCPZQJ41Gkn7v---JJ9wyrvyY1ngi7Pb6lvc1Hg2cewCDf_1SdbyPD_aZ0hi9qbGQghugLJS65nItd1Tqcuco2SfyRyxXLOUqdTPkBcdD9lugMdiSZdOjnOjKueRP3FxfbGTj_kZUxkHdDQy1IYqvwsrGOAZ7wEd5tATO1w7k8xCq1iaNbQz-DODdLkxIP2pGsBNQFxuW1qNtxn2IrW4FmcMJxmarSYVDeVtB4sFj1uGHuGGnJ3MRbd7KdiH9YwcT9pXhc8f-mCDF4KMzRbQ19yFnbWAbwtS4ODMQwd_71c-FGswRf45QhmnStmsG1_gBkJCbq7L7l3U-PZxaxCY0SXkYo9jYbl8QEXhmNVNKj18N4nncpXbAajed4sXKwRSgSBRPddG31CzpUPp60HtksDH0UGUPn4hS4pE0rRhlHivQeV5OzmiKIAncjfklrO_lZf9DWhou9Emp6J3YbceqFIm_tyRk0Bm52VxUZOnYE30CpUmhQ5_YEWuR8p5guaAM8RXqzpJavW4IyWkTxrHHM-BGvHvofQ1-SX0FSIfosW1bUBPzcjcGRmwJSUMBfvI6t1DNRPMI4jtwzmQxkG2P9pMzAzrDwu1NY51Q3Fs6wkA20xrT8UrK5vvl6Dil1aCPRYR5Fb7vrKF_XLoHRHQSRxhNFdIbgKDo9dlwqlm5baJGDZUQU7YYI_lXnciD0OaTvQt5kxhRdxju2UcNzKq7zRcLtdu6lTValc4ZrErY4RFqAbl_8doFuPEAoMq1znxmgSFYUkaCfu6z65gnWD4k8-o7gKaO1eAFc-T2A=w388-h44-no?authuser=0)

**NodeJS**
1-Download: https://nodejs.org/en/download/<br/>
2-Para Validarmos a instalação do NodeJS, devemos abrir o CDM
e digitarmos node --version, o resultado esperado é que o CMD nos
mostre a versão do NodeJS, confirmando assim sua instalação.<br/>
![enter image description here](https://lh3.googleusercontent.com/Ll3WrBJHX8Wq6RYuSg4cNzvPklenxZBRT0eUZ7P4h6Mnx22pZnHPO4YFEKdDoBMpx342af1ZUnxNb5flQvNbThznWPW-7yQPl8N_Ap3ouvCFwYIZpirVv2fKjt2U6IvPMfeuXlTqekdxAKdKEa2Gw0YBNaLcYhq7tlQsz48A6GZyj20PzAMDo7_Qq6MJVphJXjzbkWHFAV2KvPE-VtsVKEyQlvutbCTXKQ65qAlF0GnVx7oI0xQQnyA2el-sMT8aTD-1p8eqJ59J73gLPg3qgA8otVM-VCoA5qLC-1e477k47nZyEes-aQdeFITVTke3NWLpJlAIgocKaP6yHSdkuzsd4ns4JNW4Or4YX7TxtBT8vddKVwOWpeHoO7ZcJXlrgjK_ofnnLVqXvgybTU_hFwtZC-JKmbZAkCpaB2MSO4peoqUslpzN9KdGhMjEu2M-A2lRD3Dl_aXIW28lnifhyotMhHmmFgNDm0e9IBjxW384GZX4J52ZS7Q0lA0kR2ZQAxtJtDGWfF6f7zK40kYOSoFS6_TqAtj3ddEtYImpGwM40SxnHRoS0NuM_inOs1ZHfeyWLvOXX11qqhkrp56-1CjX4ah-UPQJWrHob_iV3E60aVDvOVeheCKLW9V20_05xR8P26JdGykUJTHdzZB921lCdgD-Y_r04TSPbWLR3Xqyq9E-YKK3u6aJYJih9jGWvAp0ot66DWeQS8Aki2FfZyivOPnI9t0fIsEX-_nZZULjYjHmZj4p0HztA-pPN6xOGESz6t-QxRW9UEqj-Lhw4ZPK0YAmy4CiwO-DspCPti19p7BBDwt3lQVqoQPjXLNYgcDgoQXo9kKyxjXu9Kwwlf2-b8I4eK2cWrREZ6tpFQpBFIgA8RNjB20wu8gcBFtgk2ZHSmkO3uWzMPfDmysB-tkyTxe8_wVFEDkf74kfY68q=w230-h39-no?authuser=0)

**Instalar a Library Browser no Robot Framework**<br/>
1-No CDM digite o comando: pip install robotframework-browser<br/>
2-No CDM digite o comando: rfbrowser init

***Feito todas as instalações, estamos prontos para executar os testes.***


## Comandos para realizar os Testes

 - ****Executar toda a suíte de testes no mesmo comando:****

Com o projeto Aberto no Microsoft Visual Studio,  Vá a Terminal > Novo terminal
***Digite o comando: robot -d .\logs\ .\tests\***<br/>
Desta forma toda a suíte de testes do projeto será executada.

 - ****Executar os testes de uma página especifica****

Com o projeto Aberto no Microsoft Visual Studio, Vá a Terminal > Novo terminal
**Digite o comando: robot -d .\logs\ .\tests\trade.robot**<br/>
![enter image description here](https://lh3.googleusercontent.com/_xKdd4GY--2E3CmabQnD0NS2qtvz4opqoBjafZEbgpFIZq2oBMc4u-f4U-jOL3E5c5m66eNuhiIkSuq4-3ciozhAfa3K-yLnLANY_QAOKODsif3G4NoHhsKaK-12sDk42Mxi7trL9IV2_0v9B7HNjfI4dxXG6LEo2sz4WFA1nh3UsZ43l0MTB266ifMBz1zACTYVHckQEDD3NGlyp7krgB5ktdNKcE4d3o9792k28p4bKVTS0vDgxpl5pdHE-Us_ETY8TaWku0L05cQ0v5WkXj3mAFu1yNtQG9mo5ZbEG4VCB3spimlAFzBF1uKjxZSiGJDMJOmY38xpXmAv4MZCMsnO0-PzvyyROJPNzJ2Jrbw6XkFFQfccKW2v0S3YXq9jlCqPv8L4BntZfqQGejPKpv55cHXxfjZ5dgOvBC3r43gGHseAiGD1iyvRnunT1e6d_bdkqNAE6GAh0nGMHetyzjBOqnS3iXC9Bu-1rCe3Qjs4fCEfbU4s0srPao2UTWQH5vi5SmAFOBsXxt6dPBFvf85JyySg-bFeNwuluaKKqERtLtIcL_3MShx2HR1aquOBqaKYmPhFPa8xFN66Rify6ksPDdd2d_ZfaXXTZg-jTWX4_1ByWUAiL4K7bshF7oXskQW7g8Eavlw5lqsuJK2K5_0ti66dRp-KzeSuLyOjWEXAnqJ80msw5WXQHWr-i9NDWLV2SVX6Q20K7vPtPz1eWSoYfuF7pWiqrPWHNVya8TlwVAHx36uKF0lfdA-3dBzrszhsHWL3nmfXVZudXnFH1EkTHVnvyEEAlcUKCTNeJ16zkeDJ5-YHb209Jwd6RM_70NmONxjUH8uJijxIrOcueNcD9O3mbKMmrIwLHmjcV0kJM2si0mvgy1UFTFmCPob8sp5kTa1WQ-kOoBnRxt3G4H-Fe3wn5O4w4F-frcJ-JNWN=w569-h56-no?authuser=0)
<br/>Desta forma apenas os testes da página trade serão executados.

<br/>
<br/>


![enter image description here](https://lh3.googleusercontent.com/mp1HcvcOhpd5jxilUygA-ylljTlLC1AvJNbj0LP-6JlwnPXXQdw53GIWMV-4lF-8MJfRsAwavNi-XdJ3oAXPz-0mrLJp8qlN5HbdmTaMzoZtyBmjXl3q5YR5LCX5mmxEMjpaypQxLOMmUyQhVqXGb1Ja-YU4bpXYoRZpWkD5soktRMSP-qzggj4UMcGA76UvMwlxoV1VjPIJuYOZ_5_TQpcTv3wpIWPZbi1vFiT84HpbWxs3n704Hl_GpieLRdxL8QSK7gvxkTXy8Lttl3oZJC_Xnu8iiPI28cyrBLwgJsjrHzm86yUfVFWZL001TwTdgOFC9VZwsAIRSbX5-j0e2gpsPsM-_xu1S5Pk_mhkYzTWTn5L0cuGzDD9tS893wslcsLDkdFSuezLvltUqx4lCnssjLe1SEtV36cem82W5UrzGoA6YakdLb3wtiC_gVX3b_ObBlsMC39VIUXc15Ty9RIFb9g6UeE3n5x1rRMWJIbI_ynno520xvwqrb4Tjcs5q-b3aUWDRs-qHo8rIjB5fwTDvmengkDrmUvZF3pByEYg8pWr1w5YXNrsuaj_i-dxHASO_zqn5ht5V-agsbawiyQQKxMny3NIDT2VtZI5gDcatwx-_62kyBp24uFxVTDFebzN-QkQpcx2yhvMvTVYFt5dfxmO-eIb0_0zbBXOLpk0Z0-uKgu4ivQ47hhw9eK1A7-wtAcN7CzgKC_xMXLFG1acL20mdfUwghGVWhErir3-jon2WON26XU5FnL3qsaMwHWEVchBIFtZxRWSAScBmWIHrLOoLLmz49vbCcBlNFwimbJ8oulEEy7rhlacMzOlq4Ii0r65zVaw4QMtQL0czCB24-46OwKg06yBxBPnK080Am5gtKgDn_PS8ShyuElfmUB_4yAc2kpPwjfFBrHZv_RGFYy5PZKlFr7F3fewK3fx=w280-h111-no?authuser=0)
 ***<br/>Note que trade.robot é  uma página especifica, que pode ser alterada para um dos três casos de teste do projeto a sua escolha.***
