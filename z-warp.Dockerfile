FROM mcr.microsoft.com/dotnet/core/sdk:3.0.100-alpine3.9 AS build

WORKDIR /app

COPY . .

RUN mkdir -p deploy
RUN dotnet tool restore

# Supported environments are same as Warp: win-x64, linux-x64, osx-x64
RUN dotnet warp  src/MyConsole -o deploy/MyConsole --verbose --rid  linux-musl-x64

FROM mcr.microsoft.com/dotnet/core/runtime-deps:3.0.0-alpine3.9

COPY --from=build /app/deploy ./app

ENTRYPOINT ["./app/MyConsole"]