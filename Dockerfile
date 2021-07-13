FROM python:2.7

LABEL maintainer="Yungang Feng"

COPY ./techtrends /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD [ "python", "init_db.py" ]

EXPOSE 3111
CMD [ "python", "app.py" ]

