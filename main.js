//loading the HTTP model 
const http = require('http');

//configure the http server
const server = http.createServer(function (req, res) {
    res.writeHead(200, {"Content-Type": "text"});
    res.end("Hello Word")
});


server.listen(8000);
console.log("Server listening");

