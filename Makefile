container:
	docker build -t aports .
	docker run --rm -i -t \
		-v $(shell pwd):/aports:ro \
		-v ~/.abuild/matt@gliderlabs.com.priv:/abuild/key.priv \
		-v ~/.abuild/matt@gliderlabs.com:/etc/apk/keys/key \
		-e BUILDER_PACKAGER="Matt Aitchison" aports /bin/sh



build:
	cd ./main/go \
	&& abuild checksum \
	&& abuild -s /var/tmp/abuild/go
