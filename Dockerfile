FROM debian:10.1

LABEL "version"="0.0.7"
LABEL "com.github.actions.name"="Release APK Publisher using kts"
LABEL "com.github.actions.description"="Build & Publish Release APK on Github using kts"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/CofactorSystems/action-release-releaseapk"
LABEL "maintainer"="farmisen"

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y hub \
	&& apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
