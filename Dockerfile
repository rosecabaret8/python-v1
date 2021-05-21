FROM python:3.8

RUN mkdir /app


COPY projetPython.tar.gz /app
WORKDIR /app
RUN tar xzf projetPython.tar.gz 

WORKDIR projetPython
RUN pip install --no-cache-dir -r requirements.txt
CMD python app.py

