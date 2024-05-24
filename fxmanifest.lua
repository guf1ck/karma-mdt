fx_version 'cerulean'
game 'gta5'
author 'ANTUNES'
description 'Karma Developments MDT 4.0'
version '2.6.6'

lua54 'yes'

shared_script 'shared/config.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/utils.lua',
    'server/dbm.lua',
    'server/main.lua'
}
client_scripts{
    'client/main.lua',
    'client/cl_impound.lua',
    'client/cl_mugshot.lua'
} 

ui_page 'web/ui.html'

files {
    'web/images/*.png',
    'web/images/*.webp',
    'web/ui.html',
    'web/javascript.js',
    'web/style.css',
}


escrow_ignore {
    "shared/config.lua",
    "server/main.lua"
}