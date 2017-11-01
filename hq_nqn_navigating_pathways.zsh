#!/usr/bin/zsh

function hq {
# function 10d-create-or-40h-navigate-folder {
    local msg
    msg="$*"
    mkdir -p $msg
    cd $msg
    ranger
}

function hv {
    local msg
    msg="$*"
    vifm -c $msg
}
