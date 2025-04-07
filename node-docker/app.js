const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/create', (req, res) => {
  res.send('created successfully');
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});