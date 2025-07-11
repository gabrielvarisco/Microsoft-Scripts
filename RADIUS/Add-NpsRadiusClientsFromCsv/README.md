# Add-NpsRadiusClientsFromCsv.ps1

Script PowerShell para adicionar múltiplos clientes RADIUS no Network Policy Server (NPS) a partir de um arquivo CSV.

---

## 🎯 Objetivo

Automatizar a criação em massa de clientes RADIUS no NPS, facilitando a configuração rápida e segura de vários dispositivos de rede.

---

## 📦 Requisitos

- PowerShell 5.1 ou superior  
- Permissão administrativa no servidor NPS  
- Módulo e cmdlets do NPS instalados e disponíveis  
- Arquivo CSV com os dados dos clientes a serem adicionados  

---

## 📄 Formato do arquivo CSV

O CSV deve conter as seguintes colunas (com cabeçalho exato):

| Address      | Name       | SharedSecret       | VendorName        | AuthAttributeRequired |
|--------------|------------|--------------------|-------------------|-----------------------|
| IP ou hostname do cliente RADIUS | Nome amigável para o cliente | Segredo compartilhado | Nome do fornecedor (opcional) | Verdadeiro ou falso (opcional) |

- **VendorName** é opcional e, se omitido, o script usa `"RADIUS Standard"`.
- **AuthAttributeRequired** é opcional e deve ser `True` ou `False`. Se omitido, o padrão é `True`.

### Exemplo de CSV (`clientes.csv`):

```csv
Address,Name,SharedSecret,VendorName,AuthAttributeRequired
192.168.1.100,Switch106,anotherSecret,RADIUS Standard,True
192.168.1.101,Switch107,anotherSecret,Cisco,False