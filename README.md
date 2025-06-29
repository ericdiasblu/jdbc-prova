# Avaliação Prática – Java Backend com Persistência de Dados

## 📌 Objetivo

Desenvolver uma aplicação Java backend orientada a objetos que utilize JDBC para realizar todas as operações de persistência (CRUD) com o banco de dados **empresa**. O sistema deve ser funcional, atender a regras de negócio obrigatórias e seguir boas práticas de codificação e organização.

---

## 📝 Descrição do Projeto

Esta aplicação tem como finalidade gerenciar os registros de **Pessoas**, **Funcionários** e **Projetos** de uma empresa. As operações incluem cadastro, atualização, consulta e exclusão de registros, sempre respeitando as regras de negócio estabelecidas.

A persistência é feita diretamente via **JDBC**, sem frameworks ORM, conectando-se a um banco de dados MySQL.

---

## ⚙️ Tecnologias Utilizadas

- Java (orientação a objetos)
- JDBC
- MySQL
- SQL

---

## 📁 Estrutura do Projeto

- `src/` → Contém os arquivos .java organizados em pacotes
- `banco-jdbc.sql` → Script de criação e população do banco de dados
- `README.md` → Este arquivo
- Configurações de conexão MySQL dentro do código Java

---

## 🗂️ Entidades do Sistema

### Pessoa

- `id`: identificador único (auto-gerado)
- `nome`: nome completo
- `email`: endereço de e-mail válido

### Funcionario

- `id`: chave estrangeira referenciando Pessoa
- `matricula`: código único no formato `F###` (ex: F001)
- `departamento`: área do funcionário (TI, RH, etc.)

### Projeto

- `id`: identificador único
- `nome`: título do projeto
- `descricao`: descrição detalhada
- `id_funcionario`: chave estrangeira para funcionário responsável

---

## 📌 Regras de Negócio Implementadas

✅ 1. Ao cadastrar um funcionário, verificar se o ID da pessoa existe na tabela `pessoa`.  
✅ 2. Um projeto não pode ser criado sem vínculo com um funcionário existente.  
✅ 3. Proibir a exclusão de um funcionário que esteja vinculado a algum projeto.  
✅ 4. Exibir mensagem de erro clara sempre que uma operação falhar por descumprimento das regras.  
✅ 5. Toda operação bem-sucedida deve imprimir mensagem de confirmação no console.  

---

## 🚀 Funcionalidades

- CRUD completo para:
  - Pessoa
  - Funcionário
  - Projeto
- Mensagens de confirmação de sucesso
- Mensagens claras de erro em caso de falha
- Organização do código orientada a objetos
- Conexão com banco de dados MySQL via JDBC

---

## 🏗️ Requisitos para Execução

- **Java 17** ou superior
- **MySQL** (ex.: MariaDB também compatível)
- Configurar no arquivo de conexão:
  ```java
  String url = "jdbc:mysql://localhost:3306/jdbc-prova";
  String user = "root";
  String password = "root";
