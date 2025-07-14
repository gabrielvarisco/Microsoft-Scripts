### 1.12 🔒 Definir tempo limite de sessões RDP (Área de Trabalho Remota)

#### 🎯 Objetivo
Limitar o tempo de inatividade de sessões RDP para evitar que sessões desconectadas ou ociosas fiquem ativas indefinidamente, o que representa risco de segurança e desperdício de recursos.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Serviços de Área de Trabalho Remota >
          Host da Sessão da Área de Trabalho Remota >
            Limites de tempo de sessão
```

---

#### ⚙️ Ação
Ativar as seguintes políticas com os valores recomendados:

- **Limitar tempo de sessão ativa mas inativa**: Habilitado – 15 minutos
- **Limitar tempo de sessão desconectada**: Habilitado – 1 hora
- **Finalizar sessão quando o tempo expirar**: Habilitado

---

#### 📝 Descrição técnica
Essas configurações forçam o encerramento ou desconexão de sessões RDP com base em tempo de inatividade ou desconexão. Isso ajuda a prevenir sessões esquecidas e riscos de sequestro de sessão.

---

#### ✅ Boas práticas
- Aplicar em servidores com acesso remoto frequente (RDS, jump servers, file servers)
- Ajustar os tempos com base na política da empresa e criticidade dos serviços
- Complementar com políticas de logoff automático e proteção de tela com bloqueio

---

#### 💡 Observações
- A aplicação via **Configuração do Usuário** exige que a GPO seja vinculada a uma OU com os usuários-alvo
- Pode ser auditado via log de eventos (`Microsoft-Windows-TerminalServices-LocalSessionManager`)