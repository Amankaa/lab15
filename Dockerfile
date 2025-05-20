# Python 3.11 суурьтай дүрс ашиглана
FROM python:3.11-slim

# Ажиллах фолдер
WORKDIR /app

# Кодыг Docker container дотор хуулна
COPY . .

# Хамааралтай модулиудыг суулгана
RUN pip install --upgrade pip && pip install -r requirements.txt

# App-г ажиллуулах команд
CMD ["python", "app.py"]
