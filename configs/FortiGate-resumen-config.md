# FortiGate — resumen de configuración final

> Documentación sanitizada. No contiene PSK, contraseñas ni material criptográfico privado.

## Interfaces

| Interfaz | Rol | Dirección |
|---|---|---|
| port1 | WAN / ISP | 200.6.93.6/30 |
| port2 / WEB-LAN | Web Server | 10.6.94.1/29 |
| port3 / JUMP-LAN | Jump Server | 10.6.94.9/29 |

## Objetos

- `WEB-SERVER`: 10.6.94.2/32
- `JUMP-SERVER`: 10.6.94.10/32
- `VPN-REMOTE_range`: 10.6.94.17–10.6.94.22

## Políticas finales

1. `JUMP-to-WEB-ONLY`: JUMP-LAN → WEB-LAN, JUMP-SERVER → WEB-SERVER, únicamente HTTPS/443, RDP/3389 y SSH/22, NAT deshabilitado, log habilitado.
2. `vpn_VPN-REMOTE_remote_0`: VPN-REMOTE → JUMP-LAN, pool VPN → JUMP-SERVER. No existe política VPN → WEB-LAN.
3. `WEB-to-INTERNET`: WEB-LAN → port1, WEB-SERVER → Internet, NAT habilitado.
4. `Implicit Deny`: deniega el resto.

Las reglas temporales de instalación/prueba y el VIP temporal RDP fueron eliminados antes del estado final.

## VPN

VPN de acceso remoto IKEv1/XAuth. El laboratorio utilizó parámetros heredados por compatibilidad con FortiGate 7.0.9. No se publican secretos. Para producción deben utilizarse algoritmos modernos y una versión/configuración compatible con IKEv2.
