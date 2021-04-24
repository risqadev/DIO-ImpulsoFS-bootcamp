import fetch from "node-fetch";

/** ES7 - Async / Await */

const asyncTimer = () => new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve(12345);
  }, 1000);
});

const simpleAsyncFunction = async () => {
  const data = await Promise.all([
    asyncTimer(),
    fetch('http://localhost:5500/data.json').then(resp => resp.json())
  ]);

  return data;
}

simpleAsyncFunction()
  .then(data => console.log(data))
  .catch(err => console.log(err));