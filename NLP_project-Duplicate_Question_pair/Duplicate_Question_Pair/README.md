
# Duplicate Question Pair Application

This application identifies duplicate question pairs using machine learning techniques. The project includes two Python files and two pickle files:
- `features.py`: Generates features and creates arrays.
- `final_app.py`: Loads a machine learning model from `model.pkl` and predicts whether two questions are duplicates.
- `word2vec_model.pkl`: Contains the trained Word2Vec model used in feature generation.

## Requirements

- Python 3.11
- `scikit-learn` 1.2.2
- `scipy` 1.12.0
- `beautifulsoup4`
- `nltk`
- `gensim`
- `fuzzywuzzy`
- `numpy`
- `pandas`
- `streamlit`

## Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/your-repo/duplicate-question-pair.git
   cd duplicate-question-pair
