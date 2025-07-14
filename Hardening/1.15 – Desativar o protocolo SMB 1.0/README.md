### 1.15 🔒 Desativar o protocolo SMB 1.0

#### 🎯 Objetivo
Desabilitar o suporte ao protocolo de compartilhamento de arquivos SMB 1.0, que é obsoleto, inseguro e vulnerável a diversos ataques como o WannaCry.

---

#### 🛠️ Métodos de aplicação

##### Opção 1 – GPO (via Preferência de Registro):
Adicionar a seguinte chave:

```
Chave: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters
Valor: SMB1
Tipo: REG_DWORD
Dados: 0
```

##### Opção 2 – Script PowerShell:
```powershell
Disable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -NoRestart
```

---

#### 📝 Descrição técnica
O protocolo SMB 1.0 é habilitado por padrão em versões antigas do Windows e, se não desabilitado, pode ser explorado por malwares para movimentação lateral e execução remota de código. As versões atuais do Windows já desabilitam o SMBv1 por padrão, mas é importante garantir essa configuração em ambientes legados.

---

#### ✅ Boas práticas
- Verificar compatibilidade com dispositivos legados (ex: impressoras antigas, scanners, NAS)
- Desabilitar em controladores de domínio, servidores de arquivos e estações modernas
- Monitorar logs para identificar tentativas de conexão SMBv1 após a desativação

---

#### 💡 Observações
- O SMB 2.0+ deve permanecer habilitado (recomendado o uso de SMB 3.x)
- Pode ser aplicado via GPO com GPP, PowerShell em massa ou ferramentas de automação como SCCM ou Intune