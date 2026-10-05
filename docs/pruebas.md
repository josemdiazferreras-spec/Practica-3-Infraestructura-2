# Pruebas realizadas

1. PC-1 y PC-2 obtuvieron IP por DHCP en `10.6.93.0/25` y alcanzaron Internet con 0% de pérdida en la prueba de 4 paquetes.
2. StrongSwan estableció `CHILD_SA` con IP virtual `10.6.94.17` y selector remoto `10.6.94.10/32`.
3. Desde VPN: `10.6.94.10:3389` respondió; `10.6.94.2:443` no fue alcanzable directamente.
4. RDWeb clásico: usuario no privilegiado visualiza solo Web; usuario privilegiado visualiza Web, PuTTY y RDP.
5. RemoteApp Web abrió el Sistema de Caja por `https://10.6.94.2`.
6. RemoteApp PuTTY inició SSH al Web Server.
7. RemoteApp RDP alcanzó XRDP del Web Server y abrió sesión.
8. RD Web Client HTML5 fue instalado/publicado y respetó los mismos permisos por rol.
9. FortiGate final quedó sin políticas `TEMP-*` y con Implicit Deny.
10. Switch confirmó Port Security y puertos de VLAN 999 administrativamente apagados.
