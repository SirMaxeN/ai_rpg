import csv

file_path = r"model_ai_rpg.csv"


try:
    file = open(file_path, "r", encoding="utf-8")
    print(f"File {file_path} opened succesfully")
    file.close()
except FileNotFoundError:
    print(f"Error: File not found at path: {file_path}")
except Exception as e:
    print(f"An error occured: {e}")
