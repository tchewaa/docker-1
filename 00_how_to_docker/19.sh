#Launches a container called Abthur with python image version 2-slim
docker run --name Abathur -v ~/:/root -p 3000:3000 -dit python:2-slim
#Install flask using pip
docker exec Abathur pip install flask
#Displaying "Hello World" with <h1> tags can be served by Flask.
printf 'from flask import Flask\napp = Flask(__name__)\n@app.route("/")\ndef hello_world():\n\treturn"<h1>Hello World</h1> "' > ~/app.py
#execute the python app
docker exec -e FLASK_APP=/root/app.py Abathur flask run --host=0.0.0.0 --port=3000