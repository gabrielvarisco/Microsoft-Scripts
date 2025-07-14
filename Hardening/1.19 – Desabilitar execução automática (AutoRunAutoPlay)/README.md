### 1.19 🔒 Desabilitar execução automática (AutoRun/AutoPlay)

#### 🎯 Objetivo
Impedir que mídias removíveis ou discos sejam executados automaticamente ao serem conectados, evitando infecções por malware que exploram o AutoRun/AutoPlay.

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Políticas do Reprodutor Automático >
          Desativar o Reprodutor Automático
```

- Definir como: **Habilitado**
- Aplicar em: **Todas as unidades**

---

#### ⚙️ Configuração adicional recomendada:
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Políticas do Reprodutor Automático >
          Reproduzir mídia automaticamente
```

- Definir como: **Desabilitado**

---

#### 📝 Descrição técnica
Essas políticas previnem que dispositivos como pendrives, CDs/DVDs, discos externos e smartphones acionem ações automáticas ao serem inseridos, como instalação de software, execução de `autorun.inf` ou abertura de arquivos.

---

#### ✅ Boas práticas
- Aplicar em todas as estações e notebooks corporativos
- Complementar com bloqueio de USB (item 1.11) e restrição de execução (item 1.8)
- Validar em ambientes que utilizam dispositivos com software embarcado via AutoRun

---

#### 💡 Observações
- Apesar de AutoRun estar desabilitado por padrão desde o Windows 7 em dispositivos USB, o AutoPlay ainda pode causar riscos
- Pode ser combinado com ferramentas de EDR para alertar tentativas de execução automática