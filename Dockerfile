FROM python:3.10.10-alpine

WORKDIR /app
COPY /solderpy  /app
EXPOSE 5000
ENV APP_URL=0.0.0.0
ENV APP_PORT=5000
RUN python -m pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --dev --deploy --ignore-pipfile

CMD ["pipenv", "run", "python", "app.py"]