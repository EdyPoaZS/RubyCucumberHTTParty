#gens que serao requeridas (utilizadas no codigo abaixo)
require 'rspec'
require 'httparty'
require 'cucumber'


# url do service da API do portal VR
URL = 'https://portal.vr.com.br/'

# criacao do modulo utilizado para facilitar a chamada do serviço da API
module Service
    include HTTParty
    base_uri URL 
    format :json
    headers 'Content-Type' => 'application/json'
  end