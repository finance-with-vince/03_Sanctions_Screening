
import pandas as pd

# Read the sanctions list
sanctions_df = pd.read_csv(r'C:\Users\admin\Desktop\Finance\portfolio\03_Sanctions_Screening\sanctions_list.csv')

# Drop the 'Name' column
sanctions_df = sanctions_df.drop(columns=['Name'])

# Save the updated DataFrame back to the CSV
sanctions_df.to_csv(r'C:\Users\admin\Desktop\Finance\portfolio\03_Sanctions_Screening\sanctions_list.csv', index=False)

print("'Name' column removed from sanctions_list.csv.")
