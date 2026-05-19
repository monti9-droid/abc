#### INTERFACES
Per garantire stabilità e prevedibilità della configurazione di rete, 
resolv.conf è stato reso statico e tutte le interfacce sono state dichiarate in /etc/network/interfaces, 
sottraendole alla gestione automatica di systemd. Questo previene sovrascritture inattese dei parametri 
DNS e routing al riavvio dei servizi.

Il file resolv.conf è stato reso immutabile tramite chattr +i e configurato sin dall'inizio con il DNS 
del Domain Controller Windows (10.0.20.100), anticipando l'integrazione con Active Directory.
