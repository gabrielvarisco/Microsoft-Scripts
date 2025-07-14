### 1.11 🔒 Bloquear uso de pendrive e dispositivos de armazenamento removível

#### 🎯 Objetivo
Impedir que usuários utilizem dispositivos USB de armazenamento, como pendrives e HDs externos, que podem ser usados para exfiltração de dados ou introdução de malware.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Acesso de armazenamento removível >
          Discos removíveis: Negar acesso de leitura
          Discos removíveis: Negar acesso de gravação
```

---

#### ⚙️ Ação
- Definir ambas como: **Habilitado**

---

#### 📝 Descrição técnica
Essas diretivas impedem que dispositivos removíveis sejam lidos ou gravados, incluindo pendrives, cartões SD, HDs externos e outros dispositivos classificados como "removíveis" pelo sistema.

---

#### ✅ Boas práticas
- Aplicar tanto no nível de **usuário** quanto de **computador**, se possível
- Considerar exceções para departamentos que precisam de acesso (TI, Suporte, Backups)
- Combine com GPOs para desativar o AutoRun e AutoPlay

---

#### 💡 Observações
- Essa política não afeta mouses, teclados ou dongles USB que não sejam de armazenamento
- Para ambientes mais controlados, considere soluções de controle de dispositivos (DLP, EDR) com base em ID de hardware (VID/PID)