SPRING BOOT 

SDKMAN:  usado para gerenciar várias versões de vários SDKs binários

CLI 
	 é uma ferramenta de linha de comando 
	 permite que você execute scripts Groovy
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
	spring-boot-starter-parent (fornece padrões úteis do Maven.)	
	spring-boot-starter-web (Para aplicações web, ja fornece o tomcat)
	spring-boot-starter-data-jpa (para acessar o banco de dados)

ANOTAÇÕES 
	@RestController ( Considera que lida com solicitações da web recebidas)
	@RequestMapping (informação roteamento)
    são anotações do Spring MVC	
        @EnableAutoConfiguration (Esta anotação diz ao Spring Boot para “adivinhar” como você deseja configurar o Spring, com base nas dependências do jar que você adicionou)
	
------------------------------	
    public static void main(String[] args) {
        SpringApplication.run(MyApplication.class, args);
    }
    
	SpringApplication.run(MyApplication.class, args);
		SpringApplication (inicializa nosso aplicativo, iniciando o Spring, que, por sua vez, inicia o servidor web Tomcat configurado automaticamente.)
		runmétodo para dizer SpringApplicationqual é o componente primário do Spring. A argsmatriz também é passada para expor quaisquer argumentos de linha de comando.



___________________________	
Por padrão, o Maven compila fontes de src/main/java	

'jar executável' ou 'fat jars'  (são arquivos contendo suas classes compiladas junto com todas as dependências de jar que seu código precisa para executar.)
	Para criar precisa que add o plugin
	
<build>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
        </plugin>
    </plugins>
</build>
	
	mvn package (para empacotar) no target diretório, deverá ver myproject-0.0.1-SNAPSHOT.jar
	

 jars “uber” (empacota todas as classes de todas as dependências do aplicativo em um único arquivo)
 O problema com essa abordagem é que fica difícil ver quais bibliotecas estão em seu aplicativo. Também pode ser problemático se o mesmo nome de arquivo for usado (mas com conteúdo diferente) em vários jars.
 
 Se você não quiser usar @SpringBootApplication, as anotações @EnableAutoConfiguratione @ComponentScanimportadas definem esse comportamento para que você também possa usá-las.
 
 DESATIVANDO CLASSES DE CONFIGURAÇÃO AUTOMÁTICA ESPECÍFICAS
	
	@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
	public class MyApplication {

	}