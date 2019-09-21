## Live Stream Server using RTMP and WebSockets

### RTMP Server Deploy
```
git clone https://github.com/rahulsai1999/R3Stream
cd R3Stream
docker build -t r3stream .
docker run -d -p 1935:1935 -p 8000:8000 r3stream
```

### Making FFMpeg Streams (For Windows)
- Download the file https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20190920-2f87c9f-win64-static.zip
- Extract this folder somewhere
- Add the /bin directory to the path
- Execute the command 
- ` ffmpeg -re -i <filename.ext> -c:v libx264 -preset superfast -tune zerolatency -c:a aac -ar 44100 -f flv rtmp://localhost/live/<stream-name> `
  
### Connecting to the Streams

- Use the URL mentioned above `rtmp://localhost:1953/live/streamname` on any media player such as VLC
- Use the web socket URL `ws://localhost:8000/live/streamname.flv` to embed on html (See index.html for example)