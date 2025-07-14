### 1.30 🛑 Desabilitar boot por USB e PXE via GPO ou BIOS/UEFI

#### 🎯 Objetivo
Impedir que usuários ou invasores iniciem o sistema a partir de mídias externas (pendrives, discos, rede PXE), protegendo contra técnicas de bypass de senha, boot externo ou acesso offline ao disco.

---

#### 🛠️ Opção 1 – BIOS/UEFI

Ajuste direto no firmware da máquina (preferencial para segurança):

- Desabilitar:
  - Boot por USB
  - Boot por CD/DVD
  - Boot por Rede (PXE)
- Reordenar boot para que o disco interno seja o único habilitado
- Proteger BIOS/UEFI com senha

---

#### 🛠️ Opção 2 – GPO para impedir acesso a mídia de boot

```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Acesso de Armazenamento Removível
```

- Bloquear leitura/gravação de dispositivos removíveis:
  - Discos removíveis: negar acesso de leitura
  - Discos removíveis: negar acesso de gravação

---

#### ✅ Boas práticas
- Padronizar configurações de BIOS via ferramenta de gerenciamento (SCCM, Intune, scripts de fabricante)
- Aplicar senha de BIOS/UEFI robusta e auditar alterações
- Ativar Secure Boot e BitLocker em conjunto para máxima proteção

---

#### 💡 Observações
- Essa configuração não impede fisicamente que alguém inicie o boot por outro sistema, se a BIOS estiver desbloqueada
- O uso de BitLocker com chave protegida por TPM e PIN ajuda a reforçar segurança contra boot externo