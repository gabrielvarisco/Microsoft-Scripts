### 1.14 🔒 Desabilitar protocolos SSL 2.0, SSL 3.0, TLS 1.0 e TLS 1.1

#### 🎯 Objetivo
Remover suporte a protocolos de criptografia obsoletos e inseguros (SSL 2.0, SSL 3.0, TLS 1.0 e TLS 1.1), que são vulneráveis a ataques como POODLE, BEAST e downgrade.

---

#### 🛠️ Método: Registro do Windows

Essas configurações devem ser aplicadas via GPO com preferências de registro, script PowerShell ou edição manual do Registro.

##### Caminho no Registro:
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols
```

#### Para cada protocolo (ex: SSL 2.0, SSL 3.0, TLS 1.0, TLS 1.1), criar:
- Chave com nome do protocolo (ex: `SSL 2.0`)
  - Subchave: `Server`
    - Valor DWORD: `Enabled = 0`
  - Subchave: `Client`
    - Valor DWORD: `Enabled = 0`

---

#### 📝 Descrição técnica
O SCHANNEL é o provedor de segurança usado por diversos serviços no Windows (RDP, IIS, LDAPS). Essas chaves impedem que protocolos antigos sejam utilizados em qualquer comunicação TLS feita pelo sistema.

---

#### ✅ Boas práticas
- Verifique antes se há sistemas legados que ainda requerem suporte a TLS 1.0/1.1
- Aplicar prioritariamente em controladores de domínio, servidores RDP e servidores IIS
- Combine com GPO de configuração de cipher suites modernas

---

#### 💡 Observações
- TLS 1.2 deve permanecer habilitado; TLS 1.3 é suportado a partir do Windows Server 2022 e Windows 11
- A aplicação via GPO requer GPP (Group Policy Preferences) ou scripts PowerShell de criação de chave/valor