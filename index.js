const http = require('http');
const port = 8080;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.end('Hello from version 4!\n');
});

server.listen(port, () => {
  console.log(`Server running on port ${port}`);
});


