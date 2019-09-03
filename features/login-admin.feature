#language:pt

Funcionalidade: Login de Administrador.
    Testes de login de um usuário Administrador

    Cenário: Email e Senha corretos
        Dado o login "admin@admin.com"
        E a Senha "1234"
        Quando os dados forem autenticados
        Então a mensagem esperada é "Autenticado."
    
    Cenário: Email vazio
        Dado a Senha "1234"
        Quando os dados forem autenticados
        Então a mensagem esperada é "Campo email é obrigatório."

    Cenário: Senha vazio
        Dado o login "admin@admin.com"
        Quando os dados forem autenticados
        Então a mensagem esperada é "Campo senha é obrigatório."

    Cenário: Email inválido
        Dado o login "admin@admin.com.br"
        E a Senha "1234"
        Quando os dados forem autenticados
        Então a mensagem esperada é "Email e/ou Senha inválidos."

    Cenário: Senha inválida
        Dado o login "admin@admin.com"
        E a Senha "1235"
        Quando os dados forem autenticados
        Então a mensagem esperada é "Email e/ou Senha inválidos."

