### 1.23 🔒 Desabilitar Cortana, sugestões e telemetria

#### 🎯 Objetivo
Reduzir a exposição de dados e aumentar a privacidade desativando funcionalidades como Cortana, sugestões personalizadas e coleta de dados de diagnóstico (telemetria).

---

#### 🧭 Caminho da GPO

##### 1. Desabilitar Cortana
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Pesquisa >
          Permitir Cortana → Desabilitado
```

##### 2. Desabilitar sugestões na tela de bloqueio e menu iniciar
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Iniciar Menu e Barra de Tarefas >
        Desativar sugestões da tela de bloqueio → Habilitado
        Desligar sugestões na inicialização → Habilitado
```

##### 3. Reduzir nível de telemetria
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Coleta de Dados e Versões de Prévia >
          Permitir Telemetria → Desabilitado ou Básico (segundo versão do Windows)
```

---

#### 📝 Descrição técnica
Essas configurações impedem que o Windows envie dados de uso à Microsoft, desabilitam a assistente digital Cortana e eliminam distrações e sugestões baseadas em comportamento do usuário.

---

#### ✅ Boas práticas
- Aplicar em ambientes corporativos onde privacidade, controle e performance são prioridade
- Combinar com controle de updates e desativação de serviços que acessam a internet sem necessidade

---

#### 💡 Observações
- Algumas opções podem variar de nome ou disponibilidade conforme a versão do Windows 10/11
- Cortana foi removida nativamente em algumas versões recentes, mas a política ainda é útil para garantir desativação em builds anteriores