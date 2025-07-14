### 1.5 🔒 Bloquear acesso ao prompt de comando (CMD)

#### 🎯 Objetivo
Impedir que usuários utilizem o prompt de comando (`cmd.exe`), que pode ser explorado para executar comandos administrativos, alterar configurações do sistema ou iniciar scripts maliciosos.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Impedir acesso ao prompt de comando
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**
- Desativar o processamento de scripts do prompt de comando: **Sim** (recomendado)

---

#### 📝 Descrição técnica
Essa política impede a abertura do `cmd.exe` e também pode bloquear a execução de scripts `.bat` e `.cmd`, tornando o ambiente mais protegido contra automações maliciosas e persistência por script.

---

#### ✅ Boas práticas
- Aplicar em estações de usuários padrão
- Avaliar impacto em scripts de login ou ferramentas legítimas
- Criar exceções por grupo de segurança se necessário

---

#### 💡 Observações
- Combine com bloqueio de PowerShell para maior eficácia
- Usuários com acesso via atalho, agendador de tarefas ou exploração de permissões ainda podem tentar execução indireta — considerar uso de AppLocker ou SRP para bloqueios robustos