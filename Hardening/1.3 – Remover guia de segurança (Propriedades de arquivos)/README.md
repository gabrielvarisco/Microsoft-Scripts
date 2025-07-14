### 1.3 🔒 Remover guia de segurança (Propriedades de arquivos)

#### 🎯 Objetivo
Ocultar a aba "Segurança" das propriedades de arquivos e pastas no Explorer, impedindo que usuários editem permissões NTFS diretamente pela interface gráfica.

---

#### 🧭 Caminho da GPO
```
Configuração do Usuário >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Explorador de Arquivos >
          Remover guia segurança
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**

---

#### 📝 Descrição técnica
Quando essa diretiva está habilitada, a aba "Segurança" não é exibida nas janelas de propriedades de arquivos/pastas. Isso evita alterações diretas em permissões NTFS por usuários sem conhecimento técnico ou com más intenções.

---

#### ✅ Boas práticas
- Aplicar em estações de trabalho com usuários padrão ou com acesso limitado
- Combinar com restrições de acesso a ferramentas administrativas e MMCs
- Aplique preferencialmente via GPO de **Configuração de Usuário**, não de Computador

---

#### 💡 Observações
- Não impede alterações por linha de comando (ex: `icacls`, `takeown`) — para isso, usar Software Restriction Policies ou AppLocker
- Em servidores de arquivos ou terminais administrativos, pode ser necessário manter a aba habilitada