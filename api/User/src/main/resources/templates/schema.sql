Create table Applicant(
	id serial not null,
	cpf char(14) not null,
	firstname varchar(100) not null,
	lastname varchar(100) not null,
	birthDate date not null,
	gender varchar(10) not null,
	Primary key (id)
);
Create table Company(
	id serial not null,
	cnpj char(18) not null unique,
	name varchar(100) not null,
	adress varchar(200) not null,
	Primary key (id)
);
Create table Opportunity(
	id serial not null,
	cnpjCompany char(18) not null,
	salary numeric(10,2) not null,
	companyName varchar(100) not null,
	workplace varchar(100) not null,
	trainingArea varchar(100) not null,
	hour varchar(30) not null,
	educationLevel varchar(30) not null,
	language varchar(30) not null,
	levelLanguage varchar(30) not null,
	experience varchar(10) not null,
	requirementDescription varchar(200) not null,
	benefitDescription varchar(200) not null,
	Primary key(id),
	Foreign key(cnpjCompany) references Company(cnpj)
);
Create table PhoneApplicant(
	id serial not null,
	type varchar(30) not null,
	phone char(30) not null,
	Primary key(id),
	Foreign key(id) references Applicant(id) 
);
Create table PhoneCompany(
	id serial not null,
	type varchar(30) not null,
	phone char(30) not null,
	Primary key(id),
	Foreign key(id) references Company(id) 
);
Create table Adress(
	id serial not null,
	cep char(10) not null,
	cidade varchar(30) not null,
	uf char(2) not null,
	bairro varchar(30) not null,
	logradouro varchar(100) not null,
	numero integer not null,
	complemento varchar(50) not null,
	Primary key(id)
);