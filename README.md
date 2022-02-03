# Vaccintäckning på DeSO-nivå

Rådatafilerna finns i mappen data. De finns även här för 2021-08-27: https://handlingar.se/sv/request/vaccinationsstatistik_pa_deso_ni#incoming-1510 och hos Newsworthy för 2021-09-28, 2021-10-26, 2021-11-23, 2021-12-21 och 2022-01-18.

Den relevanta filen är `all_data.csv` som finns i `all_data.zip`. Den innehåller statistik på DeSO-nivåerbåde rakt av, och ihop med finfördelningar. Noll-värden för andelar är implicita, d.v.s. anges t.ex. ingen andel för tre doser för ett datum är andelen att betrakta som noll, för att booster-doser inte hade börjat ges vid det datumet. Jag har även lagt till RegSO-beteckningen som varje DeSO tillhör. Fördelen är att alla RegSO-områden är namnsatta, och består av en eller flera DeSO-områden. 

Shape-filer för DeSO-områden finns här: https://www.scb.se/vara-tjanster/oppna-data/oppna-geodata/deso--demografiska-statistikomraden/ och RegSO här: https://www.scb.se/vara-tjanster/oppna-data/oppna-geodata/regso/

Alternativt finns de förberedda för R i detta repo: https://github.com/StaffanBetner/SverigesGeografi
