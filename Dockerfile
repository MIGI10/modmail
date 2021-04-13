FROM python:3.7-slim as py

ENV USING_DOCKER yes

COPY requirements.min.txt /
RUN pip install --no-cache-dir -r /requirements.min.txt && rm /requirements.min.txt

WORKDIR /modmailbot
CMD ["python", "bot.py"]