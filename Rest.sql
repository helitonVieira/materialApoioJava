Curso de Rest API 
API  
	tecnologia desenvolvida para que outro sistema possa usar as funcionalidades de outro sistema
	api pode ser controlador de arquivo, controlador de rede , api Rest
   API REST
        Utiliza protocolo http
	metodos (get, post, delete,put)
   Endpoint (url)
   SSL (seguran�a tudo vai criptografado)
   Autentica��o(tokens)   
   Resposta(json,xml)

	Software consumidor <--------   API ---------->    Software Provedor 
	
WEB SERVICE
	Web Service = � uma tipo de api 
	Webservice nome dado a tecnologia que permite a comunica��o entre aplica��es de 
	   maneira independente de sistema operacional e de linguagem de programa��o
   
   Motivo para uso
	Integra��o para uso de servi�o distintos
	Padroniza��o do retorno de cada requisi��o de servi�o
	
	computador (https://www.youtube.com)------> web service ------> banco de dados --------> web service (xml, json)-------> reposta computador 
	
	protocolos SOAP,REST

	software restaurante <--------> API do ifood  <---------> iFood
	
Rest API = Representation State Transfer 
	E um estilo arquitetural para desenvolver web api (web service)
	e uma especifica��o para desenvolver software
	regras a serem seguidas 
	
	separa��oo entre cliente e servido fica independente 
	escalabilidade 
	n�o depende de liguagem de programa��o
	facilidade de integra��o entre diversas api
	
	Constraints (melhores praticas para ser rest)
		Cliente servidor - independente um do outro
		Statelless - n�o tem estado, servidor nao pode manter uma se��o 
		Cache - tab_cidade que n�o muda muito e n�o tem necessidade de ficar sempre trafegando algo que n�o muda
		Interface uniforme - conj opera��es bem definida (uri seguindo padrao) protocolos http(get,post,put ..)
		Sistema em camadas - 
		Codigo sob demanda - servidor enviar um codigo que pode ser consumido pelo cliente
	
	

PROTOCOLO HTTP (Requisi��o , resposta)
       
        [metodo] [uri] HTTP/[Vers�o] 
	[CABE�ALHO]
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
	
	Metodo POST / =(get,post,delete) determina a ac�o que o metodo vai executar
	URI /api/produtos  = caminho que vai ser direcionado 
	VERSAO HTTP/1.1 
	
	CABE�ALHO = (Content-Type: application/json 
	             Accept: application/json)
		     
		     Content-Type: Formato do envio que a requisi��o esta indo transporte de dados
		     Accept: formato do retorno a resposta que ele espera
		     
		Existe outros formatos de cabe�alho que pode ser estudades posteriormente mais o mais usado este formato json
		     
	CORPO {
		"codigo": 321,
		"nome": "HELITON"
              }
	

RESPOSTA
	HTTP/[Vers�o] [STATUS]
	[CABE�ALHO]
	[CORPO]
	
	STATUS 201 Sucesso, 400 n�o encontrado  etc
	
RECURSO REST
	Qualquer coisa que esteja trafegando na internete ()
        instancia de objeto de uma determinada classe 
        recurso unico quando tem apenas um unico objeto trafegando  /{331}

	URI X URL   
		URL � um tipo de URI 
		NO contexto rest sao a msm coisa
		
	BOA PRATICA DE MERCADO SEMPRE ULTILIZAR NO PLURAL	
		https://api.algarmarket.com.br/produtos
		https://api.algarmarket.com.br/produtos/331 (recurso unico)
