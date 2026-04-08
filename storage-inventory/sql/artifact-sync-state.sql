select resourceID,name,curLastModified
from inventory.HarvestState
where name='Artifact'
and resourceID != 'ivo://cadc.nrc.ca/ad/luskan'
order by resourceID
