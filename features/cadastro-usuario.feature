#language:pt

Funcionalidade: Cadastro de um Usuário.
    Testes de cadastro de um usuário padrão.

    Cenário: Cadastro de usuário válido
        Dado o nome "Alex"
        E a idade "18"
        Quando os dados forem validados
        Então a resposta esperada é "Cadastro com sucesso!"