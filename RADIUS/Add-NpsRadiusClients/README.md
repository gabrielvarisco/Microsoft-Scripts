# Add-NpsRadiusClients.ps1

Script PowerShell para adicionar múltiplos clientes RADIUS no Network Policy Server (NPS) a partir de uma lista de objetos diretamente no script ou pipeline.

---

## 🎯 Objetivo

Automatizar a criação em massa de clientes RADIUS no NPS, facilitando a configuração rápida e segura de vários dispositivos de rede sem necessidade de arquivos externos.

---

## 📦 Requisitos

- PowerShell 5.1 ou superior  
- Permissão administrativa no servidor NPS  
- Módulo e cmdlets do NPS instalados e disponíveis  

---

## 🚀 Como usar

1. Prepare uma lista de clientes como array de objetos no PowerShell:

```powershell
$clients = @(
    @{Address="192.168.1.100"; Name="Switch106"; SharedSecret="Secret1"},
    @{Address="192.168.1.101"; Name="Switch107"; SharedSecret="Secret2"; VendorName="Cisco"; AuthAttributeRequired=$false}
)
