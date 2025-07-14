### 1.26 🔒 Habilitar Credential Guard e Device Guard

#### 🎯 Objetivo
Proteger as credenciais armazenadas na memória do sistema (NTLM, Kerberos, etc.) contra roubo por ferramentas maliciosas, e garantir que apenas código confiável seja executado no dispositivo.

---

#### 🛠️ Requisitos
- Windows 10 Enterprise, Education ou Windows Server 2016+
- Hardware com:
  - UEFI com Secure Boot habilitado
  - Virtualization-based Security (VBS) suportado
  - Habilitação do recurso “Isolated User Mode”

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Device Guard >
          Ativar a segurança baseada em virtualização
          Configurar Credential Guard com VBS
```

- Definir como: **Habilitado com UEFI Lock** (recomendado)
- Ativar também: **Habilitar Windows Defender Credential Guard com ou sem UEFI Lock**

---

#### 📝 Descrição técnica
- **Credential Guard** protege credenciais armazenadas no LSASS, isolando-as em um ambiente seguro por virtualização (VSM)
- **Device Guard** usa políticas de código confiável (Code Integrity) para permitir somente execução de binários assinados e autorizados

---

#### ✅ Boas práticas
- Habilitar primeiro em ambientes de teste
- Garantir que o antivírus/EDR seja compatível com VBS e HVCI
- Ativar BitLocker e Secure Boot em conjunto para maior proteção

---

#### 💡 Observações
- A ativação de VBS e Credential Guard pode impactar compatibilidade com drivers antigos ou aplicativos legados
- Use o comando abaixo para verificar se Credential Guard está ativo:
```powershell
Get-CimInstance -ClassName Win32_DeviceGuard
```