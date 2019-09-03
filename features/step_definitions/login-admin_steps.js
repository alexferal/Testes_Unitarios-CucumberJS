const assert = require('assert');
const { Given, When, Then } = require('cucumber');

const email_admin = "admin@admin.com";
const senha_admin = "1234";

Given("o login {string}", function (email) {
    this.email = email;
});

Given("a Senha {string}", function (senha) {
    this.senha = senha;
});

When("os dados forem autenticados", function () {
    if (this.email === email_admin && this.senha === senha_admin) {
        this.mensagem = "Autenticado."
    } else if (this.email == null) {
        this.mensagem = "Campo email é obrigatório.";
    } else if (this.senha == null) {
        this.mensagem = "Campo senha é obrigatório.";
    } else {
        this.mensagem = "Email e/ou Senha inválidos.";
    }
});

Then("a mensagem esperada é {string}", function(mensagem){
    assert.equal(this.mensagem, mensagem);
});