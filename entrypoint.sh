#!/bin/bash
VERSION_CODE=`grep -E "versionCode" ${APP_FILE} | grep -oE '([0-9]{1,})'`
DATE=`date +%Y%m%d_%H%M`
VERSION_NAME="${VERSION_CODE}_${DATE}"
hub release create -a ./${APP_FOLDER}/build/outputs/apk/release/"${NAME_VARIABLE}" -m "${RELEASE_TITLE} - v${VERSION_NAME}" ${VERSION_NAME}
