Mi presento: sono Alessandro, ho recentemente completato un corso di 300 ore presso il CEFI, focalizzato sulla gestione dei sistemi e sulla sicurezza informatica.
Questo repository nasce con l'obiettivo di documentare il processo di progettazione e implementazione di una rete stratificata, 
il cui nodo centrale è una macchina virtuale Debian 13 "Trixie" (Oracle VM), configurata con funzioni di routing e NAT tramite iptables e IP forwarding.
Il progetto nasce in ambito formativo ma rappresenta un'implementazione reale e funzionante di una rete strutturata.
Il server Debian è dotato di tre interfacce (bridge + 2 LAN) e gestisce routing, NAT e assegnazione DHCP tramite server KEA.
La LAN1 (enp0s8) ospita client Linux — Fedora (10.0.10.101) e Ubuntu (10.0.10.102) — mentre la LAN2 (enp0s9)...


[![Infrastruttura di Rete](https://img.shields.io/badge/01--prova-red?style=for-the-badge)](./zaino/prova)

<kbd>[prova](./zaino/prova)</kbd> — Configurazione del router Debian 13 e server KEA.

