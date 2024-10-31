from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    age = None
    if request.method == 'POST':
        birth_year = int(request.form['birth_year'])
        age = 2024 - birth_year  # Calculate age
    return render_template('index.html', age=age)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
