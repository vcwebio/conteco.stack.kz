##### BEGIN image/Dockerfile/image-header #####
FROM vcwebio/conteco.image.wrapper AS base
##### END image/Dockerfile/image-header #####

##### BEGIN image/Dockerfile/conteco #####
COPY ./conteco/ /conteco/
RUN chmod -R +x /conteco/bin && rm -rf /conteco/repo
COPY ./ /conteco/repo/
##### END image/Dockerfile/conteco #####

##### BEGIN image/Dockerfile/build-instructions #####
##### END image/Dockerfile/build-instructions #####

##### BEGIN image/Dockerfile/env-labels-footer #####
ENV CONTECO_TYPE="stack" \
    CONTECO_NAME="kz" \
    CONTECO_TAG="v1.0.0" \
    CONTECO_BASE="image.wrapper" \
    CONTECO_BUILD="image"
LABEL io.vcweb.type="stack" \
      io.vcweb.name="kz" \
      io.vcweb.tag="v1.0.0" \
      io.vcweb.base="image.wrapper" \
      io.vcweb.build="image" \
      io.vcweb.label="stack.kz - ContEco" \
      io.vcweb.description="KZ Stack image, consisting of Kafka and Zookeeper." \
      io.vcweb.docker.cmd.help="docker run vcwebio/conteco.stack.kz --help"
##### END image/Dockerfile/env-labels-footer #####
