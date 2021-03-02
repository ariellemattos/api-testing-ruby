#Cenario 1
Dado('o endereço da API para acessar os usuarios cadastrados') do                                   
  #Endereço intanciado na classe Users                        
end                                                                                                 
                                                                                                    
Quando('realizar uma requisição para acessar todos os usuarios') do                                 
  $response = @users.getAllUsers                       
end                                                                                                 
                                                                                                    
Então('a API irá retornar todos os usuarios cadastrados respondendo o codigo {int}') do |int|       
  expect($response.code).to eq(int)                    
end                                                                                                 

#Cenario 2
Quando('realizar uma requisição passando o ID do usuario') do
  @id = 2
  $response = @users.getUser(@id)  
end

Então('a API irá retornar os dados do usuario respondendo o codigo {int}') do |int|
    expect($response.code).to eq(int)
    expect($response.message).to eq("OK")
    expect($response["id"]).to eq($response["id"]) 

end

#Cenario 3
Quando('realizar uma requisição para cadastrar um usuario') do
  $response = @users.postUser
end

Então('a API irá cadastrar o usuario respondendo o codigo {int}') do |int|
  expect($response.code).to eq(int)
  expect($response.message).to eq("Created")   
end
