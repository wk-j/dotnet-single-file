## 2020

```
dotnet publish -r osx-x64 \
    --self-contained true \
    --output __output__ \
    /p:PublishSingleFile=true \
    src/MyApp
```

## Single File

*Publish*

```
dotnet publish -r osx-x64 \
    -c Release \
    -o output \
    /p:PublishSingleFile=true  \
    /p:PublishReadyToRun=true \
    /p:PublishTrimed=true \
    /v:q \
    -nologo \
    src/MyConsole

output/MyConsole
```

*Check file size*

```bash
wk-file-size -m output/MyConsole
du -k output/MyConsole
```

*Build Docker*

```bash
docker compose build
docker compose up
```

*Warp*

```bash
mkdir output

dotnet new tool-manifest
dotnet tool install dotnet-warp

dotnet warp  src/MyConsole -o output/MyConsole
dotnet warp  src/MyApp -o output/MyApp

output/MyApp
output/MyConsole

du -k output/*
```

*Resource*

- https://devandchill.com/posts/2019/06/net-core-3.0-publish-single-file-binary-on-alpine-container
- https://auth0.com/blog/dotnet-5-whats-new
- https://docs.microsoft.com/en-us/dotnet/core/deploying/single-file