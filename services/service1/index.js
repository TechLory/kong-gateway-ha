const express = require('express');
const app = express();
const port = 3001;
const serviceName = "service1";

app.get('/', (req, res) => {
  console.log(`Request to ${serviceName} at ${new Date().toISOString()}`);
  res.send(`<h1>Welcome to <code style="color:darkred;">${serviceName}</code> 😃</h1><h2>There are 3 istances of this microservice, ensuring load balancing and fault tolerance</h2>`);
});

app.get('/health', (req, res) => {
  res.status(200).send('OK');
});


app.listen(port, () => {
  console.log(`${serviceName} listening at http://localhost:${port}`);
});