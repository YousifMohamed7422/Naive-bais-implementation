Weather Game Prediction System (R Project)

📌 Project Overview

This project aims to build a classification system in R that predicts whether a game should be played or not based on weather conditions. The dataset contains categorical weather attributes, and the project focuses on model evaluation using multiple performance metrics and visualization techniques.

The project is designed as an academic and practical application of data classification, evaluation metrics, and ROC analysis using R.


**🎯 Project Objectives : **

Load and explore the weather dataset in R Studio
Build a classification model to decide whether to play the game based on weather conditions


Evaluate the model using:

1. Confusion Matrix
2. Accuracy
3. Precision
4. Sensitivity (Recall)
5. F1 Score
6. Error Rate
7. Plot and analyze the ROC Curve (Receiver Operating Characteristic)


Tools & Technologies

Programming Language: R

Environment: R Studio

Libraries Used:

caret

e1071

pROC

ggplot2


⚙️ Project Workflow

1. Load the dataset (Weather_New_2.csv)
2. Convert variables to categorical (factor) data types
3. Split the dataset into training and testing sets
4. Train a classification model
5. Generate predictions
6. Create a confusion matrix
7. Calculate performance metrics
8. Plot the ROC curve



📊 Model Evaluation Metrics

Accuracy: Measures overall correctness
Precision: Measures correctness of positive predictions
Sensitivity (Recall): Measures ability to detect positive cases
F1 Score: Harmonic mean of precision and recall
Error Rate: Measures incorrect predictions
ROC Curve: Visualizes model performance across thresholds

 
📈 ROC Curve

The ROC curve illustrates the trade-off between True Positive Rate and False Positive Rate, helping to evaluate the classification model’s performance visually.


**Results:**
The model successfully predicts whether the game should be played based on weather conditions. Performance metrics and ROC analysis provide insights into the effectiveness of the classification system.
