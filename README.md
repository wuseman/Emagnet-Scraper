# Emagnet Scraper v1.0

## <p align="center">![Screenshot](https://repository-images.githubusercontent.com/165741206/f9087e00-397d-11ea-9cab-1aea419f9448)

| Current Version    | News                            | Tested On                          |
| :----------------- | :-------------------------------- | :----------------------------------|
| `1.0`              |  Run your own serer for emagnet      | Linux/MacOS/OpenWRT/Windows/Android                               |

### About: 

Emagnet Scraper is a monitor tool so we can grab all urls from scrape.pastebin.com/api_scrape.php and store all uploads on our own server and share to people

Setup your own server for emagnet and store both pastebin-api.txt (full api) && pastebin.txt (raw files)

### Getting Started

# Install apache2 or nginx and configure it after your needs:

    ,-> Create a folder in /var/www/html/emagnet/pastebin
    |   From now you will have things stored like:
    |   Recent uploads stored as raw format:            /var/www/html/emagnet/pastebin/yyy-mm-dd/pastebin.txt 
    |   Recent uploads will also be stored in json: :   /var/www/html/emagnet/pastebin/yyy-mm-dd/pastebin.txt
    |
    |           For find your own urls or at emagnet server, you can do as below:
    |           Print all urls:         curl -Lvs https://nr1.nu/emagnet/pastebin/yyy-mm-dd/pastebin.txt
    '---------> Print all urls in json: curl -Lvs https://nr1.nu/emagnet/pastebin/yyy-mm-dd/pastebin-api.txt|jq

### Changelog

    [Versions changelog](CHANGELOG.md).

### Authors: 

    * **wuseman <wuseman@nr1.nu\>** 

### License

    This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details

### Contact

    If you have problems, questions, ideas or suggestions please contact me on *_wuseman@nr1.nu_  - For faster contact visit freenode irc network or the webchat and type '/msg wuseman hi!' in the input bar and I will reply you ASAP I will see the message.
  
    Enter Freenodes network via your own client 'chat.freenode.com:+6697 or use their new web client [here](https://webchat.freenode.net/)

