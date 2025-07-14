### 1.29 🔒 Impedir montagem de VHDs e ISOs por usuários não administradores

#### 🎯 Objetivo
Evitar que usuários montem arquivos `.iso`, `.vhd`, `.vhdx` ou `.img` como unidades virtuais, prevenindo a execução de softwares não autorizados ou a leitura de conteúdos restritos.

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Gerenciamento de Disco >
          Impedir montagem automática de volumes de imagens de disco
```

- Definir como: **Habilitado**

---

#### 📝 Descrição técnica
Essa configuração bloqueia a capacidade do sistema de montar arquivos de imagem virtual como volumes lógicos, evitando que usuários explorem discos virtuais externos ou bypass de restrições via `.iso` ou `.vhd`.

---

#### ✅ Boas práticas
- Aplicar em estações de trabalho padrão
- Usar em conjunto com bloqueios de unidades removíveis e restrições de execução (itens 1.11 e 1.8)
- Avaliar exceções em ambientes de desenvolvimento ou testes

---

#### 💡 Observações
- Não impede a cópia ou armazenamento de arquivos `.iso` ou `.vhd`, apenas sua montagem como volumes
- Reforçar com AppLocker ou SRP para controle de execução dentro de imagens montadas manualmente