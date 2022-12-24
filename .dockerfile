services:
  sqlserver:
    image: mcr.microsoft.com/mssql/server:2019-latest  
    environment:
      SA_PASSWORD: "SqlServer2019!"
      ACCEPT_EULA: "Y"
      MSSQL_PID: "Developer"
    ports:
      - "1433:1433"
  mssqltools:
    image: mcr.microsoft.com/mssql-tools
    depends_on:
      - sqlserver
    volumes:
      - ./TabelaUsuario.sql:/tmp/TabelaUsuario.sql
      - ./init-tabelausuario.sh:/tmp/init-tabelausuario.sh
    command: /bin/bash ./tmp/init-tabelausuario.sh
