# docker_learn
我的第一個dockerfile

終於可以run起來了，可喜可賀

## how to use

1. install docker in ur os
2. create a docker image by this dockerfile  
  ```docker build -t <name of ur image> . --no-cache```
3. after create the image , u had to run it make the container start  
  ```docker run -d -p <port u want to map>:80 -v <volume map>:/var/www/html <the name of ur image>``` 
4. now, u got a apache server 
