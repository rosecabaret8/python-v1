FROM python:3.8
Run mkdir /app
WORKDIR /app

COPY projetPython.tar.gz .
RUN tar -xzf projetPython.tar.gz .
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt
COPY  app.py /app
WORKDIR /app
CMD python app.py