FROM python

WORKDIR /app

EXPOSE 5001


COPY ./requirements.txt /app
RUN pip install -r requirements.txt
COPY . .


COPY . ./

CMD ["python", "server.py"]
