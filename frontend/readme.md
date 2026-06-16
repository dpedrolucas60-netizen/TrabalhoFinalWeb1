# ⚽ API de Consulta de Times de Futebol

## 📖 Descrição

Este projeto consiste em uma aplicação web desenvolvida para consulta de times de futebol e seus respectivos campeonatos.

A aplicação utiliza uma arquitetura cliente-servidor, onde o Front-end consome dados disponibilizados por uma API REST desenvolvida em Node.js e Express. As informações são armazenadas em um banco de dados PostgreSQL.

O sistema permite visualizar os campeonatos cadastrados, listar todos os times e consultar os times pertencentes a um campeonato específico.

---

# 🚀 Tecnologias Utilizadas

## Front-end

* HTML5
* CSS3
* JavaScript

## Back-end

* Node.js
* Express.js

## Banco de Dados

* PostgreSQL

## Dependências

* pg
* cors
* express

---

# 🗄️ Estrutura do Banco de Dados

## Tabela: campeonatos

| Campo | Tipo         |
| ----- | ------------ |
| id    | SERIAL       |
| nome  | VARCHAR(100) |

## Tabela: times

| Campo         | Tipo         |
| ------------- | ------------ |
| id            | SERIAL       |
| nome          | VARCHAR(100) |
| campeonato_id | INTEGER      |

### Relacionamento

* Um campeonato possui vários times.
* Um time pertence a apenas um campeonato.

---

# 🔗 Endpoints da API

## Listar Campeonatos

```http
GET /campeonatos
```

### Exemplo de resposta

```json
[
  {
    "id": 1,
    "nome": "Brasileirão"
  }
]
```

---

## Listar Todos os Times

```http
GET /times
```

### Exemplo de resposta

```json
[
  {
    "id": 1,
    "time": "Flamengo",
    "campeonato": "Brasileirão"
  }
]
```

---

## Listar Times por Campeonato

```http
GET /campeonatos/:id/times
```

### Exemplo

```http
GET /campeonatos/1/times
```


---

# 💻 Como Executar o Projeto

## 1. Clonar o repositório

```bash
git clone https://github.com/dpedrolucas60-netizen/TrabalhoFinalWeb1.git
```


```

## 3. Instalar as dependências

```bash
npm install
```


```

## 6. Iniciar o servidor

```bash
node server.js
```

A API ficará disponível em:

```text
http://localhost:8080
```

## 7. Executar o Front-end

Abra o arquivo `index.html` em seu navegador ou utilize uma extensão como Live Server.

---

# 🎯 Funcionalidades

✅ Listagem de campeonatos cadastrados.

✅ Listagem de todos os times cadastrados.

✅ Consulta de times por campeonato.

✅ Integração entre Front-end, API REST e Banco de Dados.

✅ Interface web para visualização dos dados.

---


### Tela Inicial

![Tela Inicial](/readmefotos/Captura%20de%20tela%202026-06-16%20102322.png)

### Listagem de Times

![Tela Inicial](/readmefotos/telainicialtimesdefutebol.png)



# 👨‍💻 Autor

Desenvolvido por **Pedro Lucas** como atividade prática da disciplina de Desenvolvimento Web.

---

# 📄 Licença

Este projeto foi desenvolvido exclusivamente para fins acadêmicos.
