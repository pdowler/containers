select TOP 10 contentLastModified,lastModified,num_copies(),uri 
from inventory.Artifact
where uri like 'cadc:TAOSII/%'
order by lastModified desc
