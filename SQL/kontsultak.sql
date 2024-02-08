#Iaz diru gehien aportatu duten filmen zerrenda osoa dimentsio desberdinak erabiliz aztertzeko.

#Film gehien ikusi dituzten erabiltzaileak 
select count(idfilma) ikusita , izenburua  
from saioa inner join filma using(idfilma)
group by (izenburua);

#Bezero gutxien dituen zinema, bezero-kopurua adierazita.

#Zineman areto gehien dituzten zineek proiektatutako filmen batez besteko iraupena.


#Film genero bakoitzeko, estadistikak. 
select generoa, sum(iraupena)/4, count(idsaioa)
from filma inner join saioa using(idfilma)
group by generoa