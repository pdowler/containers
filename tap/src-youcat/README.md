# simple youcat deplolyment for SRCNet

This deployment is using `youcat` as a basic TAP service and is configured
to support queries only.

When created, the container listens on port 8080. There are lots of ways to manage 
the networking... but in my dev environment the front end https proxy uses 
`http://{container ip}:8080/{path}` as the back end (e.g. no container port exposed 
on the host).

To re-use this, a few values in the config files need to be tweaked from my dev
environment values:

## catalina.properties

`tomcat.connector.proxyName` is the fully qualified hostname of the front end https
proxy (HAProxy, nginx, etc). Note: this proxy name also occurs in the `cadc-tap-tmp.properties`
config file (see below).

`org.opencadc.youcat.{pool}.url` is the JDBC URLs to the PostgreSQL server and database.

`org.opencadc.youcat.tapadm.username` and `org.opencadc.youcat.{pool}.password` contain
PostgreSQL username and poasswords.

## cadc-tap-tmp.properties
This file configures the storage of temporary files (TAP-async results and a temporary place to
store inline UPLOAD requests). The current config stores these in `/var/tmp/youcat` inside the
container. 

`org.opencadc.tap.tmp.TempStorageManager.baseURL` contains the fully qualified hostname of the 
front end https proxy

## war-rename.conf
This config file renames the war file so it is deployed on a different path using tomcat naming
magic.

