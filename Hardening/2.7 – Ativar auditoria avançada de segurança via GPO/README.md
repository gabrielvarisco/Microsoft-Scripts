### 2.7 📊 Ativar auditoria avançada de segurança via GPO

#### 🎯 Objetivo
Ampliar a visibilidade sobre eventos de segurança críticos, como logon, acesso a objetos, alterações de conta e uso de privilégios, habilitando a Auditoria Avançada (Advanced Audit Policy).

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Política Avançada de Auditoria >
          Configuração de Política de Auditoria
```

---

#### ⚙️ Categorias essenciais recomendadas

| Categoria                           | Subcategorias recomendadas           |
|------------------------------------|--------------------------------------|
| Logon/Logoff                       | Logon, Logoff, Bloqueio/Desbloqueio  |
| Acesso a Objeto                    | Acesso a arquivos e pastas           |
| Alterações de Conta                | Conta de usuário, grupo, SID history |
| Alterações de Política             | Alterações de GPO, permissões        |
| Uso de Privilégio                  | Elevação de privilégios, backup      |
| Serviços de Diretório              | Acesso a objetos no AD               |
| Sistema                            | Inicialização, desligamento, drivers |
| Processos                          | Criação e finalização de processos   |

---

#### ✅ Boas práticas
- Ativar somente o necessário para evitar excesso de logs
- Integrar com SIEM ou Defender for Endpoint para correlação e alertas
- Criar baseline de eventos esperados e monitorar desvios

---

#### 💡 Observações
- Substitui a “Política de auditoria padrão” (não use ambas ao mesmo tempo)
- Aplicável a Windows 7/Server 2008 R2 em diante (ideal em Windows 10/11 e Server 2016+)
- Exige configuração adequada de SACLs para auditar objetos específicos (ex: arquivos, OU, objetos AD)