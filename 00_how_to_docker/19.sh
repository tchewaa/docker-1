#launches a container called Abthur with python image version 2-slim
docker run --name Abathur -v ~/:/root -p 3000:3000 -dit python:2-slim
#install flask using pip
docker exec Abathur pip install flask
#displaying "Hello World" with <h1> tags can be served by Flask.
echo 'from flask import Flask\napp = Flask(__name__)\n@app.route("/")\ndef hello_world():\n\treturn"<h1>Hello World</h1> "' > ~/app.py
#run the project
docker exec -e FLASK_APP=/root/app.py Abathur flask run --host=0.0.0.0 --port=3000