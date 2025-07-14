### 2.1 🔐 Restringir login a estações específicas

#### 🎯 Objetivo
Impedir que um usuário de domínio realize logon interativo em qualquer máquina da rede, restringindo-o apenas a estações específicas previamente autorizadas.

---

#### 🛠️ Caminho no Active Directory (via dsa.msc)

1. Abrir `Active Directory Users and Computers`
2. Localizar o usuário desejado
3. Ir até:
   ```
   Propriedades > Conta > Logon em...
   ```
4. Selecionar: **"Esses computadores"**
5. Adicionar os nomes das máquinas autorizadas (ex: `PC-MKT-01`, `NOTE-JOAO`)

---

#### 📝 Descrição técnica
Essa configuração armazena no atributo `userWorkstations` os nomes NETBIOS das máquinas onde o logon é permitido. Quando o usuário tenta se autenticar fora dessas estações, o logon é negado.

---

#### ✅ Boas práticas
- Utilizar para usuários administrativos ou contas sensíveis (ex: service desk, RH)
- Monitorar e revisar periodicamente a lista de estações autorizadas
- Documentar em conjunto com o controle de acesso físico e uso de multifator

---

#### 💡 Observações
- A configuração **não se aplica** a sessões RDP — apenas logon local/interativo
- Para aplicar restrições em RDP, utilizar políticas separadas (GPO, AppLocker ou firewall)