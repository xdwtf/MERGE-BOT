FROM python:latest

ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg
RUN curl https://rclone.org/install.sh | bash
RUN python -m pip install --upgrade pip

WORKDIR /usr/src/app

COPY . .

RUN curl -O https://raw.githubusercontent.com/yashoswalyo/MERGE-BOT/master/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir

CMD ./x.sh
