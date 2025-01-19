#!/bin/bash
###############################################################################
###############################################################################
###                                                                         ###
### Author: wuseman <wuseman@nr1.nu>                                        ###
### IRC: Freenode @ wuseman                                                 ###
###                                                                         ###
###############################################################################
############################## AUTHOR WUSMAN ##################################
###############################################################################
###                                                                         ###
### If you will copy any developers work and claim you are the dev/founder  ###
### it wont make you a hacker - The only person you're fooling is yourself  ###
### so please respect all developers and GPL Licenses no matter if it's my  ###
### script, tool or project or if it's anyone else, thank you!              ###
###                                                                         ###
###############################################################################
###########################o###################################################
###############################################################################
####                                                                       ####
####  Copyright (C) 2018-2020, wuseman                                     ####
####                                                                       ####
####  This program is free software; you can redistribute it and/or modify ####
####  it under the terms of the GNU General Public License as published by ####
####  the Free Software Foundation; either version 2 of the License, or    ####
####  (at your option) any later version.                                  ####
####                                                                       ####
####  This program is distributed in the hope that it will be useful,      ####
####  but WITHOUT ANY WARRANTY; without even the implied warranty of       ####
####  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        ####
####  GNU General Public License for more details.                         ####
####                                                                       ####
####  You must obey the GNU General Public License. If you will modify     ####
####  the file(s), you may extend this exception to your version           ####
####  of the file(s), but you are not obligated to do so.  If you do not   ####
####  wish to do so, delete this exception statement from your version.    ####
####  If you delete this exception statement from all source files in the  ####
####  program, then also delete it here.                                   ####
####                                                                       ####
###############################################################################
###############################################################################
### Modified: 05:46:03 - 2020-07-15

###############################################################################
# BINARYS                                                                  ####
###############################################################################
CURL="/usr/bin/curl -q"
CUT="/bin/cut"
GREP="/bin/grep"
AWK="/bin/awk"
SED="/bin/sed"
CUT="/bin/cut"
WC="/bin/wc"

###############################################################################
# COOKIES - 1 = FIREFOX - 2 = CHROME - 3 = LYNX - 4 = CURL - 5 = ELINKS    ####                                                                 ####
###############################################################################
ACCEPT="accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
AL="accept-language: q=0.7,en-US;q=0.6"
API_KEY="\<HIDDEN\>"
AUTHORITY="authority: scrape.pastebin.com"
CCONTROL="cache-control: max-age=0"
CFDUID="d259e99676d6e83f69131f3a5028d3e1e1592898096"
CFDUID2="d4cbfa16d6eb10b37f37ab96245d82f0e1594776802;"
CF_CLEARANCE="aea89912fa9ef721f0b072d43b31fe6a0b8d62d6-1594258790-0-1za25cfc5cze6369552zf578cfb9-250"
CF_CLEARANCE2="1c5c74510c4c3c1b40985e82b91454b6cd93c771-1594776821-0-1za25cfc5cze6369552zf578cfb9-250"
SFSCS="sec-fetch-site: cross-site"
SFMN="sec-fetch-mode: navigate"
SFM1="sec-fetch-user: ?1"
SFDD="sec-fetch-dest: document"
UA_CHROME="user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36"
UIR="upgrade-insecure-requests: 1"
RED="\e[1;31m"
END="\e[0m"
#SCRAPE_SKIPLIST="$(grep -iv 'scrape\|date\|key\|size\|expirer\|syntax\|title\|expire\|user\|{\|}'|grep -woi 'https:.*[A-Za-z0-9]')"

###############################################################################
# PATHS                                                                    ####
###############################################################################
emagnet_scrape_paths() {
MOUNT_PATH="/mnt/nr1"
HTML_PATH="var/www/html"
EMAGNET_PATH="emagnet/pastebin/$(date +%Y-%m-%d)"
}

###############################################################################
# SOURCES                                                                  ####
###############################################################################
emagnet_scrape_sources() {
WWW="https"
DNS="scrape.pastebin.com"
API_PHP="api_scraping.php"
RECENT_PASTES_MINIMAL="pastebin.txt"
RECENT_PASTES_API_FULL="pastebin-full.txt"
}

###############################################################################
# SSH_PROXY - SSH TUNNEL - VPN                                             ####
###############################################################################
emagnet_scrape_tunnel() { 
	[[ $PROXY = "true" ]] && CURL="curl -x socks5h://$PROXYHOST:$PROXYPORT" || CURL="curl -s"; 
}

###############################################################################
# SOURCES - API - MINIMAL - FULL                                           ####
###############################################################################
emagnet_scrape_recent_uploads() {
STORAGE_PATH="${MOUNT_PATH}/${HTML_PAHT}/${EMAGNET_PATH}"
STORAGE="${MOUNT_PATH}/${HTML_PAHT}/${EMAGNET_PATH}/${RECENT_PASTES}"
STORAGE2="${MOUNT_PATH}/${HTML_PAHT}/${EMAGNET_PATH}/${RECENT_API_FULL}"
SCRAPE_PASTEBIN="${WWW}://${DNS}/${API_PHP}"
COUNTER="$(curl -s ${WWW}://${DNS}/${API_PHP}|${SCRAPE_SKIPLIST})" 
        }

emagnet_scrape_recent_full_api() {
STORAGE_PATH="      ${MOUNT_PATH}/${HTML_PAHT}/${EMAGNET_PATH}"
STORAGE="           ${MOUNT_PATH}/${HTML_PAHT}/${EMAGNET_PATH}/${RECENT_PASTES}"
STORAGE2="          ${MOUNT_PATH}/${HTML_PAHT}/${EMAGNET_PATH}/${RECENT_API_FULL}"
SCRAPE_PASTEBIN="   ${WWW}://${DNS}/${API_PHP}"
COUNTER="           $(curl -s ${WWW}://${DNS}/${API_PHP}|${SCRAPE_SKIPLIST})"
}


###############################################################################
# PASTEBIN PRO - SCRAPER - SPOOF IP - SPOOF MAC                            ####
###############################################################################
emagnet_scrape_go_recent_pages_minimal() {
mkdir -p "${STORAGE}"
      printf "%33s \n"|tr ' ' '-'; \
      printf "# emagnet-scraper.sh v1.0\n"
      echo -e "# date: $(date +%Y-%m-%d)"; \
      echo -e "# generated: $(date +%H:%M:%S)"; \
      printf "# author: wuseman\n";
      printf "# contact: wuseman@nr1.nu\n# https://github.com/wuseman/\n"
      printf "%33s\n"|tr ' ' '-'; \
        curl -s ${WWW}://${DNS}/${API_PHP} -H "${AUTHORITY}" -H "${CCONTROL}"                                                       \
         -H "${UIR}" -H "${UA_CHROME}" -H "${ACCEPT}" -H "${SFSCS}"                                                                 \
         -H "${SFMN}" -H "${SFM1}" -H "${SFDD}" -H "${AL}"                                                                          \
         -H "cookie: __cfduid=${CFDUID2}; cf_clearance=${CF_CLEARANCE2}"                                                            \
         |grep -v 'scrape'                                                                                                          \
         |jq                                                                                                                        \
         |grep -i "full_url"                                                                                                        \
         |awk -F'"' '{print $4}'                                                                                                    \
         |sed 's/.com/.com\/raw/g' >> ${MOUNT_PATH}/${HTML_PATH}/${EMAGNET_PATH}/${RECENT_PASTES_MINIMAL}                       
}

emagnet_scrape_go_recent_api_full() {
mkdir -p "${STORAGE}"
      printf "%33s \n"|tr ' ' '-'; \
      printf "# emagnet-scraper.sh v1.0\n"
      echo -e "# date: $(date +%Y-%m-%d)"; \
      echo -e "# generated: $(date +%H:%M:%S)"; \
      printf "# author: wuseman\n";
      printf "# contact: wuseman@nr1.nu\n# https://github.com/wuseman/\n"
      printf "%33s\n"|tr ' ' '-'; \
        curl -s ${WWW}://${DNS}/${API_PHP} -H "${AUTHORITY}" -H "${CCONTROL}"                                                       \
         -H "${UIR}" -H "${UA_CHROME}" -H "${ACCEPT}" -H "${SFSCS}"                                                                 \
         -H "${SFMN}" -H "${SFM1}" -H "${SFDD}" -H "${AL}"                                                                          \
         -H "cookie: __cfduid=${CFDUID2}; cf_clearance=${CF_CLEARANCE2}"                                                            \
         \ >> ${MOUNT_PATH}/${HTML_PATH}/${EMAGNET_PATH}/${RECENT_PASTES_API_FULL}                       
}



df|grep -iqo nr1|head -n1;
[[ "$?" = "0" ]] &&  
                     emagnet_scrape_sources
                     emagnet_scrape_tunnel
                     emagnet_scrape_paths
                     emagnet_scrape_recent_uploads
                     emagnet_scrape_recent_full_api
                     emagnet_scrape_go_recent_pages_minimal
                     emagnet_scrape_go_recent_api_full;exit 0 || \
                     echo -e "${WHITE}[${END}${RED}<<${END}${WHITE}]${END} -- internal error: something went wrong, reconnects in ~60 seconds"
