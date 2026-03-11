
org.opencadc.tantar.reportOnly = false 

org.opencadc.tantar.logging = info

# set the bucket  or bucket prefix that tantar will validate
org.opencadc.tantar.buckets = 0-f

# set the policy to resolve conflicts of files
org.opencadc.tantar.policy.ResolutionPolicy = InventoryIsAlwaysRight

# inventory database settings
org.opencadc.inventory.db.SQLGenerator=org.opencadc.inventory.db.SQLGenerator
org.opencadc.tantar.inventory.schema = inventory
org.opencadc.tantar.inventory.username = cadmin
org.opencadc.tantar.inventory.password = pw-cadmin
org.opencadc.tantar.inventory.url = jdbc:postgresql://pg15-minoc/cadctest2

# storage back end
org.opencadc.inventory.storage.StorageAdapter=org.opencadc.inventory.storage.swift.SwiftStorageAdapter

