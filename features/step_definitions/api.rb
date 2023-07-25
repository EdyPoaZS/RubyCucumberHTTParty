
Dado('que seja executado a requisicao GET') do
  #requisitando a chamada 'Get' do modulo 'Service' criado no arquivo 'env.rb' 
   @get_api = Service.get '/api-web/comum/enumerations/VRPAT'
  end
  
  Quando('retornar a resposta com sucesso') do
  #validar se o retorno da "response" da requisicao esta com sucesso: "code = 200"
  expect(@get_api.code).to eq 200
  end
  
  Entao('deve conter a chave “typeOfEstablishment”') do
   #Validar a existência da chave “typeOfEstablishment” no body do retorno do serviço
   expect(@get_api.body).to match(/typeOfEstablishment/)
  end
  
  Entao('deve exibir a informações de um dos estabelecimento cadastrados na API') do
  #Criação de uma struct para retornar aleatóriamente um estabelecimento cadastrado no serviço
  estrutDados = JSON.parse(@get_api.body, object_class: OpenStruct)
  @estabelecimento = estrutDados.typeOfEstablishment.sample.to_s.to_json
  
  #Impressão na tela com o estabelecimento retornado da struct 
  puts '---------------------------------------------------------------------------------'
  puts '                                                                                 '
  puts 'Segue as informações de um dos estabelecimentos cadastrados na API: '
  puts '                                                                                 '
  puts  @estabelecimento
  puts '                                                                                 '
  puts '---------------------------------------------------------------------------------'
  end