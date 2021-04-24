function doSomething(callback) {
  setTimeout(function () {
    // did something
    callback('First data');
  }, 1000);
}

function doOtherTring(callback) {
  setTimeout(function () {
    // did something
    callback('Second data');
  }, 1000);
}

function splitAndLog(data) {
  console.log(data.split(''));
}

function doAll() {
  console.log('To split: First data , Second data');
  doSomething(function (data) {
    splitAndLog(data);

    doOtherTring(function (data2) {
      splitAndLog(data2);

      console.log('Splited:', data, ',', data2);
    });
  });
}

doAll();