### 1.17 🔒 Bloquear tráfego lateral em compartilhamentos de rede

#### 🎯 Objetivo
Reduzir o risco de movimentação lateral na rede bloqueando ou limitando o acesso a compartilhamentos administrativos e a recursos compartilhados que não sejam estritamente necessários.

---

#### 🛠️ Estratégias recomendadas

##### 1. Remover mapeamentos administrativos padrão (C$, ADMIN$)

- Caminho da GPO (registro):
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters
Valor: AutoShareWks (REG_DWORD) = 0
```

##### 2. Restringir acessos a compartilhamentos via firewall do Windows:

- GPO:
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Firewall do Windows com Segurança Avançada >
          Regras de Entrada >
            Compartilhamento de Arquivo e Impressora (SMB-In)
```

- Ação: **Bloquear ou permitir apenas para IPs/autenticações autorizadas**

---

##### 3. Remover permissões de “Todos” ou “Domínio inteiro” em pastas compartilhadas:

- Acesse propriedades da pasta > Segurança
- Remova o grupo `Everyone` ou `Authenticated Users` e substitua por grupos específicos

---

#### ✅ Boas práticas
- Utilizar ACLs específicas para cada pasta compartilhada
- Aplicar segregação por VLAN para acesso a arquivos (ex: segmentar departamentos)
- Monitorar logs de acesso a compartilhamentos (`Event ID 5140`)

---

#### 💡 Observações
- Desabilitar SMB 1.0 é um pré-requisito (veja item 1.15)
- Combine com regras de AppLocker ou SRP para impedir execução de arquivos em compartilhamentos
- Ferramentas como Defender for Endpoint podem ajudar a detectar movimentação lateral por SMB