FROM java:8
MAINTAINER Mirko Friedenhagen <mfriedenhagen+docker@gmail.com>

ENV GRADLE_VERSION 2.14

WORKDIR /opt
RUN curl -sLO https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip && \
  unzip -q gradle-${GRADLE_VERSION}-all.zip && \
  ln -s gradle-${GRADLE_VERSION} gradle && \
  rm gradle-${GRADLE_VERSION}-all.zip && \
  useradd --create-home user && \
  mkdir /build && \
  chown user:user /build

ENV GRADLE_HOME /opt/gradle
# See https://community.bitnami.com/t/gradle-user-home-opt-bitnami-gradle/40717
ENV GRADLE_USER_HOME /home/user
ENV PATH $PATH:$GRADLE_HOME/bin

VOLUME ["/home/user/.gradle"]
WORKDIR /build
USER user

ENTRYPOINT ["gradle"]
CMD ["-version"]
