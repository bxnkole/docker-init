FROM microsoft/dotnet:1.1.1-runtime
LABEL name "docker-example"
 
WORKDIR /app
COPY out .
 
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
 
ENTRYPOINT ["dotnet",  "docker-example.dll"]