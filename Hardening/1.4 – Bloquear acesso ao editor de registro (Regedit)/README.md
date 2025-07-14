### 1.4 🔒 Bloquear acesso ao editor de registro (Regedit)

#### 🎯 Objetivo
Impedir que usuários acessem ou modifiquem o registro do Windows utilizando o editor gráfico `regedit.exe`, prevenindo alterações manuais em configurações críticas do sistema.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Impedir acesso a ferramentas de edição do registro
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**
- Desativar execução em modo silencioso do regedit: **Sim**

---

#### 📝 Descrição técnica
Esta política bloqueia a execução do Editor do Registro (`regedit.exe`) e exibe uma mensagem de erro ao tentar abri-lo. Quando a opção de bloqueio silencioso está desativada, o usuário verá uma notificação de que o acesso foi restrito por política.

---

#### ✅ Boas práticas
- Aplicar a todos os usuários padrão
- Administradores podem ser isentos via grupo de segurança e filtro de GPO
- Combine com restrição ao prompt de comando e PowerShell para maior controle

---

#### 💡 Observações
- Não impede acesso ao registro via scripts ou ferramentas de terceiros (ex: `reg.exe`, PowerShell)
- Para ambientes altamente controlados, combine com:
  - AppLocker/Software Restriction Policy
  - Antivírus com controle de comportamento (Ex: Defender Exploit Guard)