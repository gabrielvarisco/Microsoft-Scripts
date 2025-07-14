### 1.6 🔒 Bloquear descoberta de computadores próximos a mim

#### 🎯 Objetivo
Impedir que o sistema utilize a funcionalidade de descoberta automática de dispositivos e compartilhamentos em redes locais, reduzindo a exposição e os vetores de movimentação lateral.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Explorador de Arquivos >
        Não usar computadores próximos a mim em locais de rede
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**

---

#### 📝 Descrição técnica
Essa política desativa a funcionalidade de “computadores próximos a mim” (Near Me) no Windows Explorer, que normalmente exibe dispositivos e compartilhamentos em redes de broadcast ou com suporte a SSDP/WS-Discovery.

---

#### ✅ Boas práticas
- Aplicar em ambientes corporativos onde o uso de rede ponto a ponto (P2P) não é necessário
- Complementar com a desativação da descoberta de rede e compartilhamento de arquivos via GPO ou firewall

---

#### 💡 Observações
- Pode ser combinada com o bloqueio de serviços como:
  - `Function Discovery Provider Host`
  - `Function Discovery Resource Publication`
- Recomendado para redes corporativas com VLANs isoladas e segmentação de segurança