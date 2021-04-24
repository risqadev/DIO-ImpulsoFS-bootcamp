const doSomethingPromise = () => new Promise((resolve, reject) => {
  setTimeout(() => {
    // did something
    // throw new Error('Simulando um erro: "Há algo errado que não está certo."');
    resolve('First data');
  }, 1100);
});

const doOtherTringPromise = () => new Promise((resolve, reject) => {
  setTimeout(() => {
    // did something
    // throw new Error('Simulando um erro: "Há algo de podre no Reino da Dinamarca."');
    resolve('Second data');
  }, 1000);
});

function splitAndLog(data) {
  console.log(data.split(''));
}

/**
 * Há 3 estados possíveis para uma promise:
 *  * Pending
 *  * Fulfilled
 *  * Rejected
**/
console.log('a pending promise:');
console.log(doSomethingPromise()); // pending

/** Execução sequencial com 'then' encadeado */
doSomethingPromise()
  .then(data => {
    console.log('aPromise().then(...).then(...), 1º');
    splitAndLog(data);
    return doOtherTringPromise(); // o resolved desta promisse será passado ao próximo 'then'
  })
  .then(data2 => {
    console.log('aPromise().then(...).then(...), 2º');
    splitAndLog(data2);
  })
  .catch(err => console.log('ooops!', err));
/**
 * 'then' será executado quando a promise for resolvida
 * 'catch' será executado quando a promise for rejeitada ou houver um erro
 */

/** Para rodar as promises em paralelo, aguardando a resolução de todas: */
Promise.all([doSomethingPromise(), doOtherTringPromise()])
  .then(data => {         // este 'then' só será executado com o resolved das promises passadas no array de Promise.all | 'data' será também um array, onde cada elemento é o retorno de uma das primises.
    console.log('Promise.all');
    splitAndLog(data[0]);
    splitAndLog(data[1]);
  })
  .catch(err => console.log('ooops!', err));

/** Para rodar as promises em paralelo, aguardando a resolução da primeira delas: */
Promise.race([doSomethingPromise(), doOtherTringPromise()])
  .then(data => {         // este 'then' só será executado com o resolved de uma das promises passadas no array de Promise.all
    console.log('Promise.race');
    splitAndLog(data);
  })
  .catch(err => console.log('ooops!', err));