# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем зависимости
RUN pip install flask

# Копируем код приложения
COPY app.py /app/app.py

# Указываем рабочую директорию
WORKDIR /app

# Запускаем приложение
CMD ["python", "app.py"]

