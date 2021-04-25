class Math {
  sum(a, b) {
    return a + b;
  }
  multiply(a, b) {
    return a * b;
  }
}

class AsyncMath {
  sum(a, b, callback) {
    setTimeout(() => {
      callback(a + b);
    }, 100);
    // return a + b;
  }
}

export { Math, AsyncMath };