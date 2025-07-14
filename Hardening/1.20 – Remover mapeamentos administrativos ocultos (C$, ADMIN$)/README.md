### 1.20 🔒 Remover mapeamentos administrativos ocultos (C$, ADMIN$)

#### 🎯 Objetivo
Impedir o uso dos compartilhamentos administrativos padrão criados automaticamente pelo Windows, como `C$`, `ADMIN$` e `IPC$`, que são comumente utilizados em movimentações laterais por atacantes.

---

#### 🛠️ Método via Registro

##### Caminho da chave:
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters
```

##### Valores:
- `AutoShareWks` (REG_DWORD) = `0` → Para estações de trabalho
- `AutoShareServer` (REG_DWORD) = `0` → Para servidores

---

#### 📦 Aplicação via GPO:
Usar **Preferência de Registro** para definir os valores acima conforme o tipo da máquina.

---

#### 📝 Descrição técnica
Ao definir essas chaves com valor `0`, o sistema deixa de criar automaticamente os compartilhamentos administrativos nas unidades de disco e diretórios administrativos. Isso dificulta o uso por atacantes e ferramentas automatizadas que dependem desses pontos de entrada.

---

#### ✅ Boas práticas
- Aplicar em estações de trabalho e servidores onde não há dependência de gerenciamento remoto por compartilhamentos administrativos
- Validar impacto em softwares de backup, inventário e antivírus que possam usar esses recursos
- Complementar com o bloqueio de portas SMB (445) para hosts não autorizados

---

#### 💡 Observações
- O compartilhamento `IPC$` pode continuar disponível para funcionalidades básicas de rede; bloquear via firewall se necessário
- Reforçar com auditoria de acesso remoto e regras de AppLocker para prevenir execução a partir de compartilhamentos