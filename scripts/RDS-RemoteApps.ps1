# Infraestructura 2 - RDS / RemoteApps
# Ejecutar como administrador en el entorno de laboratorio lab.local.
# Este script documenta los comandos principales; no incluye contraseñas.

Import-Module RemoteDesktop

# Colección
New-RDSessionCollection -CollectionName "RemoteApps" `
  -SessionHost "JUMP-SERVER.lab.local" `
  -ConnectionBroker "JUMP-SERVER.lab.local"

# Aplicaciones
New-RDRemoteApp -CollectionName "RemoteApps" -Alias "Web" -DisplayName "Web" `
  -FilePath "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
New-RDRemoteApp -CollectionName "RemoteApps" -Alias "PuTTY" -DisplayName "PuTTY" `
  -FilePath "C:\Program Files\PuTTY\putty.exe"
New-RDRemoteApp -CollectionName "RemoteApps" -Alias "RDP" -DisplayName "RDP" `
  -FilePath "C:\Windows\System32\mstsc.exe"

# Control de acceso por grupos
Set-RDSessionCollectionConfiguration -CollectionName "RemoteApps" `
  -UserGroup "LAB\RemoteApp-NoPriv","LAB\RemoteApp-Priv"
Set-RDRemoteApp -CollectionName "RemoteApps" -Alias "Web" `
  -UserGroups "LAB\RemoteApp-NoPriv","LAB\RemoteApp-Priv"
Set-RDRemoteApp -CollectionName "RemoteApps" -Alias "PuTTY" `
  -UserGroups "LAB\RemoteApp-Priv"
Set-RDRemoteApp -CollectionName "RemoteApps" -Alias "RDP" `
  -UserGroups "LAB\RemoteApp-Priv"

Get-RDRemoteApp -CollectionName "RemoteApps" | Select DisplayName,Alias,UserGroups
