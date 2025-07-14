### 2.6 🔒 Aplicar política de bloqueio de conta após tentativas falhas

#### 🎯 Objetivo
Reduzir o risco de ataques de força bruta e tentativas de login não autorizadas bloqueando temporariamente contas após um número definido de falhas consecutivas.

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Políticas de Conta >
          Política de Bloqueio de Conta
```

---

#### ⚙️ Parâmetros recomendados

| Política                           | Valor sugerido   |
|------------------------------------|------------------|
| Limite de tentativas de logon inválidas | 3                |
| Duração do bloqueio da conta       | 15 minutos       |
| Redefinir a contagem após          | 15 minutos       |

---

#### 📝 Descrição técnica
Após exceder o número de tentativas de login com falha, a conta é bloqueada temporariamente, impedindo novas tentativas até o tempo configurado expirar ou o administrador desbloquear.

---

#### ✅ Boas práticas
- Aplicar especialmente em contas administrativas e sensíveis
- Monitorar eventos de bloqueio (Event ID `4740`)
- Integrar com alertas de SIEM ou Defender for Identity para detectar comportamentos suspeitos

---

#### 💡 Observações
- Configurações muito agressivas podem causar bloqueios acidentais (ex: mapeamentos de rede com senha incorreta)
- Para contas de serviço, use proteção por autenticação forte em vez de bloqueio