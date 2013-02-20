StatPortal OpenData®
==========================================

ST StatPortal OpenData® è la nuova piattaforma open source per catalogare, distribuire e rendere fruibile sul web open data di varia natura in un ambiente federato.

Per maggiori informazioni: http://www.opendata.statportal.it

Contenuto del pacchetto
------------
- script: contiene script SQL da eseguire durante l'installazione.
- sp-odata: contiene i moduli Drupal 7 che è necessario installare e configurare
  	1. sp-odata/sites/all/modules/spodata: modulo Drupal StatPortal OpenData
	2. sp-odata/sites/all/themes/seven: template amministrazione
	3. sp-odata/sites/all/themes/statportal: template front-end
- servizi Java da installare e configurare:
	1. D2RQServerStarter
	2. OpenDataProxy
	3. StatPortalOpenData
- applicazioni da installare sotto Tomcat:
	1. WSOpenDataETL (il modulo ETL)
	2. ProxyServlet (il proxy verso il geoserver)
	3. OpenDataGisViewer
- librerie:
	1. OpenData1.3
	2. STRestExtensions
- README.txt: descrizione del pacchetto

Manuale di installazione
------------
Seguire il tutorial al seguente link: 
https://docs.google.com/document/d/1muaqDhZ8RSNu1Q8DsPGOCCjLGJxOttPk3KdtU_DB-z4/pub

Licenza
------------
Copyright (c) 20012-2013 Sistemi Territoriali S.r.l. - http://www.sister.it

Il prodotto è rilasciato con la licenza open source GNU General public licence GPLv3: 
http://www.gnu.org/licenses/gpl-3.0.html




[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/be61efc84f9d9d2a595d8740cb753a5d "githalytics.com")](http://githalytics.com/sistemi-territoriali/StatPortalOpenData)
