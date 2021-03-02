#language: pt
@users
Funcionalidade: Acessar os usuarios cadastrados na API.
    Realizar requisições na API 

Cenario: Validar o status code 
    Dado o endereço da API para acessar os usuarios cadastrados 
    Quando realizar uma requisição para acessar todos os usuarios
    Então a API irá retornar todos os usuarios cadastrados respondendo o codigo 200

Cenario: Consultar um usuario
    Dado o endereço da API para acessar os usuarios cadastrados 
    Quando realizar uma requisição passando o ID do usuario
    Então a API irá retornar os dados do usuario respondendo o codigo 200

Cenario: Cadastrar um usuario
    Dado o endereço da API para acessar os usuarios cadastrados 
    Quando realizar uma requisição para cadastrar um usuario
    Então a API irá cadastrar o usuario respondendo o codigo 201


