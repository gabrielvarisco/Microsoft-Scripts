# 🔐 Microsoft Hardening Guide

Este repositório reúne práticas recomendadas de hardening para ambientes Microsoft, com foco em configurações sem custo, utilizando GPOs, diretivas locais e boas práticas administrativas no Active Directory.

> ✅ As recomendações aqui contidas são voltadas para ambientes corporativos com domínio Active Directory, visando reduzir a superfície de ataque, prevenir movimentações laterais e endurecer estações e servidores Windows.

---

## ✅ Requisitos

- Active Directory em funcionamento
- Console de Gerenciamento de Diretiva de Grupo (GPMC)
- Acesso administrativo às GPOs
- Preferência por aplicar primeiramente em **OU de teste**

---

## 🔐 Estrutura de Hardening

### 1. GPOs Gerais de Segurança

- 1.1 Bloquear alteração de proxy
- 1.2 Proibir criação de novas tarefas
- 1.3 Remover guia de segurança do Explorer
- 1.4 Bloquear editor de registro (regedit)
- 1.5 Bloquear prompt de comando
- 1.6 Bloquear descoberta de computadores próximos
- 1.7 Restringir execução de aplicativos específicos
- 1.8 Bloquear execução em %TEMP%, %AppData%, %Downloads%
- 1.9 Políticas de restrição de software (por hash, caminho ou zona)
- 1.10 Políticas locais (ex: assinatura SMB, logoff forçado)
- 1.11 Bloquear uso de pendrive e dispositivos de armazenamento removível
- 1.12 Definir tempo limite de sessões RDP
- 1.13 Definir nível de criptografia para RDP
- 1.14 Desabilitar protocolos SSL 2.0, SSL 3.0, TLS 1.0/1.1
- 1.15 Desativar SMB 1.0
- 1.16 Bloquear Gerenciador de Tarefas e restringir Painel de Controle
- 1.17 Bloquear tráfego lateral em compartilhamentos de rede
- 1.18 Desabilitar Windows Script Host (WSH)
- 1.19 Desabilitar execução automática (AutoRun/AutoPlay)
- 1.20 Remover mapeamentos administrativos ocultos (C$, ADMIN$)
- 1.21 Desabilitar cache de senha para login offline
- 1.22 Adicionar aviso legal na tela de login
- 1.23 Desabilitar Cortana, sugestões e telemetria
- 1.24 Habilitar LSA Protection (LSASS protegido)
- 1.25 Configurar Exploit Protection via GPO
- 1.26 Habilitar Credential Guard e Device Guard (se compatível)
- 1.27 Apagar perfis de usuário locais no logoff (profile cleanup)
- 1.28 Forçar logoff automático após inatividade
- 1.29 Impedir montagem de VHDs e ISOs por usuários comuns
- 1.30 Desabilitar boot por USB e PXE via GPO ou BIOS

---

### 2. Controle de Acesso via Active Directory

- 2.1 Restringir login a estações específicas
- 2.2 Restringir login por horário (Logon Hours)
- 2.3 Restringir contas com direito de logon local e remoto
- 2.4 Separar contas de serviço em OU e aplicar hardening próprio
- 2.5 Desabilitar ou renomear contas padrão (Guest, Administrator)
- 2.6 Aplicar política de bloqueio de conta após tentativas falhas
- 2.7 Ativar auditoria avançada de segurança via GPO

---

## 🔧 Boas práticas de aplicação

- Criar GPOs específicas com nomes como `GPO - Hardening Estações`
- Criar grupo de exceção (ex: `GPO_Hardening_Excecao`) e aplicar "Deny Apply"
- Documentar caminho de cada GPO, GUID, e objetivo da configuração
- Aplicar primeiro em OU de validação para testes controlados