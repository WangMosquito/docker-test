FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

RUN apt-get clean
RUN mv /var/lib/apt/lists /var/lib/apt/lists.broke
RUN mkdir -p /var/lib/apt/lists/partial
#RUN apt-get update -y
#RUN apt-get remove krb5-config krb5-user
RUN apt install -y krb5-config 
RUN apt-get install -y krb5-user

ENTRYPOINT ["bash"]