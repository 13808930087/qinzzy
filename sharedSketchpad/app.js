import http from 'http';
import {resolve} from 'path';
import path from 'path';
import express from 'express';
import {Server} from 'socket.io';
import {fileURLToPath} from 'url';

const app=express();
const  server = http.createServer(app);
const  io = new Server(server);


const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

app.use(express.static(path.join(__dirname, 'public')));

app.get('/',(req,res)=>{
    console.log('path',resolve('./'));
    res.sendFile(resolve('./')+'/index.html');
});

io.on('connection',(socket)=>{
    console.log('有用户连接...');
    socket.on('disconnect',()=>{
        console.log('有用户断开链接...');
    })
    socket.on('message',(msg)=>{
        console.log(msg);
        io.emit('message',msg);
    })
})

server.listen(8080,()=>{
    console.log("监听8080端口...")
})