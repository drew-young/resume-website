FROM python:3.10-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY Young_Drew_Resume.pdf .
COPY robots.txt .
ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=8080"]
