Prima di procedere mi presento , mi chiamo Alessandro , e ho da poco terminato un corso di 300 ore presso il CEFI, porta furba, inerente
la gestione dei sistemi e la sicurezza informatica.

Ho creato questo file con l'intento di documentare ed eventualmente condividere la mia esperienza nella creazione di una rete stratificata avente come
server virtuale (oracle vm) una macchina Debian 13.14, con funzione di routing/NAT tramite script basato su comandi Iptables e ipv4 Forwarding.

La funzione del progetto presente è puramente didattica e ha il principale scopo nell'apprendimento e nell'approfontimento della conoscenza delle regole e 
delle procedure che determinano il funzionamento di una rete strutturata come quella che sto per elencare nelle sue caratteristiche .

Come dicevo , il primo mattone è rappresentato da un server Debian 13.14 dotato di 3 interfacce (bridge e 2 LAN) che , oltre a gestire, NAT e Routing
assegna il DHCP a tutte le macchine della rete tramite server KEA. 
La prima delle 2 lan (LAN1: enp0s8) è dedicata a client Linux, nello specifico Fedora (10.0.10.101) e Ubuntu (10.0.10.102)
La seconda invece (LAN2: enp0s9) mette in contatto 
