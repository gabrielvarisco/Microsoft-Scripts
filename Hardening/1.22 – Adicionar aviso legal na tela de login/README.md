### 1.22 🛑 Adicionar aviso legal na tela de login

#### 🎯 Objetivo
Exibir um aviso legal antes da autenticação do usuário no sistema, informando que o acesso é restrito e sujeito a monitoramento. Essa prática é comum em ambientes corporativos e contribui para conformidade com normas de segurança e auditoria.

---

#### 🧭 Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Políticas Locais >
          Opções de Segurança >
            Mensagem de texto para usuários que tentarem fazer logon
            Título da mensagem para usuários que tentarem fazer logon
```

---

#### ⚙️ Ação
- Definir **Título da mensagem**:  
  Exemplo: `Aviso de Segurança`
- Definir **Mensagem de texto**:  
  Exemplo:
  ```
  Este sistema é de uso exclusivo autorizado. Todas as atividades podem ser monitoradas e registradas. O uso não autorizado é proibido e pode resultar em medidas disciplinares e/ou legais.
  ```

---

#### 📝 Descrição técnica
Essas políticas fazem com que o Windows exiba um alerta com botão "OK" antes da tela de login. Elas servem como dissuasão e aviso legal para responsabilização em caso de uso indevido.

---

#### ✅ Boas práticas
- Personalizar o texto de acordo com a política da empresa
- Usar linguagem formal, objetiva e juridicamente válida
- Aplicar tanto em servidores quanto em estações de trabalho

---

#### 💡 Observações
- Não impede o login — apenas informa o usuário
- Não substitui controles técnicos como bloqueio, autenticação forte ou auditoria