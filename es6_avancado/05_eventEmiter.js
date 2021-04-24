/** Node.js - EventEmitter
 * semelhante ao EventTarget do browser */
import EventEmitter from "events";


/** Criamos uma instância de EventEmitter */
const emitter = new EventEmitter();

/* com o método 'on' adicionamos funções para serem executadas quando um determinado evento ocorrer: */
emitter.on('User logged', data => {
  console.log(data, "emitter.on 'User logged'");
});

/* para emitir um evento: */
emitter.emit('User logged', { user: 'Celso Henrique' });


/** Também é possível estender a classe EventEmitter criando métodos: */
class Users extends EventEmitter {
  userLogged(data) {
    this.emit('User logged', data);
  }
  userLogout(data) {
    this.emit('User logout', data);
  }
}

/** Instanciamos a classe estendida: */
const users = new Users();

users.on('User logged', data =>
  console.log(data, "users.on 'User logged'")
);

users.userLogged({ user: 'Ricardo Camacho' });
users.userLogged({ user: 'Celso Henrique' });

/* Para consumir um evento apenas uma vez, há o método 'once' */
users.once('User logout', data => console.log(data, "users.once 'User logout'"));

users.userLogout({ user: 'Ricardo Camacho' }); // será consumido
users.userLogout({ user: 'Celso Henrique' }); // não será consumido