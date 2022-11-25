# Dockerized Flask Microservice hosted on AWS Elastic Beanstalk built using Machine Learning Pipeline
In this project I'm using the pipeline I built [here](https://github.com/Bhalu77/Sentiment-Analysis-for-6-Basic-Emotion/blob/main/Sentiment%20Analysis/Deploy.py).

I made a flask application out of the machine learning pipeline and then dockerized the application using docker, by using commands:
- Install docker: pip install docker
- Login to docker: docker login
- Building docker Image: docker build -t demo:app .     [You can change the name to what you want]
- Running the docker Image: docker run -it --rm -p 5000:5000 demo:app     [You can change the name to what you want and port to whatever port you are using]

Then I deployed the docker image to Amazon Web Services Elastic Beanstalk using the cli commands:
- Install Elastic Beanstalk Cli: pip install awsebcli
- Initiate Elastic Beanstalk: eb init -p docker [Application Name]. 
- I have used region eu-west-3 which is Paris but you can use whichever region is closest to you. You can edit this in .elasticbeanstalk folder in the configure.yml file which is created after eb init (initialization) command.
- Run locally to see if it works properly before Deployment: eb local run --port 5000 [You can use whatever port you're using]
- Create Elastic Beanstalk Environment: eb create [Enivironment Name]-env

**Now the environment is created as you can see below**:

<img width="1440" alt="AWS Elastic Beanstalk" src="https://user-images.githubusercontent.com/86623567/203917314-c2da5361-bf70-4564-ba25-18f8d68ae3a7.png">
