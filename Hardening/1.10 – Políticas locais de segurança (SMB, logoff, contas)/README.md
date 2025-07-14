### 1.10 🔒 Políticas locais de segurança (SMB, logoff, contas)

#### 🎯 Objetivo
Aplicar ajustes de segurança críticos no comportamento padrão do Windows, como forçar logoff ao fim do horário permitido, desabilitar contas inseguras e configurar assinatura obrigatória para comunicação SMB.

---

#### 🧭 Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Políticas Locais >
          Opções de Segurança
```

---

#### ⚙️ Parâmetros recomendados

| Política                                                                 | Valor Recomendado |
|--------------------------------------------------------------------------|--------------------|
| Cliente de rede Microsoft: assinar digitalmente a comunicação (sempre)  | Habilitado         |
| Cliente de rede Microsoft: assinar digitalmente a comunicação (se o servidor concordar) | Desativado         |
| Servidor de rede Microsoft: assinar digitalmente a comunicação (sempre) | Habilitado         |
| Servidor de rede Microsoft: assinar digitalmente a comunicação (se o cliente concordar) | Desativado         |
| Contas: status da conta de convidado                                    | Desativado         |
| Segurança de rede: forçar logoff quando o horário de logon terminar     | Habilitado         |

---

#### 📝 Descrição técnica
Essas políticas fortalecem a segurança da autenticação em redes Windows e impedem o uso de contas sem senha ou horários fora da política da organização. A assinatura digital SMB é essencial para evitar ataques do tipo "man-in-the-middle" em sessões de rede.

---

#### ✅ Boas práticas
- Aplicar em estações e servidores do domínio
- Avaliar compatibilidade com sistemas legados (ex: aplicações que usam SMB sem assinatura)
- Documentar eventuais exceções para impressoras ou dispositivos antigos

---

#### 💡 Observações
- Exija assinatura SMB em ambos os lados: cliente e servidor
- A conta “Guest” é um risco e deve permanecer desativada
- A política de logoff por horário depende da configuração de horário de logon nas propriedades da conta no AD