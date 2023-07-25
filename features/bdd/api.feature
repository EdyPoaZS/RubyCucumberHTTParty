#language: pt

Funcionalidade: Localizando o estabelecimento na API

Como usuario da API de consulta no portal VR
Desejo executar a requisição GET no endpoint 
Para retornar informações dos estabelecimentos.


Cenario: Localizar informações do estabelecimento

  Dado que seja executado a requisicao GET
  Quando retornar a resposta com sucesso
  Entao deve conter a chave “typeOfEstablishment”
  E deve exibir a informações de um dos estabelecimento cadastrados na API
