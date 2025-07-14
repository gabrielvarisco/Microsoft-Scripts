### 1.13 🔒 Definir nível de criptografia para conexões RDP

#### 🎯 Objetivo
Garantir que as conexões RDP utilizem criptografia forte (nível alto), protegendo os dados transmitidos durante sessões remotas contra interceptações ou ataques man-in-the-middle.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Serviços de Área de Trabalho Remota >
          Host da Sessão da Área de Trabalho Remota >
            Segurança >
              Nível de criptografia da conexão de cliente
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**
- Selecionar nível: **Alto**

---

#### 📝 Descrição técnica
Essa configuração exige que o Host de Sessão RDP utilize criptografia de 128 bits, mesmo que o cliente ofereça suporte apenas a níveis inferiores. Isso garante confidencialidade e integridade dos dados trocados durante a sessão.

---

#### ✅ Boas práticas
- Aplicar em todos os servidores que oferecem acesso remoto
- Garantir que as estações clientes estejam atualizadas para suportar criptografia forte
- Combine com autenticação por NLA (Network Level Authentication)

---

#### 💡 Observações
- Pode impactar dispositivos legados ou clientes RDP antigos (como thin clients com RDP 6 ou inferior)
- Verifique compatibilidade antes de aplicar em ambientes heterogêneos