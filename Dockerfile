FROM rcarmo/ubuntu-python:3.7-onbuild-amd64
COPY . /videoweb
WORKDIR /videoweb
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN cp -a /videoweb /app
CMD python ./app.py
