FROM rcarmo/ubuntu-python:3.7-onbuild-amd64
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD python ./app.py