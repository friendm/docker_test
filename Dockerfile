FROM python:3.10-slim-bullseye

RUN apt-get update -q && apt-get install -y build-essential

RUN pip3 install mljar-mercury

RUN mkdir /jupyter

WORKDIR /jupyter

COPY payer_mix.ipynb .

CMD [ "mercury", "run", "/jupyter/payer_mix" ]