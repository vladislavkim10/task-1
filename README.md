## Задание 1

# 🚀 Мини-приложение на Flask

Мини-проект на Flask, который возвращает статус "ok" при обращении к `/ping`.

---

## 🧾 Функциональность

- `GET /ping` — проверка доступности API  
  Возвращает JSON:
  ```json
  {"status": "ok"}
  
---

## 📍 Результаты работы:

```
➜  task1 docker build -t flask-app .  
[+] Building 1.8s (11/11) FINISHED 

➜  task1 docker run -d -p 5001:5000 --name flask-app flask-app
9d0bfb71060c4d5a82a5306ddc010b17be54b6bbc5b4e96101b09b53cd5e2dbc

➜  task1 docker ps -a | grep flask-app                        
9d0bfb71060c   flask-app   "python app.py"   6 seconds ago   Up 5 seconds   0.0.0.0:5001->5000/tcp   flask-app

➜  task1 curl http://localhost:5001/ping
{"status":"ok"}
```
