FROM public.ecr.aws/amazonlinux/amazonlinux:2023

LABEL maintainer="ronan.gill@catapult.cx"
LABEL org.label-schema.description="JDK 21 image based on amazonlinux and amazon corretto"

RUN touch /var/lib/rpm/* && \
    dnf update -y && \
    dnf install -y gzip tar binutils freetype fontconfig java-21-amazon-corretto-devel && \
    javac --version && \
    java --version && \
    rm -rf /tmp/* && \
    dnf clean all && \
    rm -rf /var/cache/yum && \
    dnf install -y util-linux


ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto.x86_64

CMD ["java","-version"]

