// Funções
function getName() {
  return "Ricardo Camacho"
}

function logFn(fn) {
  console.log(fn()); // irá logar o retorno da função fn
}

const logFnResult = logFn;

logFnResult(getName); // passando uma função como argumento a outra

console.log(logFnResult.prototype.constructor);