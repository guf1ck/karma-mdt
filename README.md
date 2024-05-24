# Karma Developments - MDT System 4.0 - by ANTUNES

- Hello, first of all thank you for purchasing our script !
- Don't forget to configure the shared/config.lua file according to your server.
- Feel free to open a support Ticket to resolve your problem/question. - Karma Developments -
- For to use MDT : Command: /mdt
- Please check the web/ui.html to make the translation to your language

## Dependencies

- [QBCore](https://github.com/qbcore-framework/qb-core)
- [oxmysql](https://github.com/overextended/oxmysql)
- [qb-apartments](https://github.com/qbcore-framework/qb-apartments) - If you want to disable just go into our shared/config.lua
- [qb-communityservice](https://github.com/Zepherlah/qb-community-service) - If you're planning on sending to community service. 

# Installation

* Drag and drop resource into your server files.
* Run the attached SQL (mdt.sql)

# FAQ

- **How do I add charges to a criminal in an Incident?** - After finding and adding the criminal citizen to the incident, right-click in the space under the criminal's name and select "Add Charge".

![](https://i.imgur.com/WVEDLnJ.png)

- **My dispatch calls are not being populated?** - You have not started the dispatch resource before the mdt or renamed the dispatch resource name and not made the necessary changes in mdt to reflect that.

- **Getting a error about utf8mb4_unicode illegal collation?** - QBCore has decided to change their collations on the new txAdmin recipe, change your collation on your players table to utf8mb4_general_ci. Run this query below on your database to automatically change it. 
```sql
ALTER TABLE players CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
```

# Discord: guf1ck

# Karma Developments Discord: https://discord.gg/ErC9mfYakh
