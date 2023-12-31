FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY /src .

ENV PATH="/src:$PATH"

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]