#! /bin/bash

## Description: Starts Media Server with auto-configuration.
## Author     : Henrique Rosa (henrique.rosa@telestax.com)

startMediaServer() {
    local basedir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
    local ms_conf=$basedir/mediaserver.conf
    local ms_home=$RESTCOMM_HOME/mediaserver

    $ms_home/start-mediaserver.sh $ms_conf
}

startMediaServer