#!/bin/bash

source lib.sh

INSTALL_PACKAGES=(
    avahi-daemon vim lshw iotop screen #essentials
#    debian-archive-keyring apt-transport-https #hypriot
    docker-hypriot #docker
    quicksynergy #dogi
    matchbox-keyboard #virtual keyboard
)

if [[ ${INSTALL_PACKAGES:-} ]] ; then
    echo "Installing ${INSTALL_PACKAGES[@]}"
    _apt install ${INSTALL_PACKAGES[@]} || die "Could not install ${INSTALL_PACKAGES[@]}"
fi

