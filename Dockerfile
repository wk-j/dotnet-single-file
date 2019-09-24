FROM mcr.microsoft.com/dotnet/core/sdk:3.0.100-alpine3.9 AS build

WORKDIR /app

COPY . .

RUN dotnet publish \
    -r linux-musl-x64 \
    -c Release \
    /p:PublishSingleFile=true  \
    /p:PublishTrimed=true \
    /p:CrossGenDuringPublish=false \
    -o deploy \
    src/MyApp

FROM mcr.microsoft.com/dotnet/core/runtime-deps:3.0.0-alpine3.9

COPY --from=build /app/deploy ./app

ENTRYPOINT ["./app/MyApp"]