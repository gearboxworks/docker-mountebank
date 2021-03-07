#!/bin/bash
# Created on 2021-03-07T18:38:39+1100, using template:mountebank.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
APKBIN="$(which apk)"
if [ "${APKBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/mountebank.apks ]
	then
		APKS="$(cat /etc/gearbox/build/mountebank.apks)"
		${APKBIN} update && ${APKBIN} add --no-cache --virtual gearbox ${APKS}; checkExit
	fi
fi

APTBIN="$(which apt-get)"
if [ "${APTBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/mountebank.apt ]
	then
		DEBS="$(cat /etc/gearbox/build/mountebank.apt)"
		${APTBIN} update && ${APTBIN} install ${DEBS}; checkExit
	fi
fi


if [ -f /etc/gearbox/build/mountebank.env ]
then
	. /etc/gearbox/build/mountebank.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi


mkdir -p /usr/local/mountebank/${GEARBOX_VERSION}
cd /usr/local/mountebank/${GEARBOX_VERSION}

if [ ! -f package.json ]
then
	wget -O package.json https://raw.githubusercontent.com/bbyars/mountebank/v${GEARBOX_VERSION}/package.json
fi
npm install -g mountebank@${GEARBOX_VERSION} --production


c_ok "Generate installed file list"
c_ok "####################"
apk info -v -R gearbox | sed 's/gearbox://' | xargs apk info -L | awk '/bin\//{print"/"$1}'
c_ok "####################"


c_ok "Finished."
