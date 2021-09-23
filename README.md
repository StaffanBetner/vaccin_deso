# Vaccintäckning 2021-08-27 på DeSO-nivå

Rådatafilerna finns i mappen data.

De relevanta filerna är `all_deso.csv` och `age_deso.csv`. Den tidigare innehåller statistik på DeSO-nivåer rakt av, och den andra är uppdelad på två åldersgrupper (18-65 och 65+).

Information från rådatafilerna: 

* Saknad DeSO-kod inkluderar individer med 'REST' i sin DeSO-kod samt individer från NVR som inte kunde matchas mot SCBs register
* Vaccinationstäckning för ev. DeSO-koder med färre än 15 individer har maskerats till tomma värden. (verkar bara behövts i ett fåtal områden i den åldersuppdelade filen)
* Vaccinationstäckning brutet på ålderskategori har kategoriserats till 10 grupper

Datakällor: NVR, register från SCB. Ålder beräknad utifrån: 2020-12-31
