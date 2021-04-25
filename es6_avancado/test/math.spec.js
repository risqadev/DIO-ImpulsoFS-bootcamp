import { Math, AsyncMath } from '../06_tests_mocha_math.js';
import assert from 'assert';
/* Para tornar as asserções mais descritivas, no lugar do 'assert', podemos usar o 'chai' */
import { expect } from 'chai';

describe('Math class', function () {

  //hooks: before, beforeEach, after, afterEach, ...
  before(function () {
    // será executado uma vez apenas
  });

  const math = new Math();

  it('Sum two numbers', function () {
    // assert.strictEqual(math.sum(4, 6), 10);
    expect(math.sum(4, 6)).to.equal(10);
  });

  it('Multiplying two numbers', function () {
    // assert.strictEqual(math.multiply(3, 5), 15);

    let value = math.multiply(3, 5);
    expect(value).to.equal(15);
  });

  it('Subtracting two numbers'); // 'it' incompleto (sem a função) alertará que o teste está pendente de ser escrito.

  it('Dividing two numbers');
});

describe('asyncMath class', function () {
  it('Sum two numbers with callback', function (done) {
    const asyncMath = new AsyncMath();

    asyncMath.sum(4, 8, (value) => {
      // assert.strictEqual(value, 12);
      expect(value).to.equal(12);
      done();
    });
  });
});