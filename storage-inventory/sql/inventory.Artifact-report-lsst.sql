select split_part(uri,'/',1) as namespace, count(*) as count
from inventory.Artifact
where namespace='lsst:dp1'
group by namespace order by namespace
