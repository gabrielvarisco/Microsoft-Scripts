### 1.9 🔒 Políticas de restrição de software (SRP) por hash, caminho ou zona

#### 🎯 Objetivo
Controlar a execução de softwares no sistema com base em regras específicas, prevenindo a inicialização de programas não autorizados por meio de caminhos, hashes ou zonas de segurança.

---

#### 🧭 Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Políticas de Restrição de Software >
          Regras Adicionais
```

---

#### ⚙️ Tipos de regras disponíveis

- **Por Caminho**: nega execução em diretórios (ex: `%APPDATA%\*.exe`)
- **Por Hash de Arquivo**: impede execução de arquivos específicos por sua impressão digital
- **Por Certificado**: permite ou bloqueia com base no emissor do software
- **Por Zona de Internet**: impede execução de arquivos oriundos de zonas como "Internet" ou "Intranet"

---

#### 🛠️ Exemplo de configuração

1. Criar nova política de restrição de software
2. Criar regras como:
   - Caminho: `%APPDATA%\*.exe` → **Não permitido**
   - Hash: adicionar hash de arquivos como `powershell.exe`, `tor.exe`, etc.
   - Zona de Internet: **Não permitir execução** de arquivos marcados como "Internet Zone"

---

#### ✅ Boas práticas
- Comece em modo de **auditoria** para verificar impacto antes de aplicar bloqueio real
- Combine com:
  - Restrições de execução por pasta (item 1.8)
  - Regras no AppLocker (se disponível)
- Documente exceções e aplicações que exigem execução em locais alternativos

---

#### 💡 Observações
- SRP é compatível com Windows 10 Pro e Server Standard
- AppLocker é mais moderno e granular, porém exige Enterprise ou Education
- SRP não impede execução de scripts (`.ps1`, `.vbs`) — combine com restrição de hosts como `wscript.exe`, `powershell.exe`