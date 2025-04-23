# Windows Server Core imajý kullanarak Dockerfile oluþturuyoruz
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8 AS base
WORKDIR /inetpub/wwwroot
EXPOSE 80

# Proje dosyalarýnýzý konteynere kopyalayýn
COPY . .

# IIS'yi baþlatan bir komut
ENTRYPOINT ["C:\\ServiceMonitor.exe", "w3svc"]
