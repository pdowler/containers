select lastModified from inventory.DeletedArtifactEvent
where lastModified > '2025-01-22T18:15:00'
order by lastModified
