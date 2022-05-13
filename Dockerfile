# Build Stage
FROM --platform=linux/amd64 ubuntu:20.04 as builder


## Add source code to the build stage.
ADD . /ks265codec
WORKDIR /ks265codec/ubuntu_x64
RUN chmod +x ./appdecoder

## TODO: ADD YOUR BUILD INSTRUCTIONS HERE.


#Package Stage
FROM --platform=linux/amd64 ubuntu:20.04

## TODO: Change <Path in Builder Stage>
COPY --from=builder /ks265codec/ubuntu_x64 /
