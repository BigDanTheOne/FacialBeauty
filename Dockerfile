FROM python:3.8
RUN /usr/local/bin/python -m pip install --upgrade pip
COPY . .
RUN pip install -r req.txt; exit 0
RUN python interence/inference_fer.py