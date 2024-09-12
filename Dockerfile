FROM public.ecr.aws/amazonlinux/amazonlinux:2023

LABEL maintainer="ronan.gill@catapult.cx"
LABEL org.label-schema.description="JDK 17 image based on amazonlinux and amazon corretto"

RUN touch /var/lib/rpm/* && \
    dnf update -y && \
    dnf install -y gzip tar binutils freetype fontconfig java-17-amazon-corretto-devel && \
    dnf install -y java-17-amazon-corretto && \
    javac --version && \
    java --version && \
    rm -rf /tmp/* && \
    dnf clean all && \
    rm -rf /var/cache/yum

CMD ["java","-version"]

