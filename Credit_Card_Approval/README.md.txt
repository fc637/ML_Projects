Credit Card Approval Prediction Project
Overview
This project aims to predict credit card approval status using machine learning techniques. The dataset contains various features such as age, income, occupation, and education, among others, which are used to predict whether a credit card application will be accepted or rejected.



Hypotheses
Hypothesis 1: Individuals with higher annual income are more likely to get credit card approval.
Hypothesis 2: The Gradient Boosting Algorithm-based machine learning model predicts credit card approval status accurately.



Data Preprocessing and Analysis : 

Exploratory Data Analysis (EDA) was conducted to understand the distribution of age, work experience, and annual income.
The relationship between occupation and phone ownership, as well as marital status and having children, was explored.
Missing values in numerical columns were filled using mean or median values, and the distribution was analyzed before and after filling.
T-tests were performed to test Hypothesis 1.
Encoding (nominal and ordinal) and feature scaling were applied to prepare the data for modeling.
The dataset was split into training and testing sets.
Recursive Feature Selection (RFE) using HistGradientBoostingClassifier was employed for feature selection.



Machine Learning Models


The following machine learning models were used to predict credit card approval status:

1. Logistic Regression
2. Gradient Boosting
3. Random Forest
4. Support Vector Machine (SVM)


Model Performance

Logistic Regression: Accuracy - 87.10%
Gradient Boosting: Accuracy - 86.45%
Random Forest: Accuracy - 92.90%
SVM: Accuracy - 87.10%


Conclusion

The Random Forest model achieved the highest accuracy in predicting credit card approval status. The project demonstrates the effectiveness of machine learning techniques in predicting financial outcomes based on applicant information. Further optimization and model refinement can be explored to improve prediction accuracy further.