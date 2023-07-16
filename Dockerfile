FROM python:3.11-slim-bullseye

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN apt-get update && apt-get install -y allure

CMD ["pytest", "--allure-dir=/app/report/allure-results", "tests/test_form.py"]
