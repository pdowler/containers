select split_part(uri,'/',1) as namespace, 
  count(*) as num_files,
  round(sum(contentLength/1024.0/1024.0/1024.0),2) as GiB
from inventory.Artifact
where uri like 'lsst:dp1/%'
group by namespace 
order by namespace
