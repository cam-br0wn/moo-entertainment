const express = require('express');
const http = require('http');
const socketIo = require('socket.io');
const path = require('path');

const app = express();
const server = http.createServer(app);
const io = socketIo(server);

const PORT = process.env.PORT || 3000;

app.use(express.static(path.join(__dirname)));

let totalMoos = 0;
let connectedUsers = 0;

io.on('connection', (socket) => {
    connectedUsers++;
    console.log(`New user connected! Total users: ${connectedUsers}`);
    
    socket.on('moo', (data) => {
        totalMoos++;
        io.emit('moo', data);
        console.log(`Moo #${totalMoos} at (${data.x}, ${data.y}): ${data.text}`);
    });
    
    socket.on('disconnect', () => {
        connectedUsers--;
        console.log(`User disconnected. Total users: ${connectedUsers}`);
    });
});

server.listen(PORT, () => {
    console.log(`Moo server is running on port ${PORT}`);
    console.log(`Visit http://localhost:${PORT} to start mooing!`);
});