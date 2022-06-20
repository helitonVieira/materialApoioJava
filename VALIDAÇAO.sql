
	
#############################################
VALIDAÇAO (JAKARTA BEAN VALIDATION )  ele usa o pacote do javax.validation.constrants
#############################################	
	-------------------------------------------------------------
	Para o jdk11 tem que fazer esta implementação
	
	<!-- https://mvnrepository.com/artifact/org.hibernate/hibernate-validator -->
			<dependency>
			<groupId>org.hibernate</groupId>
			<artifactId>hibernate-validator</artifactId>
			<version>6.0.12.Final</version>
			</dependency>
			
        NOVO

        <dependency> 
    	    <groupId>org.springframework.boot</groupId> 
    	    <artifactId>spring-boot-starter-validation</artifactId> 
	</dependency>	
	-------------------------------------------------------------		
	as validações sao feitas no domain modulo quando nao ha o dto se tiver dto sera feito no dto
	E tem que colocar @Valid no controller
	Ele trata o erro 500 do servidor e passa erro 400 que é do usuario
	
	@Column(unique = true) chave unica nao pode repetir 
	@NotEmpty   //nao aceita vazio
	@NotNull    //nao aceita nulo
	@NotBlank   //nao aceita vazio nem nulo nem com somente espaço branco
	@Email      //validação para email
	@Size(max = 20 min = 2)  // tamanho das colunas do banco para nao estourar
	@JsonIgnore    //para nao aparecer nao busca	
		
	no resouce deve ser informado no insert e no update 
	@Valid 
	ex:
		@PostMapping
			public Cliente adicionar(@Valid  @RequestBody ...
		