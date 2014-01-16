=======
LegoPHP
=======

Multi-Site Enterprise Architecture Plug-in Framework w/ Administration Dashboard

"... an architectural framework provides tools and approaches that help architects abstract from the level of detail that builders work at to bring enterprise design tasks into focus ..."

- http://en.wikipedia.org/wiki/Enterprise_Architecture_framework

======================
Current Directory Tree
======================

├── README.md
├── Vagrantfile
├── admin
│   ├── app
│   │   ├── Config
│   │   │   ├── bootstrap.php
│   │   │   └── config.php
│   │   ├── Controllers
│   │   │   └── empty
│   │   ├── Models
│   │   │   └── empty
│   │   └── Views
│   │       └── empty
│   └── webroot
│       ├── css
│       ├── imgs
│       ├── index.php
│       └── js
├── config
│   └── global.php
├── library
│   ├── Components
│   │   ├── Component
│   │   │   └── Component.php
│   │   ├── Components.php
│   │   └── Storage
│   │       ├── Modules
│   │       │   ├── Databases
│   │       │   │   ├── Databases.php
│   │       │   │   └── Extensions
│   │       │   │       ├── NoSQL
│   │       │   │       │   ├── Add-ons
│   │       │   │       │   │   └── MongoDB.php
│   │       │   │       │   └── NoSQL.php
│   │       │   │       └── SQL
│   │       │   │           ├── Add-ons
│   │       │   │           │   ├── MySQL.php
│   │       │   │           │   └── SQLite.php
│   │       │   │           └── SQL.php
│   │       │   ├── FileSystems
│   │       │   │   ├── Extensions
│   │       │   │   │   ├── Amazon
│   │       │   │   │   │   ├── Add-ons
│   │       │   │   │   │   │   ├── Glacier.php
│   │       │   │   │   │   │   └── S3.php
│   │       │   │   │   │   └── Amazon.php
│   │       │   │   │   └── CDN
│   │       │   │   │       ├── Add-ons
│   │       │   │   │       │   ├── Akamai.php
│   │       │   │   │       │   ├── CloudFlare.php
│   │       │   │   │       │   └── CloudFront.php
│   │       │   │   │       ├── CDN.php
│   │       │   │   │       └── CDNInterface.php
│   │       │   │   └── FileSystems.php
│   │       │   └── MemoryCaches
│   │       │       ├── Extensions
│   │       │       │   ├── JsonStore
│   │       │       │   │   ├── Add-ons
│   │       │       │   │   │   ├── GoogleBigData.php
│   │       │       │   │   │   └── RethinkDB.php
│   │       │       │   │   └── JsonStore.php
│   │       │       │   └── KeyValue
│   │       │       │       ├── Add-ons
│   │       │       │       │   ├── Memcached.php
│   │       │       │       │   └── Redis.php
│   │       │       │       └── KeyValue.php
│   │       │       └── MemoryCaches.php
│   │       └── Storage.php
│   ├── Config
│   │   └── bootstrap.php
│   ├── Core
│   │   ├── LegoAdd-ons.php
│   │   ├── LegoBlock.php
│   │   ├── LegoExtensions.php
│   │   ├── LegoModules.php
│   │   ├── LegoObserver.php
│   │   └── LegoPlugins.php
│   └── Lego.php
├── plugins
│   └── Users
│       ├── Modules
│       │   ├── Admin
│       │   ├── Auth
│       │   │   └── Extensions
│       │   │       └── Cryptography
│       │   │           ├── Add-ons
│       │   │           │   ├── SHA256.php
│       │   │           │   ├── SaltedMD5.php
│       │   │           │   └── TripleDES.php
│       │   │           └── Cryptography.php
│       │   ├── Companies
│       │   │   ├── Companies.php
│       │   │   └── Extensions
│       │   │       ├── Offices
│       │   │       │   ├── Add-ons
│       │   │       │   │   └── Locations.php
│       │   │       │   └── Offices.php
│       │   │       └── Portals
│       │   │           └── Portals.php
│       │   ├── Groups
│       │   │   ├── Extensions
│       │   │   │   ├── Admins
│       │   │   │   │   ├── Add-ons
│       │   │   │   │   │   ├── Moderator.php
│       │   │   │   │   │   └── Owner.php
│       │   │   │   │   └── Admins.php
│       │   │   │   ├── Members
│       │   │   │   │   └── Members.php
│       │   │   │   └── Teams
│       │   │   │       └── Teams.php
│       │   │   └── Groups.php
│       │   ├── Roles
│       │   ├── Session
│       │   │   └── Extensions
│       │   └── User
│       │       └── Extensions
│       │           ├── Address
│       │           ├── Billing
│       │           ├── Chats
│       │           ├── Contact
│       │           ├── Email
│       │           └── Shipping
│       └── Schemas
│           └── LegoPHP-Users-v0.1.sql
├── schemas
│   └── LegoPHP-Admin-v0.1.sql
├── scripts
│   ├── LICENSE
│   ├── bin
│   │   └── lego -> ../libexec/lego
│   ├── completions
│   │   ├── lego.bash
│   │   └── lego.zsh
│   ├── libexec
│   │   ├── lego
│   │   ├── lego-commands
│   │   ├── lego-config
│   │   │   └── lego-config
│   │   ├── lego-cronski
│   │   │   ├── lego-dispatch
│   │   │   └── lego-manage
│   │   ├── lego-example
│   │   │   ├── lego-advanced
│   │   │   │   ├── lego-advanced
│   │   │   │   ├── lego-expert
│   │   │   │   │   ├── lego-case-select
│   │   │   │   │   └── lego-expert
│   │   │   │   └── lego-fix-7
│   │   │   ├── lego-basic
│   │   │   │   ├── lego-basic
│   │   │   │   ├── lego-files
│   │   │   │   └── lego-foreach
│   │   │   └── lego-example
│   │   ├── lego-help
│   │   ├── lego-init
│   │   ├── lego-sh-shell
│   │   └── lego-tools
│   │       ├── lego-getHost
│   │       ├── lego-log
│   │       ├── lego-microtime
│   │       └── lego-rand
│   └── share
│       └── lego
│           └── example
├── sites
│   └── default
│       ├── app
│       │   ├── Config
│       │   │   ├── bootstrap.php
│       │   │   └── config.php
│       │   ├── Controllers
│       │   │   └── empty
│       │   ├── Models
│       │   │   └── empty
│       │   └── Views
│       │       └── empty
│       └── webroot
│           └── index.php
├── themes
│   └── default
│       ├── app
│       │   └── Views
│       │       └── Elements
│       │           └── empty
│       └── webroot
│           ├── css
│           │   └── empty
│           ├── imgs
│           │   └── empty
│           └── js
│               └── empty
├── vagrant
│   └── provision.sh
└── vendors
    └── empty
