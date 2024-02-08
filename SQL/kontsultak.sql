#Iaz diru gehien aportatu duten filmen zerrenda osoa dimentsio desberdinak erabiliz aztertzeko.

#Film gehien ikusi dituzten erabiltzaileak 
select count(idfilma) ikusita , izenburua  
from saioa inner join filma using(idfilma)
group by (izenburua);
#Bezero gutxien dituen zinema, bezero-kopurua adierazita.

#Zineman areto gehien dituzten zineek proiektatutako filmen batez besteko iraupena.
select zinema.izena, avg(iraupena) #no esta terminado 
from filma inner join saioa using (idfilma)
			inner join aretoa using (idaretoa)
            inner join zinema on aretoa.idzinema = zinema.idzinema;

#Film genero bakoitzeko, estadistikak. 
