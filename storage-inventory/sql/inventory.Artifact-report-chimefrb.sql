select 'cadc:CHIMEFRB' as namespace, 
  count(*) as num_files,
  round(sum(contentLength/1024.0/1024.0/1024.0),2) as GiB
from inventory.Artifact
where uri like 'cadc:CHIMEFRB/%'
