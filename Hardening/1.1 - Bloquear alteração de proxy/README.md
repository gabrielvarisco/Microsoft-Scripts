### 1.1 🔒 Bloquear alteração de proxy

#### 🎯 Objetivo
Impedir que usuários modifiquem manualmente as configurações de proxy do navegador, especialmente em ambientes com proxy corporativo obrigatório ou filtragem web.

---

#### 🧭 Caminho da GPO
```
Configuração do Computador >
  Políticas >
    Modelos Administrativos >
      Componentes do Windows >
        Internet Explorer >
          Impedir alteração de configurações de proxy
```

---

#### ⚙️ Ação
- Definir como: **Habilitado**

---

#### 📝 Descrição técnica
Essa política impede que usuários alterem manualmente os parâmetros de proxy dentro do Internet Explorer (e por herança, também afeta Edge/WinHTTP em sistemas mais antigos). Com isso, as configurações definidas por GPO (como o uso de PAC ou servidor fixo) não podem ser sobrescritas.

---

#### ✅ Boas práticas
- Combine com a GPO de definição de proxy (ex: definir `.pac`, servidor fixo ou WPAD)
- Aplicável a estações Windows 10, 11 e servidores com IE/Edge herdado
- Não se aplica ao Google Chrome ou Firefox — nesses casos, use GPOs próprias ou políticas ADMX dedicadas

---

#### 💡 Observações
- Em ambientes com controle de navegação, recomenda-se bloquear qualquer tentativa de bypass de proxy (ex: VPNs, proxy alternativo via navegador)
- Pode ser combinada com Software Restriction Policy ou AppLocker para evitar execução de navegadores não autorizados