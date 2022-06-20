Curso de Rest API 
API  
	tecnologia desenvolvida para que outro sistema possa usar as funcionalidades de outro sistema
	api pode ser controlador de arquivo, controlador de rede , api Rest
   API REST
        Utiliza protocolo http
	metodos (get, post, delete,put)
   Endpoint (url)
   SSL (segurança tudo vai criptografado)
   Autenticação(tokens)   
   Resposta(json,xml)

	Software consumidor <--------   API ---------->    Software Provedor 
	
WEB SERVICE
	Web Service = é uma tipo de api 
	Webservice nome dado a tecnologia que permite a comunicação entre aplicações de 
	   maneira independente de sistema operacional e de linguagem de programação
   
   Motivo para uso
	Integração para uso de serviço distintos
	Padronização do retorno de cada requisição de serviço
	
	computador (https://www.youtube.com)------> web service ------> banco de dados --------> web service (xml, json)-------> reposta computador 
	
	protocolos SOAP,REST

	software restaurante <--------> API do ifood  <---------> iFood
	
Rest API = Representation State Transfer 
	E um estilo arquitetural para desenvolver web api (web service)
	e uma especificação para desenvolver software
	regras a serem seguidas 
	
	separaçãoo entre cliente e servido fica independente 
	escalabilidade 
	não depende de liguagem de programação
	facilidade de integração entre diversas api
	
	Constraints (melhores praticas para ser rest)
		Cliente servidor - independente um do outro
		Statelless - não tem estado, servidor nao pode manter uma seção 
		Cache - tab_cidade que não muda muito e não tem necessidade de ficar sempre trafegando algo que não muda
		Interface uniforme - conj operações bem definida (uri seguindo padrao) protocolos http(get,post,put ..)
		Sistema em camadas - 
		Codigo sob demanda - servidor enviar um codigo que pode ser consumido pelo cliente
	
	

PROTOCOLO HTTP (Requisição , resposta)
       
        [metodo] [uri] HTTP/[Versão] 
	[CABEÇALHO]
	[CORPO]

	ex:
	POST /api/produtos  HTTP/1.1 
	Content-Type: application/json 
	Accept: application/json
	{
	   "codigo": 321,
	   "nome": "HELITON"
	}
	
	--------
	
	Metodo POST / =(get,post,delete) determina a acão que o metodo vai executar
	URI /api/produtos  = caminho que vai ser direcionado 
	VERSAO HTTP/1.1 
	
	CABEÇALHO = (Content-Type: application/json 
	             Accept: application/json)
		     
		     Content-Type: Formato do envio que a requisição esta indo transporte de dados
		     Accept: formato do retorno a resposta que ele espera
		     
		Existe outros formatos de cabeçalho que pode ser estudades posteriormente mais o mais usado este formato json
		     
	CORPO {
		"codigo": 321,
		"nome": "HELITON"
              }
	

RESPOSTA
	HTTP/[Versão] [STATUS]
	[CABEÇALHO]
	[CORPO]
	
	STATUS 201 Sucesso, 400 não encontrado  etc
	
RECURSO REST
	Qualquer coisa que esteja trafegando na internete ()
        instancia de objeto de uma determinada classe 
        recurso unico quando tem apenas um unico objeto trafegando  /{331}

	URI X URL   
		URL é um tipo de URI 
		NO contexto rest sao a msm coisa
		
	BOA PRATICA DE MERCADO SEMPRE ULTILIZAR NO PLURAL	
		https://api.algarmarket.com.br/produtos
		https://api.algarmarket.com.br/produtos/331 (recurso unico)
