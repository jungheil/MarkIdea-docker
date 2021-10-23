## MarkIdea Docker
### Deploy
```(dockerfile)
docker run -d --restart=always -p 8090:8090 -v $(pwd)/markidea:/markidea/data -e USERNAME="admin" -e PASSWORD="admin" jungheil/markidea 
````