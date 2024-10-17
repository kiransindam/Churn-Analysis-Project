from flask import Flask, request, render_template, jsonify
import joblib
import pandas as pd

# Load the trained model
model = joblib.load('model.pkl')

# Initialize the Flask app
app = Flask(__name__)

# Home route to display the form
@app.route('/')
def home():
    return render_template('churn.html')

# Route to make predictions
@app.route('/predict', methods=['POST'])
def predict():
    try:
        # Extract the form data
        credit_score = float(request.form['credit_score'])
        country = request.form['country']
        gender = request.form['gender']
        age = int(request.form['age'])
        tenure = int(request.form['tenure'])
        balance = float(request.form['balance'])
        products_number = int(request.form['products_number'])
        credit_card = int(request.form['credit_card'])
        active_member = int(request.form['active_member'])
        estimated_salary = float(request.form['estimated_salary'])

        # Create a DataFrame for the input data
        input_data = pd.DataFrame([[credit_score, country, gender, age, tenure, balance, products_number, credit_card, active_member, estimated_salary]],
                                  columns=['credit_score', 'country', 'gender', 'age', 'tenure', 'balance', 'products_number', 'credit_card', 'active_member', 'estimated_salary'])

        # Encode categorical variables
        input_data = pd.get_dummies(input_data, columns=['country', 'gender'], drop_first=True)

        # Ensure that all expected columns are present in the input data
        # Assuming that your model was trained with these columns
        model_columns = ['credit_score', 'age', 'tenure', 'balance', 'products_number', 'credit_card', 'active_member', 'estimated_salary',
                         'country_Germany', 'country_Spain', 'gender_Male']
        for col in model_columns:
            if col not in input_data.columns:
                input_data[col] = 0

        # Reorder columns to match the training data
        input_data = input_data[model_columns]

        # Make prediction
        prediction = model.predict(input_data)

        # Interpret the prediction
        result = 'Churn' if prediction[0] == 1 else 'No Churn'

        # Return the result
        return render_template('Churn.html', prediction_text=f'Prediction: {result}')

    except Exception as e:
        return jsonify({'error': str(e)})

# Run the Flask app
if __name__ == '__main__':
    app.run(debug=True)
