FROM python:3.11-slim

# Set the working directory to /app
WORKDIR /app

RUN pip install git+https://github.com/suno-ai/bark.git

COPY ./fetch_models.py .

RUN python fetch_models.py

COPY ./main.py

CMD ["tail", "-f", "/dev/null"]