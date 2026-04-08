select resourceID,name,curLastModified,lastModified
from inventory.HarvestState
order by curLastModified DESC
