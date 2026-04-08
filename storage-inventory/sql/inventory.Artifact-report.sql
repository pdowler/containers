select split_part(uri,'/',1) as namespace, num_copies() as ncopies, count(*) as num
from inventory.Artifact
where uri like 'cadc:IRIS/%'
group by namespace,ncopies order by namespace,ncopies

