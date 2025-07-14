### 2.5 🔒 Desabilitar ou renomear contas padrão (Administrator e Guest)

#### 🎯 Objetivo
Reduzir a exposição de contas bem conhecidas como `Administrator` e `Guest`, dificultando ataques baseados em dicionário ou tentativa de enumeração.

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Políticas Locais >
          Opções de Segurança
```

---

#### ⚙️ Parâmetros recomendados:

- **Conta de convidado: status da conta** → **Desabilitado**
- **Conta de administrador: status da conta** → **Habilitado**
- **Renomear a conta de administrador** → Definir um nome genérico (ex: `adm-sistema`, `svc-root`)
- **Renomear a conta de convidado** → Definir nome aleatório, mesmo que esteja desativada

---

#### 📝 Descrição técnica
O Windows cria por padrão as contas `Administrator` e `Guest`. Mesmo que desativadas, elas continuam visíveis por ferramentas de enumeração. Renomear e desativar essas contas dificulta ataques automatizados.

---

#### ✅ Boas práticas
- Após renomear a conta Administrator, criar outra conta com nome `Administrator` mas sem privilégios (honeypot)
- Monitorar tentativas de logon com contas renomeadas
- Desabilitar também contas locais padrão via GPO em estações e servidores

---

#### 💡 Observações
- Não se esqueça de ajustar scripts e serviços que eventualmente usem essas contas
- Combine com política de bloqueio de conta após tentativas falhas (ver item 2.6)