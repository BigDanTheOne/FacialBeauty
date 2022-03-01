FROM python:3.8
RUN apt-get update && apt-get -y install cmake protobuf-compiler
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN /usr/local/bin/python -m pip install --upgrade pip
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt;
WORKDIR "./inference/"
CMD [ "python", "inference_fbp.py" ]
