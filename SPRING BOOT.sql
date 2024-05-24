SPRING BOOT 

SDKMAN:  usado para gerenciar v�rias vers�es de v�rios SDKs bin�rios

CLI 
	 � uma ferramenta de linha de comando 
	 permite que voc� execute scripts Groovy
	 sintaxe familiar semelhante a Java 


COMANDO CLI no BASH 
	$ spring run app.groovy (executar)
	

INICIAR PROJETO 
	java -version	(Verifica versao do java)
	mvn -v (Verifica versao do maven)
	
	mvn package (baixar as dependencias do maven)
	mvn dependency:tree (mostrar todas as dependencias existentes)
	mvn spring-boot:run  (para iniciar o aplicativo)
	 pressione ctrl-c. (Para sair normalmente do aplicativo)
	
DEPENDENCIAS 
	spring-boot-starter-parent (fornece padr�es �teis do Maven.)	
	spring-boot-starter-web (Para aplica��es web, ja fornece o tomcat)
	spring-boot-starter-data-jpa (para acessar o banco de dados)

ANOTA��ES 
	@RestController ( Considera que lida com solicita��es da web recebidas)
	@RequestMapping (informa��o roteamento)
    s�o anota��es do Spring MVC	
        @EnableAutoConfiguration (Esta anota��o diz ao Spring Boot para �adivinhar� como voc� deseja configurar o Spring, com base nas depend�ncias do jar que voc� adicionou)
	
------------------------------	
    public static void main(String[] args) {
        SpringApplication.run(MyApplication.class, args);
    }
    
	SpringApplication.run(MyApplication.class, args);
		SpringApplication (inicializa nosso aplicativo, iniciando o Spring, que, por sua vez, inicia o servidor web Tomcat configurado automaticamente.)
		runm�todo para dizer SpringApplicationqual � o componente prim�rio do Spring. A argsmatriz tamb�m � passada para expor quaisquer argumentos de linha de comando.



___________________________	
Por padr�o, o Maven compila fontes de src/main/java	

'jar execut�vel' ou 'fat jars'  (s�o arquivos contendo suas classes compiladas junto com todas as depend�ncias de jar que seu c�digo precisa para executar.)
	Para criar precisa que add o plugin
	
<build>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
        </plugin>
    </plugins>
</build>
	
	mvn package (para empacotar) no target diret�rio, dever� ver myproject-0.0.1-SNAPSHOT.jar
	

 jars �uber� (empacota todas as classes de todas as depend�ncias do aplicativo em um �nico arquivo)
 O problema com essa abordagem � que fica dif�cil ver quais bibliotecas est�o em seu aplicativo. Tamb�m pode ser problem�tico se o mesmo nome de arquivo for usado (mas com conte�do diferente) em v�rios jars.
 
 Se voc� n�o quiser usar @SpringBootApplication, as anota��es @EnableAutoConfiguratione @ComponentScanimportadas definem esse comportamento para que voc� tamb�m possa us�-las.
 
 DESATIVANDO CLASSES DE CONFIGURA��O AUTOM�TICA ESPEC�FICAS
	
	@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
	public class MyApplication {

	}