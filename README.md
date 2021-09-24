# Vaccintäckning 2021-08-27 på DeSO-nivå

Rådatafilerna finns i mappen data. De finns även här: https://handlingar.se/sv/request/vaccinationsstatistik_pa_deso_ni#incoming-1510

De relevanta filerna är `all_deso.csv` och `age_deso.csv`. Den tidigare innehåller statistik på DeSO-nivåer rakt av, och den andra är uppdelad på två åldersgrupper (18-64 och 65+). Jag har även lagt till RegSO-beteckningen som varje DeSO tillhör. Fördelen är att alla RegSO-områden är namnsatta, och består av en eller flera DeSO-områden. 

Shape-filer för DeSO-områden finns här: https://www.scb.se/vara-tjanster/oppna-data/oppna-geodata/deso--demografiska-statistikomraden/ och RegSO här: https://www.scb.se/vara-tjanster/oppna-data/oppna-geodata/regso/

Information från rådatafilerna: 

* Saknad DeSO-kod inkluderar individer med 'REST' i sin DeSO-kod samt individer från NVR som inte kunde matchas mot SCBs register
* Vaccinationstäckning för ev. DeSO-koder med färre än 15 individer har maskerats till tomma värden. (verkar bara behövts i ett fåtal områden i den åldersuppdelade filen)
* Vaccinationstäckning brutet på ålderskategori har kategoriserats till 10 grupper

Datakällor: NVR, register från SCB. Ålder beräknad utifrån: 2020-12-31
