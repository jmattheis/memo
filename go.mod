module github.com/gotify/server

require (
	github.com/Southclaws/configor v1.0.0 // indirect
	github.com/fortytw2/leaktest v1.3.0
	github.com/gin-contrib/gzip v0.0.0-20190101123152-0eb78e93402e
	github.com/gin-gonic/gin v1.3.0
	github.com/go-yaml/yaml v2.1.0+incompatible
	github.com/gobuffalo/packr v1.22.0
	github.com/gorilla/websocket v1.4.0
	github.com/gotify/configor v1.0.2-0.20190112111140-7d9c7c7e6233
	github.com/gotify/location v0.0.0-20170722210143-03bc4ad20437
	github.com/gotify/plugin-api v1.0.0
	github.com/h2non/filetype v1.0.6
	github.com/jinzhu/gorm v1.9.11
	github.com/lib/pq v1.2.0 // indirect
	github.com/robfig/cron v0.0.0-20180505203441-b41be1df6967
	github.com/stretchr/testify v1.3.0
	golang.org/x/crypto v0.0.0-20190325154230-a5d413f7728c
	gopkg.in/go-playground/validator.v8 v8.18.2
)

replace git.apache.org/thrift.git => github.com/apache/thrift v0.12.0

go 1.13
