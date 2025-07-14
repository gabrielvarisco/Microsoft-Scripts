### 1.18 🔒 Desabilitar Windows Script Host (WSH)

#### 🎯 Objetivo
Impedir a execução de scripts `.vbs`, `.js` e outros suportados pelo Windows Script Host (WSH), uma técnica comumente usada por malware para infectar sistemas.

---

#### 🛠️ Caminho da GPO (via Registro)
```
HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Script Host\Settings
Valor: Enabled (REG_DWORD) = 0
```

- Alternativa para Configuração de Usuário:
```
HKEY_CURRENT_USER\Software\Microsoft\Windows Script Host\Settings
```

---

#### 📦 Aplicação via GPO
Use **Preferências de Registro** para aplicar esse valor nos computadores ou usuários alvo.

---

#### 📝 Descrição técnica
Com `Enabled = 0`, o WSH será desativado e qualquer tentativa de execução de arquivos `.vbs`, `.js` ou similares será bloqueada com uma mensagem de erro. Isso ajuda a mitigar o uso de scripts de phishing e vírus baseados em VBScript/JScript.

---

#### ✅ Boas práticas
- Aplicar em todos os endpoints que não precisem rodar scripts legados
- Validar com equipes de automação se há dependências legítimas
- Complementar com bloqueios de PowerShell, macros e AppLocker

---

#### 💡 Observações
- Essa configuração pode ser revertida facilmente por malware com permissões elevadas — reforçar com controle de contas e restrições de modificação no registro
- Também pode ser configurada com soluções de segurança que monitoram execução de scripts