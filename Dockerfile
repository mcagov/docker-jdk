FROM public.ecr.aws/amazonlinux/amazonlinux:2023

LABEL maintainer="ronan.gill@catapult.cx"
LABEL org.label-schema.description="JDK 21 image based on amazonlinux and amazon corretto"

RUN touch /var/lib/rpm/*


ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto.x86_64

CMD ["java","-version"]

