.mode	columns
.headers	on
.nullvalue	NULL


.print ''

drop VIEW if EXISTS SameSL;
create view SameSL
as select s1.speciesid as Species1, s1.commonname as cn1, s2.speciesid as Species2, s2.commonname  as cn2
from species as s1, Species as s2
where (s1.sociallifeid = s2.sociallifeid
      and Species1 <>Species2);

drop VIEW if EXISTS SameDiet;
create view SameDiet
as select s1.speciesid as Species1, s1.commonname  as cn1, s2.speciesid as Species2, s2.commonname as cn2
from species as s1, Species as s2
where (s1.dietid = s2.dietid
      and Species1 <>Species2);

drop VIEW if EXISTS SameActi;
create view SameActi
as select s1.speciesid as Species1, s1.commonname as cn1, s2.speciesid as Species2, s2.commonname as cn2
from species as s1, Species as s2
where (s1.activenessid = s2.activenessid
      and Species1 <>Species2);

drop VIEW if EXISTS SameRep;
create view SameRep
as select s1.speciesid as Species1, s1.commonname as cn1, s2.speciesid as Species2, s2.commonname as cn2
from species as s1, Species as s2
where (s1.reproductionid = s2.reproductionid
      and Species1 <>Species2);

SELECT cn1 as Species1, cn2 as Species2, max (CommonAspects) as NumMaxCommonAspects
from (SELECT Species1, cn1, cn2, count (*) as CommonAspects from (
	SELECT * from SameSL UNION all SELECT * from SameDiet 
	UNION all SELECT * from SameActi
	UNION all SELECT * from SameRep)
	group by Species1, Species2)
Group BY Species1
ORDER by  NumMaxCommonAspects DESC;


      



