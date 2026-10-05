# Plan de direccionamiento

| Segmento | Red | Equipos principales |
|---|---|---|
| Usuarios VLAN 10 | 10.6.93.0/25 | R1 10.6.93.1; DHCP .10–.100 |
| ISP ↔ R1 | 200.6.93.0/30 | ISP .1; R1 .2 |
| ISP ↔ FortiGate | 200.6.93.4/30 | ISP .5; FortiGate .6 |
| WEB-LAN | 10.6.94.0/29 | FortiGate .1; Web Server .2 |
| JUMP-LAN | 10.6.94.8/29 | FortiGate .9; Jump Server .10 |
| Pool VPN | 10.6.94.16/29 | Clientes .17–.22 |

PC-1 y PC-2 reciben direcciones dinámicas de VLAN 10. En las pruebas finales quedaron en `10.6.93.10/25` y `10.6.93.11/25` respectivamente.
