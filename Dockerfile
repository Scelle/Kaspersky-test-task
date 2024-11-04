# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем зависимости
RUN pip install Flask

# Копируем файлы приложения в контейнер
COPY app.py /app/app.py
WORKDIR /app

# Запускаем Flask-приложение
CMD ["python", "app.py"]
