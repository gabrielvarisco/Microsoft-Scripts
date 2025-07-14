### 1.8 🔒 Bloquear execução em %TEMP%, %AppData% e %Downloads%

#### 🎯 Objetivo
Evitar que malwares ou scripts maliciosos sejam executados a partir de diretórios frequentemente usados como vetores de ataque, como `%TEMP%`, `%AppData%` e `%Downloads%`.

---

#### 🔧 Métodos recomendados

Este controle não está disponível diretamente por GPO padrão. Para implementá-lo, utilize uma das seguintes opções:

---

#### 🛡️ Opção 1: **Software Restriction Policies (SRP)**

##### Caminho:
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Políticas de Restrição de Software >
          Regras Adicionais
```

##### Ações:
- Criar regras de **"Caminho"** com **nível de segurança: Não permitido**
- Exemplos:
  - `%APPDATA%\*.exe`
  - `%USERPROFILE%\Downloads\*.exe`
  - `%TEMP%\*.exe`

---

#### 🛡️ Opção 2: **AppLocker** (Requer Windows 10 Enterprise ou Education)

##### Caminho:
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        AppLocker > Regras de Executáveis
```

##### Ações:
- Criar regras **negando execução** para usuários padrão nos diretórios mencionados
- Criar regras "permitir" apenas para diretórios controlados (ex: `C:\Program Files`, `C:\Windows`)

---

#### ✅ Boas práticas
- Aplique primeiro em ambiente de testes — o impacto pode ser significativo em sistemas com instaladores ou apps temporários
- Combine com auditoria ativada antes de aplicar em modo "bloqueio"
- Reforce a medida com antivírus e monitoramento de eventos

---

#### 💡 Observações
- SRP funciona em versões Pro, AppLocker exige Enterprise
- SRP considera caminhos literais; AppLocker é mais granular e robusto