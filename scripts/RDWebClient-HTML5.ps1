# Documentación de instalación/publicación del RD Web Client HTML5
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
# Install-Module PowerShellGet -Force -AllowClobber
# Reiniciar PowerShell e importar PowerShellGet 2.2.5 si es necesario.
# Install-Module RDWebClientManagement -Force -AcceptLicense
Import-Module RDWebClientManagement
Install-RDWebClientPackage
# Exportar certificado público del Broker y luego:
# Import-RDWebClientBrokerCert C:\RDWebBroker.cer
Publish-RDWebClientPackage -Type Production -Latest
