# Infraestructura 2 - RD Gateway
# Comandos documentados de la configuración final del laboratorio.
# Ejecutar como administrador. No contiene contraseñas ni claves privadas.

Import-Module RemoteDesktop

Add-RDServer -Server "JUMP-SERVER.lab.local" `
  -Role RDS-GATEWAY `
  -ConnectionBroker "JUMP-SERVER.lab.local" `
  -GatewayExternalFqdn "JUMP-SERVER.lab.local"

# Verificaciones
Get-RDDeploymentGatewayConfiguration
Get-Service TSGateway

# El certificado de laboratorio se asignó al rol RDGateway mediante
# Set-RDCertificate. El PFX temporal fue eliminado después de importarlo.
# No se incluyen contraseñas, PFX ni material criptográfico privado.
