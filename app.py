from flask import Flask
# Создаётся объект flask
app = Flask(__name__)
# Маршрут ping, возвращает ok
@app.route("/ping")
def ping():
    return {"status": "ok"}
# Приложение доступно со всех интерфейсов внутри контейнера, слушает на 5000 порту
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
