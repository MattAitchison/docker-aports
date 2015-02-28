FROM apkg-builder

# COPY . /aports

RUN sudo apk update \
  && install -dm755 /var/tmp/abuild

  # && chown -R abuild:abuild /aports

USER abuild

VOLUME /aports
WORKDIR /aports
CMD ["make", "build"]
