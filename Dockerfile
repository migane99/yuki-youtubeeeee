FROM python:3.9-buster
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT [ "uvicorn","--port","$PORT","--host","0.0.0.0","main:app" ]
