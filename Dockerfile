FROM python:alpine3.10

WORKDIR /app
COPY /solderpy  /app
EXPOSE 5000
RUN python -m pip install pipenv
RUN python -m pipenv install

CMD python -m pipenv run app