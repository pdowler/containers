select split_part(uri, '/', 1) as namespace, count(*) as pending, min(lastModified),max(lastModified)
from inventory.PendingArtifact
group by namespace
