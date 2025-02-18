const express = require('express');
const app = express();
const port = 3002;
const serviceName = "service2";

app.get('/', (req, res) => {
  console.log(`User ${req.headers['x-credential-identifier']} requested ${serviceName} at ${new Date().toISOString()}`);
  res.send(`<h1>Welcome <span style="color:darkgreen;">${req.headers['x-credential-identifier']}</span>, this is <code style="color:darkred;">${serviceName}</code> 😃</h1><h4>Basic authentication required to access this microservice.</h4>`);
});

app.listen(port, () => {
  console.log(`Service 2 listening at http://localhost:${port}`);
});