### 1.21 🔒 Desabilitar cache de senha para login offline

#### 🎯 Objetivo
Impedir que credenciais de domínio sejam armazenadas em cache localmente, evitando que um usuário consiga se autenticar em uma máquina sem conexão com o controlador de domínio (DC), o que representa um vetor de ataque em caso de furto ou acesso físico ao dispositivo.

---

#### 🧭 Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Configurações do Windows >
      Configurações de Segurança >
        Políticas Locais >
          Opções de Segurança >
            Logon interativo: número de logons anteriores a serem armazenados
```

---

#### ⚙️ Ação
- Definir valor como: **0**

---

#### 📝 Descrição técnica
Essa diretiva controla quantas credenciais de domínio são mantidas localmente para autenticação offline. O valor padrão é 10. Reduzir para 0 impede qualquer tipo de login com credenciais em cache, exigindo sempre validação com o DC.

---

#### ✅ Boas práticas
- Aplicar em estações que **não precisam funcionar offline**
- Usar com cautela em notebooks e dispositivos móveis, onde o uso offline é comum
- Se necessário, usar valor reduzido (ex: 1 ou 2) em vez de zero absoluto

---

#### 💡 Observações
- A configuração pode causar impacto significativo se aplicada incorretamente em ambientes remotos ou móveis
- Combine com BitLocker e controle de boot para proteção em caso de furto físico