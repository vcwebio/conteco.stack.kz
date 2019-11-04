##### BEGIN image/Dockerfile/image-header #####
FROM $CONTECO_REALM/$CONTECO_ECOSYSTEM.$CONTECO_BASE AS base
##### END image/Dockerfile/image-header #####

##### BEGIN image/Dockerfile/conteco #####
COPY ./conteco/ /conteco/
RUN chmod -R +x /conteco/bin && rm -rf /conteco/repo
COPY ./ /conteco/repo/
##### END image/Dockerfile/conteco #####

##### BEGIN image/Dockerfile/build-instructions #####
ENV CONTECO_ENTRYPOINT "bash"
##### END image/Dockerfile/build-instructions #####

##### BEGIN image/Dockerfile/env-labels-footer #####
ENV CONTECO_NAME="$CONTECO_NAME" \
    CONTECO_TAG="$CONTECO_TAG" \
    CONTECO_BASE="$CONTECO_BASE" \
    CONTECO_BUILD="$CONTECO_BUILD"
LABEL $CONTECO_LABELSPACE.name="$CONTECO_NAME" \
      $CONTECO_LABELSPACE.tag="$CONTECO_TAG" \
      $CONTECO_LABELSPACE.base="$CONTECO_BASE" \
      $CONTECO_LABELSPACE.build="$CONTECO_BUILD" \
      $CONTECO_LABELSPACE.label="$CONTECO_LABEL" \
      $CONTECO_LABELSPACE.description="$CONTECO_DESCRIPTION" \
      $CONTECO_LABELSPACE.docker.cmd.help="docker run ${CONTECO_REALM}/${CONTECO_ECOSYSTEM}.${CONTECO_TYPE}.${CONTECO_NAME} --help" 
##### END image/Dockerfile/env-labels-footer #####
