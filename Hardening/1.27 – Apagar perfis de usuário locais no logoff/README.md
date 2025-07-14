### 1.27 🧹 Apagar perfis de usuário locais no logoff

#### 🎯 Objetivo
Evitar acúmulo de dados locais sensíveis em máquinas compartilhadas ou públicas, garantindo que perfis de usuário sejam automaticamente removidos após o logoff.

---

#### 🛠️ Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Sistema >
        Perfis de Usuário >
          Excluir cópias de perfis de usuário mais antigos do que um número de dias especificado
          Excluir perfis de usuário automaticamente ao reiniciar
```

---

#### ⚙️ Ações recomendadas:
- **Excluir cópias de perfis de usuário mais antigos que**: Habilitado – definir número de dias (ex: 1 ou 0)
- **Excluir perfis automaticamente ao reiniciar**: Habilitado

---

#### 📝 Descrição técnica
Essas diretivas garantem que os dados armazenados localmente nos perfis de usuários (Desktop, Documentos, cache, senhas) não permaneçam na máquina após a sessão, especialmente útil em RDS, terminais de acesso público ou laboratórios.

---

#### ✅ Boas práticas
- Aplicar em quiosques, salas de treinamento, VDI, RDS e estações multiusuário
- Avaliar impacto em sincronização de perfis, roaming profiles e cache offline
- Combinar com perfis temporários ou obrigatórios, se necessário

---

#### 💡 Observações
- O uso em notebooks pessoais ou ambientes com perfis persistentes deve ser evitado
- A política só remove perfis inativos; usuários logados não são afetados