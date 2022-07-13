#!/bin/bash
VERSION_CODE=`grep -E "versionCode" ${APP_FILE-app\/build.gradle} | grep -oE '([0-9]{1,})'`
DATE=`date +%Y%m%d_%H%M`
VERSION_NAME="${VERSION_CODE}_${DATE}"
hub release create -a ./${APP_FOLDER:-app}/build/outputs/apk/release/"${NAME_VARIABLE:-app\-release.apk}" -m "${RELEASE_TITLE} - v${VERSION_NAME}" ${VERSION_NAME}
