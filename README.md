# Karma Developments - MDT System 4.0 - by ANTUNES

- Hello, first of all thank you for purchasing our script !
- Don't forget to configure the shared/config.lua file according to your server.
- Feel free to open a support Ticket to resolve your problem/question. - Karma Developments -
- For to use MDT : Command: /mdt
- Please check the web/ui.html to make the translation to your language

# Discord: guf1ck

# Karma Developments Discord: 
## https://discord.gg/ErC9mfYakh

## Dependencies

- [QBCore](https://github.com/qbcore-framework/qb-core)
- [PS-MDT](https://github.com/Project-Sloth/ps-mdt)
- [oxmysql](https://github.com/overextended/oxmysql)
- [qb-apartments](https://github.com/qbcore-framework/qb-apartments) - If you want to disable just go into our shared/config.lua
- [qb-communityservice](https://github.com/Zepherlah/qb-community-service) - If you're planning on sending to community service. 

# Installation

* Drag and drop resource into your server files.
* Run the attached SQL (mdt.sql)

# FAQ

* PREVIEW

![](https://cdn.discordapp.com/attachments/1188507337464496128/1237422180497756245/image.png?ex=66515776&is=665005f6&hm=4e27ec489d70a8c139aaea375e5b656e985e13042d775f0330d89a5653ad8b09&)

- **My dispatch calls are not being populated?** - You have not started the dispatch resource before the mdt or renamed the dispatch resource name and not made the necessary changes in mdt to reflect that.

- **Getting a error about utf8mb4_unicode illegal collation?** - QBCore has decided to change their collations on the new txAdmin recipe, change your collation on your players table to utf8mb4_general_ci. Run this query below on your database to automatically change it. 
```sql
ALTER TABLE players CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
```
