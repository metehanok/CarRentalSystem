# Windows Server Core imaj� kullanarak Dockerfile olu�turuyoruz
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8 AS base
WORKDIR /inetpub/wwwroot
EXPOSE 80

# Proje dosyalar�n�z� konteynere kopyalay�n
COPY . .

# IIS'yi ba�latan bir komut
ENTRYPOINT ["C:\\ServiceMonitor.exe", "w3svc"]
