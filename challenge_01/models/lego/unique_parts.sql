
select 
    P.PART_NUM
from PARTS as P
inner join INVENTORY_PARTS as IP 
    on P.PART_NUM = IP.PART_NUM 
inner join INVENTORIES as I 
    on I.ID = IP.INVENTORY_ID 
inner join SETS as S 
    on S.SET_NUM = I.SET_NUM 
group by P.PART_NUM 
having COUNT(*) = 1
