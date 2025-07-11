\# remove-sccm-agent.cmd



Script em lote (.cmd) para desinstalar completamente o agente do Microsoft SCCM (System Center Configuration Manager) em estações Windows.



---



\## 🎯 Objetivo



Realizar a remoção \*\*completa e forçada\*\* do agente SCCM, incluindo:

\- Desinstalação via `ccmsetup.exe`

\- Exclusão de pastas e arquivos residuais

\- Remoção de chaves de registro associadas ao SCCM



Ideal para reconfiguração, solução de problemas ou reimagens de máquinas.



---



\## 📦 Requisitos



\- Executar como \*\*Administrador\*\*

\- Sistema operacional Windows com agente SCCM instalado

\- O executável `ccmsetup.exe` deve estar no PATH (ou use o caminho completo)



---



\## 🚀 Como usar



1\. Clique com o botão direito no `remove-sccm-agent.cmd` e escolha \*\*"Executar como administrador"\*\*  

2\. Aguarde a execução completa — pode levar alguns minutos  

3\. Reinicie o computador, se necessário



---



\## ⚠️ O que o script faz



\- Roda o comando:

&nbsp; ```cmd

&nbsp; ccmsetup.exe /uninstall

Remove as pastas:

C:\\Windows\\CCMSetup

C:\\Windows\\CCM

C:\\Windows\\System32\\CCM



Exclui o arquivo:

C:\\Windows\\smscfg.ini



Apaga as chaves de registro:

HKLM\\Software\\Microsoft\\CCM

HKLM\\Software\\Microsoft\\CCMSetup

HKLM\\Software\\Microsoft\\SMS

HKLM\\Software\\Microsoft\\SystemCertificates\\SMS\\Certificates



🔒 Importante

O script deve ser executado com privilégios elevados (admin).

Não há confirmação para exclusões — use com cautela.

Pode ser adaptado para uso via GPO, MDT ou ferramenta de automação.



