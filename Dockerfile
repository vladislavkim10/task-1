# Базовый образ
FROM python:3.9-slim
# Рабочая директория внутри контейнера
WORKDIR /app
# Копирование файла зависимостей внутрь контейнера
COPY requirements.txt .
# Установка зависимостей без сохранения кэша
RUN pip install --no-cache-dir -r requirements.txt
# Копируем нужные файлы внутрь
COPY app.py .
# Указываем какой порт используется внутри для документации
EXPOSE 5000
# Команда выполняемая при старте контейнера
CMD ["python", "app.py"]
