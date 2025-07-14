### 1.24 🔒 Habilitar LSA Protection (proteção ao LSASS)

#### 🎯 Objetivo
Ativar a proteção de processos do LSASS (Local Security Authority Subsystem Service), impedindo que ferramentas maliciosas acessem sua memória para capturar credenciais (ex: Mimikatz).

---

#### 🛠️ Caminho no Registro
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa
Valor: RunAsPPL (REG_DWORD) = 1
```

---

#### 📦 Aplicação via GPO
Usar **Preferência de Registro** para aplicar a chave acima.

---

#### 📝 Descrição técnica
A proteção LSA (LSA Protection ou LSA-PPL) isola o processo LSASS como um "processo protegido" (Protected Process Light), fazendo com que apenas componentes do sistema assinado possam interagir com ele, bloqueando injeção de código e leitura de memória.

---

#### ✅ Boas práticas
- Aplicar em controladores de domínio, servidores de aplicação e estações com privilégios elevados
- Verificar compatibilidade com software antivírus e EDR — alguns precisam ser atualizados ou configurados para permitir LSA-PPL

---

#### 💡 Observações
- Requer Windows 8.1, Windows Server 2012 R2 ou superior
- Pode ser validado com o comando:
```
fltmc | findstr lsass
```
- Se protegido, o resultado deve indicar: `lsass.exe (Protected Process)`