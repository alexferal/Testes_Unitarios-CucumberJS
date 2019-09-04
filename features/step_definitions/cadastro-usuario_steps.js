const assert = require('assert');
const { Given, When, Then } = require('cucumber');

Given("o nome {string}", function (nome) {
    this.nome = nome;
});

Given("a idade {}", function (idade) {
    this.idade = Number(idade);
});

When("os dados forem validados", function(){
    this.mensagem = (this.nome != null && this.idade >= 18) ? "Cadastro com sucesso!" : "Falha ao cadastrar!";
});

Then("a resposta esperada é {string}", function(mensagem){
    assert.equal(this.mensagem, mensagem);
});