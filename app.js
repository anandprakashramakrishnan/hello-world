const http = require('http');

const port = 8080;

const requestHandler = (request, response) => {
  response.end('Hello from my Node.js app!');
};

const server = http.createServer(requestHandler);

server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
