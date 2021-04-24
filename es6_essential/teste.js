class Pessoa {
  #nome = '';

  constructor(nome) {
    this.#nome = nome;
  }

  get nome() {
    return `Seu nome é: ${this.#nome}`;
  }

  set nome(novoNome) {
    this.#nome = novoNome;
  }
}

const pessoa = new Pessoa();

console.log(pessoa);
console.log(pessoa.nome);
pessoa.nome = 'Foo';
console.log(pessoa.nome);

// function Pessoa(nome) {
//   this.nome = nome;
// }

// function PessoaFisica(nome, cpf) {
//   Pessoa.call(this, nome);

//   this.cpf = cpf;
// }

// function PessoaJurica(nome, cnpj) {
//   Pessoa(nome);

//   this.cnpj = cnpj;
// }

// const pessoaFisica = new PessoaFisica('Foo', '123.456.789-10');
// const pessoaJuridica = new PessoaJurica('Bar', '12.345.678/0001-11');

// console.log(pessoaFisica);
// console.log(pessoaJuridica);