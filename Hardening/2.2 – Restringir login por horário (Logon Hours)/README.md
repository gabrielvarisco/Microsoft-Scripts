### 2.2 🕒 Restringir login por horário (Logon Hours)

#### 🎯 Objetivo
Controlar os horários nos quais uma conta de usuário pode realizar logon no domínio, limitando o acesso fora do expediente e reduzindo o risco de acesso indevido.

---

#### 🛠️ Caminho no Active Directory (via dsa.msc)

1. Abrir `Active Directory Users and Computers`
2. Localizar o usuário desejado
3. Ir até:
   ```
   Propriedades > Conta > Horário de logon...
   ```
4. Marcar os **dias e horários permitidos** para logon
   - Exemplo: permitir somente de segunda a sexta, das 08h às 18h

---

#### 📝 Descrição técnica
Essa configuração armazena a matriz de horários no atributo `logonHours` do usuário. Qualquer tentativa de logon fora do período permitido será negada pelo DC.

---

#### ✅ Boas práticas
- Utilizar em conjunto com a política:
  ```
  Segurança de rede: Forçar logoff quando o horário de logon expirar
  ```
- Aplicar para usuários com acesso sensível ou estações compartilhadas
- Avaliar exceções em ambientes com jornadas flexíveis ou escalas

---

#### 💡 Observações
- O horário é interpretado com base no fuso horário do **controlador de domínio**
- Para usuários com múltiplas sessões (RDP, VPN, etc.), o comportamento pode variar — ideal testar
- Pode ser auditado via Event ID `4625` com código de falha `Account logon time restriction violation`