# Java image created on top of amazonlinux


Branches are used for the various versions

To build locally

    docker build \
                -t 009543623063.dkr.ecr.eu-west-2.amazonaws.com/jdk:corretto-17 \
                .

To build for release

    docker build \
                -t 009543623063.dkr.ecr.eu-west-2.amazonaws.com/jdk:corretto-17 \
                --no-cache=true --force-rm=true \
                --compress --squash \
                .

To run

    docker run -t -i --rm  009543623063.dkr.ecr.eu-west-2.amazonaws.com/jdk:corretto-17

To push

    docker push 009543623063.dkr.ecr.eu-west-2.amazonaws.com/jdk:corretto-17






