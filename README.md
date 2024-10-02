# Ruby on Rails

Este projeto é uma simples aplicação com Ruby on Rails e Mongoid (MongoDB como banco de dados).

## Requisitos

- Ruby 3.2.2
- Bundle 2.5.18
- Gem 3.5.18
- Rails 7.x
- Docker >= 27

### Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/carlosfgti/ruby-on-rails.git
   cd ruby-on-rails
   ```


2. Suba os containers:

    ```bash
   docker compose up -d
   ```


3. Instale as dependências:

    ```bash
   bundle install
   ```


4. Inicie o servidor Rails:

    ```bash
   rails server
   ```

5. Acesse o projeto:

[http://localhost:3000](http://localhost:3000)