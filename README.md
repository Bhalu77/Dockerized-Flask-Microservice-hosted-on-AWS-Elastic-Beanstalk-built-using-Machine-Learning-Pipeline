# Dockerized Flask Microservice hosted on AWS Elastic Beanstalk built using Machine Learning Pipeline
In this project I'm using the pipeline I built [here](https://github.com/Bhalu77/Sentiment-Analysis-for-6-Basic-Emotion/blob/main/Sentiment%20Analysis/Deploy.py).

I made a flask application out of the machine learning pipeline and then dockerized the application using docker, by using commands:
- Install docker: pip install docker
- Login to docker: docker login
- Building docker Image: docker build -t demo:app .     [You can change the name to what you want]
- Running the docker Image: docker run -it --rm -p 5000:5000 demo:app     [You can change the name to what you want and port to whatever port you are using]

Then I deployed the docker image to Amazon Web Services Elastic Beanstalk using the cli commands:
- Install Elastic Beanstalk Cli: pip install awsebcli
- Initiate Elastic Beanstalk: eb init -p docker [Application Name]
- Run locally to see if it works properly before Deployment: eb local run --port 5000 [You can use whatever port you're using]
- Create Elastic Beanstalk Environment: eb create [Enivironment Name]-env
