FROM python:alpine3.10
WORKDIR /app
COPY ./solder.py/  /app
RUN python -m pip install pipenv
RUN python -m pipenv install

CMD python -m pipenv run app