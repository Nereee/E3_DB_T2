#Iaz diru gehien aportatu duten filmen zerrenda osoa dimentsio desberdinak erabiliz aztertzeko.
select filma.Izenburua,sum(preziotot), generoa ;

SELECT f.Izenburua, sum(e.PrezioTot) AS ErrentaGehien
FROM saioa s
JOIN filma f ON s.IdFilma = f.Idfilma
JOIN erosketa e ON s.IdSaioa = e.Jatorria
WHERE YEAR(s.S_Data) = YEAR(CURRENT_DATE) - 1
GROUP BY f.Izenburua
ORDER BY ErrentaGehien DESC;

#Film gehien ikusi dituzten erabiltzaileak 
select count(idfilma) ikusita , izenburua  
from saioa inner join filma using(idfilma)
group by (izenburua);

#Bezero gutxien dituen zinema, bezero-kopurua adierazita.
SELECT z.izena, COUNT(s.IdSarrera) AS 'Bezero Kopurua'
FROM zinema z
inner join saioa sa ON z.Idzinema = sa.IdZinema
inner join sarrera s ON sa.IdSaioa = s.IdSaioa
GROUP BY z.Izena
ORDER BY COUNT(s.IdSarrera) ASC
LIMIT 1;

#Zineman areto gehien dituzten zineek proiektatutako filmen batez besteko iraupena.
SELECT z.Izena, sum(f.Iraupena) / count(f.Idfilma) AS BatezBestekoIraupena
FROM zinema z
JOIN aretoa a ON z.Idzinema = a.IdZinema
JOIN saioa s ON a.IdZinema = s.IdZinema AND a.IdAretoa = s.IdAretoa
JOIN filma f ON s.IdFilma = f.Idfilma
GROUP BY z.Izena;

#Film genero bakoitzeko, estadistikak. 
select generoa, sum(iraupena)/4, count(idsaioa)
from filma inner join saioa using(idfilma)
group by generoa