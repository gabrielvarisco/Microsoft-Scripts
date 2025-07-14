### 1.7 🔒 Restringir execução de aplicativos específicos

#### 🎯 Objetivo
Impedir a execução de aplicativos indesejados ou perigosos, como navegadores alternativos, scripts, ferramentas administrativas ou de segurança não autorizadas, reforçando o controle sobre o ambiente.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Não executar aplicativos do Windows especificados
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**
- Clicar em “Mostrar...” e inserir os executáveis a serem bloqueados, um por linha.  
  Exemplo:
  ```
  powershell.exe
  cmd.exe
  regedit.exe
  mshta.exe
  wscript.exe
  cscript.exe
  ```
---

#### 📝 Descrição técnica
Essa diretiva impede que usuários executem arquivos específicos pelo nome do executável. Ao tentar iniciar o programa, será exibida uma mensagem de que a política impede sua execução.

---

#### ✅ Boas práticas
- Combine com outras técnicas como AppLocker, Software Restriction Policy ou bloqueios por hash
- Aplicar para usuários padrão — usuários administrativos devem ser avaliados caso utilizem ferramentas legítimas
- Avalie bloqueio de navegadores alternativos como `chrome.exe` ou `firefox.exe` se for necessário padronização

---

#### 💡 Observações
- Esta política atua somente no escopo de usuário, e **não é eficaz contra execução indireta ou renomeada** (ex: `copy cmd.exe calc.exe`)
- Não impede scripts executados por interpretadores que estejam fora da lista (ex: Python, Ruby, etc.)
- Use Software Restriction Policy ou AppLocker para controle mais robusto