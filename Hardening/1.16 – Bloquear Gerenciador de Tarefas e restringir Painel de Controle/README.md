### 1.16 🔒 Bloquear Gerenciador de Tarefas e restringir Painel de Controle

#### 🎯 Objetivo
Impedir que usuários finais acessem o Gerenciador de Tarefas e limitem as opções disponíveis no Painel de Controle, reduzindo a exposição a alterações indevidas no sistema.

---

#### 🛠️ Parte 1 – Bloquear Gerenciador de Tarefas

##### Caminho da GPO:
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Ctrl+Alt+Del >
          Remover Gerenciador de Tarefas
```

- Definir como: **Habilitado**

---

#### 🛠️ Parte 2 – Restringir Painel de Controle

##### Caminho da GPO:
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Painel de Controle >
        Proibir acesso ao Painel de Controle e à configuração do computador
```

- Definir como: **Habilitado**

##### OU (opcional):
```
Mostrar apenas itens especificados no Painel de Controle
```

- Definir como: **Habilitado**
- Adicionar apenas os itens permitidos (ex: "Programas e Recursos", "Idioma", etc.)

---

#### 📝 Descrição técnica
Essas políticas restringem acesso a ferramentas administrativas básicas que, se utilizadas por usuários não autorizados, podem comprometer o funcionamento do sistema, encerrar processos importantes ou modificar configurações sensíveis.

---

#### ✅ Boas práticas
- Aplicar para usuários padrão e ambientes de terminal compartilhado (RDS)
- Avaliar o uso em estações de atendimento, educação ou quiosques
- Pode ser combinada com AppLocker ou Shell Restriction para lockdown completo

---

#### 💡 Observações
- A restrição do Painel de Controle não afeta diretamente o acesso às Configurações do Windows (Windows 10/11); para isso, usar diretivas adicionais específicas
- Pode ser revertido temporariamente para suporte remoto se necessário