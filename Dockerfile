FROM python:3.9-alpine3.13
LABEL maintainer="londonappdeveloper.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8089

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt -i https://mirrors.aliyun.com/pypi/simple && \
    rm -rf /tmp && \
    adduser \
        -u 1001 \
        --disabled-password \
        --no-create-home \
        django-user && \
    chown django-user:django-user -R /app/ && \
    chmod +x /app

ENV PATH="/py/bin:$PATH"
-- RUN chown django-user:django-user -R /app/
-- RUN chmod +x /app
USER django-user
