ORGANIZAÇÃO DAS PASTAS NO PROJETO DA ALGAR WORKS

api
   excepitionhandler
   v1(pacote de versionamento)
      assembier(representetion model assembier, conversao de model para dto)
      controller(vai os endpoint da api)
      model (entidades)
      openapi(Documentação, antigo Swagger, ajustes finos ) junto SwaggerUI,springFox
	 controller(arquivos do controller)
	 model(arquivos do model)
core
   data
      PageableTranslator.java
      PageWrapper.java
   email
      EmailConfig.java
      EmailProperties.java
   jackson(serializador do jackson)
      PageJsonSerializer.java
   modelmapper
      ModelMapperConfig(fazer conversao tipo para outro ex:model para dto)	
   security(nova steck spring security alf2, oauth2 antiga para autorization)
      ResouceServerCongig.java	
   springfox
	adapter(adaptação conflito do springfox 2.9.2 para spring boot 222)
	   DocumentationPluginsMan.java
	   TypeNameExtractorAdapter.java
	SpringFoxCongig.java
   squiggly(para filtro de propriedades)
      SquiggluConfig.java
      TomcatCustomizer.java
   storage(Upload de fotos AmazonS3 e disco local)
      StorageConfig.java
      StorageProperties.java
   validation(validadores com bean validation)
      FileContentType.java
      FileContentTypeValidator.java
      FileSize.java
      FileSize.Validator.java
      Groups.java
      Multiplo.java
      MultiploValidator.java
      ValidatorConfig.java
      ValorZeroIncluiDescricao.java
      ValorZeroIncluiDescricaoValidator.java      
   web (Spring MVC)
      WebConfig.java  
domain
   event(ddd)
   filter
   listener(dos eventos)
   model
      dto()
   repository(springDateJpa)
   service (regras de negocio)
   
infrastructure
   Repository
      CustomJpaRepositoryImpl.java
      ProdutoRepositoryImpl.java
   Service
      email //configurado no application.properties
	 EmailException.java
	 FakeEnvioEmailService.java(fazer print console)
	 SandboxEnvioEmailService.java(real no email fixo)
	 SmtpEnvioEmailService.java(em produção)
   query
   report(jasperReport relatorio)
   templates(configuração template padrao para envio de email, apache flyemark)
      pedido-cancelado.html
      pedido-confirmado.html    
      logback-spring.xml (salvar os log na nuvem)      
   storage
	localStorageService.java
	S3StorageService.java
	StorageException.java

	
src/main/resources
	db  (flyer versionamento de banco)
	   migration
	     V001__cadastroItem
	     
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
			