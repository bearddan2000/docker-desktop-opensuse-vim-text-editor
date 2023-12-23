FROM opensuse/leap:latest

ENV APP vim

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

RUN zypper update -y

RUN zypper install -y $APP

RUN useradd $USERNAME

ENV HOME /home/$USERNAME

USER $USERNAME

CMD "${APP}"
