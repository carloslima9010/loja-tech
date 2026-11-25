# 💻 Banco de Dados — Loja Tech

![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Concluído-success?style=for-the-badge)

## 📌 Sobre o projeto

Este projeto foi desenvolvido como atividade acadêmica da disciplina de Banco de Dados, utilizando MySQL e um cenário fictício de uma loja de produtos tecnológicos chamada **Loja Tech**.

O objetivo é colocar em prática os conhecimentos de SQL, por meio da criação de consultas, Stored Procedures e Views, explorando diferentes recursos para manipulação, organização e recuperação de informações em um banco de dados relacional.

## 🎯 Objetivos

- Praticar comandos SQL para consulta de dados.
- Desenvolver e executar Stored Procedures.
- Trabalhar com parâmetros IN e OUT.
- Realizar operações de inserção e atualização.
- Compreender o funcionamento das Views.
- Identificar situações em que uma VIEW é mais adequada que uma Stored Procedure.
- Aplicar boas práticas na organização de um banco de dados.

## 🛠️ Tecnologias utilizadas

- MySQL 8.0+
- MySQL Workbench
- SQL
- Git
- GitHub

## 🗄️ Estrutura do banco de dados

O banco de dados utilizado no projeto chama-se `loja_tech`.

Ele possui seis tabelas principais:

| Tabela | Finalidade |
|---|---|
| `categorias` | Cadastro das categorias dos produtos |
| `produtos` | Cadastro de produtos, preços e estoque |
| `clientes` | Cadastro dos clientes |
| `pedidos` | Registro dos pedidos realizados |
| `itens_pedido` | Detalhamento dos produtos de cada pedido |
| `log_operacoes` | Registro de operações para auditoria |

As tabelas possuem relacionamentos por meio de chaves primárias e estrangeiras, garantindo a integridade referencial dos dados.

## 📝 Atividades desenvolvidas

### 1. Consultas SQL

Foram desenvolvidas 10 consultas utilizando diferentes comandos e recursos SQL:

1. Listagem de clientes com nome e e-mail.
2. Busca de produtos com preço inferior a R$ 500,00.
3. Consulta de pedidos com status pendente.
4. Listagem de produtos ordenados pelo preço.
5. Busca de produtos pelo nome utilizando LIKE.
6. Consulta de produtos de uma categoria com estoque superior a 40 unidades.
7. Contagem total de clientes.
8. Cálculo do faturamento bruto dos pedidos.
9. Consulta de produtos com suas respectivas categorias utilizando INNER JOIN.
10. Consulta dos pedidos realizados pela cliente Ana Silva.

### 2. Stored Procedures

Foram desenvolvidas cinco Stored Procedures:

| Nº | Procedure | Funcionalidade |
|---|---|---|
| 1 | `listar_categorias_ativas` | Lista as categorias ativas |
| 2 | `buscar_pedidos_por_status` | Busca pedidos de acordo com o status informado |
| 3 | `inserir_categoria` | Cadastra uma nova categoria |
| 4 | `atualizar_telefone_cliente` | Atualiza o telefone de um cliente |
| 5 | `contar_produtos_categoria` | Conta os produtos de uma categoria utilizando parâmetro OUT |

Durante o desenvolvimento, foram utilizados parâmetros, variáveis e comandos como `CREATE PROCEDURE`, `CALL`, `DELIMITER`, `BEGIN` e `END`.

### 3. Exemplos de utilização de Views

Foram desenvolvidos cinco exemplos de situações em que uma VIEW pode ser utilizada:

1. `vw_catalogo_produtos`: apresenta os produtos e suas categorias.
2. `vw_pedidos_clientes`: reúne os pedidos com os dados dos clientes.
3. `vw_produtos_estoque_baixo`: identifica produtos que precisam de reposição.
4. `vw_detalhes_pedidos`: apresenta os produtos e os valores de cada pedido.
5. `vw_resumo_compras_clientes`: apresenta a quantidade de pedidos e o total gasto por cliente.

As Views permitem salvar consultas SQL e reutilizar seus resultados como tabelas virtuais, simplificando o acesso às informações.

## ⚖️ Diferença entre VIEW e Stored Procedure

A VIEW é utilizada principalmente para facilitar consultas, organizar informações e reutilizar instruções SQL.

Já a Stored Procedure permite executar procedimentos armazenados, receber parâmetros, realizar operações de inserção e atualização e aplicar regras de negócio.

Portanto, a escolha depende da finalidade: para consultas reutilizáveis, podemos utilizar Views; para executar processos e operações, podemos utilizar Stored Procedures.

## ▶️ Como executar o projeto

1. Instale o MySQL Server e o MySQL Workbench.
2. Abra o MySQL Workbench e conecte-se ao servidor.
3. Execute o script de criação do banco de dados e das tabelas.
4. Execute os comandos de inserção dos dados iniciais.
5. Execute as 10 consultas SQL.
6. Execute os scripts de criação das Stored Procedures.
7. Utilize o comando `CALL` para testar cada procedure.
8. Execute os scripts de criação das Views.
9. Consulte as Views utilizando `SELECT`.

**Importante:** execute os comandos na ordem correta, respeitando os relacionamentos entre as tabelas.

## 📚 Referências

- Material didático disponibilizado em aula: *aula-stored-procedures.pdf*.
- MySQL Documentation — Stored Objects: https://dev.mysql.com/doc/refman/8.4/en/stored-objects.html
- MySQL Documentation — Views: https://dev.mysql.com/doc/refman/8.4/en/views.html
- MySQL Documentation — CREATE VIEW: https://dev.mysql.com/doc/refman/8.4/en/create-view.html

## 👨‍🎓 Autor

**Nome:** Carlos

**Disciplina:** Banco de Dados

**Professor(a):** Atila

**Instituição:** Senai Suiço Brasileiro

---

⭐ Desenvolvido para fins acadêmicos, com o objetivo de aprimorar conhecimentos em SQL, consultas, Stored Procedures e Views utilizando MySQL.

