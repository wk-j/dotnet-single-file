## Single File

*Publish*

```
dotnet publish \
    -r osx-x64 \
    -c Release \
    /p:PublishSingleFile=true  \
    /p:PublishReadyToRun=true \
    /p:PublishTrimed=true \
    src/MyApp
```

*List file*

```
ls src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish
```

*Execute*

```bash
src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish/MyApp
```

*Check file size*

```
wk-file-size -m src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish/MyApp
```

*Build Docker*

```
docker compose build
docker compsoe up
```

## Resource

- https://devandchill.com/posts/2019/06/net-core-3.0-publish-single-file-binary-on-alpine-container