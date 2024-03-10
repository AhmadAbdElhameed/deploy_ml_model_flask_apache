# Flask Predict API

- Flask Predict API is a Python Flask application that provides an API for making predictions using a machine learning model. It's deployed with Apache2 and mod_wsgi.

## Features

    - Provides endpoints for making predictions:
        /predict: Predicts the class based on input features passed as query parameters.
        /predict_file: Predicts the classes for data provided in a CSV file uploaded via a POST request.
    - Uses Swagger UI for API documentation.
    - Deployed with Apache2 and mod_wsgi.

## Installation
- Clone the repository:
```
git clone https://github.com/AhmadAbdElhameed/flask-predict-api.git
cd flask-predict-api

```
- Install the required Python packages:
```
pip install -r requirements.txt

```
- Install Apache2 and mod_wsgi:

```
sudo apt-get install apache2 libapache2-mod-wsgi-py3
```
## Usage

- Start the Flask application:
```
python predict_flask_api.py
```

- Access the Swagger API documentation at http://localhost:5000/apidocs/ in your web browser.
- Make predictions using the provided endpoints (/predict and /predict_file).

## Deployment with Apache2 and mod_wsgi

- Build the Docker image:
```
docker build -t flask-predict-api .

```
- Run the Docker container:
```
docker run -d -p 8000:8000 flask-predict-api

```
- Access the API documentation at http://localhost:8000/apidocs/ in your web browser.


## Project Structure

    **predict_flask_api.py**: Main Flask application file.
    **predict_flask_api.wsgi**: WSGI script file for mod_wsgi.
    **requirements.txt**: List of Python dependencies.
    **README.md**: Project documentation.
    **Dockerfile**: to continized your app
    **rf.pkl**: model file
