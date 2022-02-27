FROM python:3.8
RUN /usr/local/bin/python -m pip install --upgrade pip
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt; exit 0


CMD [ "python", "inference/inference_fbp.py" ]
