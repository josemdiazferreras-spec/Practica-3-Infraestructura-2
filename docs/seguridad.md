# Controles de seguridad

- FortiGate segmenta WEB-LAN y JUMP-LAN.
- Jump → Web limitado a HTTPS/443, SSH/22 y RDP/3389.
- VPN con split tunnel/selectores hacia `10.6.94.10/32`; no existe política VPN → Web Server.
- RemoteApps separadas por grupos de AD: NoPriv = Web; Priv = Web + PuTTY + RDP.
- Switch: VLAN 10 para usuarios, VLAN 999 para puertos no usados, shutdown en puertos no usados, Port Security sticky, máximo 1 MAC, `restrict`, PortFast y BPDU Guard.
- HTTP/HTTPS de administración del switch deshabilitados.
- Reglas/VIP temporales de instalación eliminados al finalizar.
- Secretos deliberadamente excluidos del repositorio.

## Limitaciones de laboratorio

FortiGate 7.0.9 obligó a usar IKEv1/DES/SHA1 para compatibilidad del ejercicio; no es una recomendación de producción. AD DS y RDS conviven en el mismo Windows Server únicamente por alcance de laboratorio.
