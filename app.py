from flask import Flask, jsonify, request
from util import prediction

application = Flask(__name__)

@application.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()
    sample = data['text']     
    pred = prediction(sample)
    result = jsonify(pred)
    return result
    
if __name__ == '__main__':
    application.run(host='0.0.0.0', debug= True)
