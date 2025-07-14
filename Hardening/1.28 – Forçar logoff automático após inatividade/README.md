### 1.28 ⏲️ Forçar logoff automático após inatividade

#### 🎯 Objetivo
Garantir que sessões de usuário sejam encerradas automaticamente após um período de inatividade, mitigando riscos de sessões abertas e desatendidas.

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Diretivas Locais >
          Opções de Segurança >
            Segurança de rede: Forçar logoff quando o horário de logon expirar
```

- Definir como: **Habilitado**

---

#### 🛠️ Alternativa via tempo de inatividade com script (opcional)

Crie um script de logoff automático e atribua via Agendador de Tarefas com gatilho de ociosidade.

Exemplo de comando:
```cmd
logoff %sessionname%
```

---

#### 📝 Descrição técnica
Ao habilitar essa política, o sistema encerrará automaticamente sessões que permanecerem abertas após o horário de logon permitido (conforme definido nas propriedades da conta de usuário no AD).

---

#### ✅ Boas práticas
- Usar em conjunto com:
  - Restrição de horário de logon (ver item 2.2)
  - Políticas de tempo limite de RDP (item 1.12)
- Aplicar em terminais públicos, servidores RDS e ambientes com alta rotação de usuários

---

#### 💡 Observações
- A política depende da configuração de horário de logon por usuário (Active Directory)
- Para ambientes que exigem logout por inatividade sem uso de AD, utilizar scripts de monitoramento de sessão ou soluções de terceiros