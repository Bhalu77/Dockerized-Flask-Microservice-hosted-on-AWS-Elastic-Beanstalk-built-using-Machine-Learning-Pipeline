FROM python:3.10.8

WORKDIR /app

COPY ["requirements.txt", "./"]

RUN pip install -r requirements.txt

RUN python -c "import nltk; nltk.download('averaged_perceptron_tagger'); nltk.download('wordnet'); nltk.download('omw-1.4'); nltk.download('stopwords');"

COPY . . 

EXPOSE 5000

ENTRYPOINT [ "gunicorn", "--bind=0.0.0.0:5000", "app:application" ]