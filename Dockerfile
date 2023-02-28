FROM python:3.10.10-alpine

WORKDIR /app
COPY /solderpy  /app
EXPOSE 5000
RUN python -m pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --dev --deploy --ignore-pipfile

CMD ["pipenv", "run", "python", "app.py"]