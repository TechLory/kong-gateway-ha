const express = require('express');
const app = express();
const port = 3003;
const serviceName = "service3";

app.get('/', (req, res) => {
  console.log(`Request to ${serviceName} at ${new Date().toISOString()}`);
  res.send(`<h1>Welcome to <code style="color:darkred;">${serviceName}</code> 😃</h1><h2>This microservice is limited to 15 requests per minute. Try reload it!</h2>`);
});

app.listen(port, () => {
  console.log(`Service 3 listening at http://localhost:${port}`);
});