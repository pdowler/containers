select TOP 10 num_copies() as copies,count(*) as files
from inventory.Artifact
where uri like 'cadc:TAOSII/%'
group by copies order by copies desc
