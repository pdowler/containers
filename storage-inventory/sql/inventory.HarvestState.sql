select curLastModified,lastModified,name,resourceID
from inventory.HarvestState
order by curLastModified DESC
