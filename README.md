## Single File

```bash
dotnet publish \
    -r osx-x64 \
    -c Release \
    /p:PublishSingleFile=true  \
    /p:PublishReadyToRun=true \
    /p:PublishTrimed=true \
    src/MyApp

ls src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish
src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish/MyApp
```

*Check file size*

```bash
wk-file-size -m src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish/MyApp
```