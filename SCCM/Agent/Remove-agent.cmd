ccmsetup.exe /uninstall
Remove "C:\Windows\ccmsetup"
Remove "C:\Windows\CCM"
Remove "C:\Windows\system32\CCM"
Delete "C:\windows\smscfg.ini
REG DELETE HKLM\software\Microsoft\ccm /f
REG DELETE HKLM\software\Microsoft\CCMSETUP /f
REG DELETE HKLM\software\Microsoft\SMS\
REG DELETE HKLM\software\Microsoft\Systemcertificates\SMS\Certificates /f