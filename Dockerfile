#
# golang docker archetype
#
FROM busybox

MAINTAINER hongweiyi <hongweiyi@hotmail>

COPY ./helloworld /helloworld

CMD "/helloworld"
