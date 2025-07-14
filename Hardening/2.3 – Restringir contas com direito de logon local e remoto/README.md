### 2.3 🔐 Restringir contas com direito de logon local e remoto

#### 🎯 Objetivo
Controlar quais usuários ou grupos podem realizar logon localmente ou via RDP (logon remoto), evitando que contas comuns tenham acesso a servidores ou estações não autorizadas.

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Atribuição de Direitos de Usuário
```

---

#### ⚙️ Políticas recomendadas

1. **Permitir logon local**
   - Atribuir apenas a grupos como: `Administradores`, `Usuários locais autorizados`
   - Remover: `Usuários`, `Usuários do domínio` (quando necessário)

2. **Permitir logon através dos Serviços de Área de Trabalho Remota**
   - Incluir apenas: `Administradores`, `Usuários de RDP autorizados`
   - Remover grupos genéricos como `Users`, `Domain Users`

3. **Negar logon local**
   - Adicionar grupos como: `Guests`, contas de serviço não interativas

4. **Negar logon via Serviços de Área de Trabalho Remota**
   - Adicionar: contas administrativas delegadas, operadores de backup, ou qualquer grupo que **não deva** acessar via RDP

---

#### 📝 Descrição técnica
Essas diretivas definem os direitos de logon concedidos ou negados pelo sistema operacional. Podem ser aplicadas por GPO vinculada a OUs de estações ou servidores.

---

#### ✅ Boas práticas
- Auditar quais grupos e contas possuem esses direitos em servidores críticos
- Evitar uso de `Domain Admins` em ambientes de uso cotidiano
- Usar grupos dedicados para acesso RDP e delegar via GPO controlada

---

#### 💡 Observações
- Um logon negado por essas políticas resulta em Event ID `4625` com código de falha `0x569`
- Combine com AppLocker, controle de sessão e alertas de uso de conta privilegiada