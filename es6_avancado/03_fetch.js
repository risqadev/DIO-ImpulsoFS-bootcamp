import fetch from "node-fetch";

fetch('http://localhost:5500/data.json')
  .then(response => {
    if (response.status === 200) {
      return response.json();
    } else {
      throw new Error(`Request error. Status ${response.status}`);
    };
  })
  .then(data => console.log(data))
  .catch(err => console.log(err));