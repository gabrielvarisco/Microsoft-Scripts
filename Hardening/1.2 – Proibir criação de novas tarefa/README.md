### 1.2 🔒 Proibir criação de novas tarefas (Agendador de Tarefas)

#### 🎯 Objetivo
Impedir que usuários criem tarefas agendadas no Windows, uma técnica frequentemente utilizada por malwares e scripts persistentes para execução automática de cargas maliciosas.

---

#### 🧭 Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Agendador de Tarefas >
          Proibir criação de novas tarefas
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**

---

#### 📝 Descrição técnica
Essa diretiva bloqueia a criação de novas tarefas no **Task Scheduler** (Agendador de Tarefas), tanto via interface gráfica quanto via linha de comando (ex: `schtasks.exe`). É uma forma eficaz de evitar que usuários comuns ou scripts automatizados adicionem tarefas para manter persistência no sistema.

---

#### ✅ Boas práticas
- Aplicar em **workstations e servidores que não dependam de tarefas personalizadas criadas localmente**
- Validar antes em ambientes onde softwares de terceiros utilizem agendamentos (ex: backups, monitoramento)

---

#### 💡 Observações
- Essa política **não remove tarefas existentes**, apenas bloqueia novas criações
- Para ambientes mais restritivos, combine com:
  - Bloqueio de `schtasks.exe` via Software Restriction Policy ou AppLocker
  - Monitoramento do log de eventos `Microsoft-Windows-TaskScheduler/Operational`