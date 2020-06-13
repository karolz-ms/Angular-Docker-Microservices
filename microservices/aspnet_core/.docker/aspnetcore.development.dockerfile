FROM microsoft/dotnet/core/sdk:2.1 as base

LABEL author="Dan Wahlin" 

ENV DOTNET_USE_POLLING_FILE_WATCHER=1
ENV ASPNETCORE_URLS=http://*:5000
ENV ASPNETCORE_ENVIRONMENT=development

EXPOSE 5000

WORKDIR /var/www/aspnetcoreapp

FROM base as final

CMD ["/bin/bash", "-c", "dotnet restore && dotnet watch run"]









# Build the image:
# docker build -f aspnetcore.development.dockerfile -t [yourDockerHubID]/dotnet:1.0.0 

# Option 1
# Start PostgreSQL and ASP.NET Core (link ASP.NET core to ProgreSQL container with legacy linking)
 
# docker run -d --name my-postgres -e POSTGRES_PASSWORD=password postgres
# docker run -d -p 5000:5000 --link my-postgres:postgres [yourDockerHubID]/dotnet:1.0.0

# Option 2: Create a custom bridge network and add containers into it

# docker network create --driver bridge isolated_network
# docker run -d --net=isolated_network --name postgres -e POSTGRES_PASSWORD=password postgres
# docker run -d --net=isolated_network --name aspnetcoreapp -p 5000:5000 [yourDockerHubID]/dotnet:1.0.0