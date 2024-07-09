import streamlit as st
import features_1
import pickle
import urllib.request
import os

# Use raw string to handle backslashes in Windows path
file_path = r'C:\\Users\\fanis\\Documents\\ML_Projects\\NLP_project-Duplicate_Question_pair\\Duplicate_Question_Pair\\ML_model.pkl'
# local_filePath=r'C:\\Users\\fanis\\Downloads\\ML_model.pkl'
url='https://drive.google.com/file/d/1JsrekAsDl7WrfgDwVErq7qxiT2FX7iMo/view?usp=sharing'
# Load the model
# with open(file_path, 'rb') as file:
#     model = pickle.load(file)

# model = pickle.load(open(file_path,'rb'))
if not os.path.exists(file_path):
    st.write("Downloading ML model...")
    urllib.request.urlretrieve(url, file_path)
    st.write("Download ML model completed.")

model = pickle.load(open(file_path, 'rb'))
print("ML Model loaded successfully!")
# model = pickle.load(open('model.pkl','rb'))

st.header('Duplicate Question Pairs')

q1 = st.text_input('Enter question 1')
q2 = st.text_input('Enter question 2')

if st.button('Find'):
    query = features.query_point_creator(q1,q2)
    result = model.predict(query)[0]

    if result:
        st.header('Duplicate')
    else:
        st.header('Not Duplicate')