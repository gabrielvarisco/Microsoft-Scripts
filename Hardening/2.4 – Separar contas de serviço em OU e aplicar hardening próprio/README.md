### 2.4 🧩 Separar contas de serviço em OU dedicada e aplicar hardening próprio

#### 🎯 Objetivo
Melhorar a segurança e a governança das contas de serviço no domínio, isolando-as em uma OU específica para facilitar aplicação de políticas de segurança, controle de senha, auditoria e visibilidade.

---

#### 🛠️ Procedimento sugerido

1. Criar uma OU chamada, por exemplo: `OU=ContasServico,DC=dominio,DC=local`
2. Mover todas as contas de serviço utilizadas por aplicações e serviços
3. Criar e vincular uma GPO com configurações específicas:
   - Bloqueio de logon interativo
   - Desabilitar troca de senha
   - Habilitar auditoria de logon
   - Monitoramento de eventos (falha de login, alteração de senha, etc.)

---

#### 🧾 Configurações recomendadas (GPO):

- **Negar logon local**: incluir todas as contas de serviço
- **Negar logon via RDP**: idem
- **Permitir logon como serviço**: somente nas máquinas onde o serviço roda
- **Senha nunca expira**: avaliar risco x compatibilidade
- **Desabilitar alteração de senha pela conta**: via atributo AD `User Cannot Change Password`

---

#### ✅ Boas práticas
- Documentar cada conta de serviço: uso, permissões, máquinas associadas
- Usar nomes padronizados (ex: `svc_appbackup`, `svc_sqlagent`)
- Monitorar e auditar logon com essas contas (Event ID 4624 / 4625)

---

#### 💡 Observações
- Avaliar uso de Group Managed Service Accounts (gMSA) quando possível
- Contas de serviço com privilégios elevados devem ser analisadas com mais critério (evitar membros de Administradores)
- Combine com regras de AppLocker, firewall e segmentação de rede