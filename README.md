## Single File

```bash
dotnet publish \
    -r osx-x64 \
    -c Release \
    /p:PublishSingleFile=true  \
    src/MyApp

ls src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish
./src/MyApp/bin/Release/netcoreapp3.0/osx-x64/publish/MyApp
```