import pandas as pd

df_train = pd.read_csv("dataset/train.csv")

examples = []
for index, row in df_train.iterrows():
    print(row[7])