import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

df = pd.read_csv('job market and employment1.csv.csv')
print(df.head(10))

# print(df.isnull().sum())
# df = df.dropna(subset=['salary', 'department', 'left'])  


# num_cols = df.select_dtypes(include='number').columns
# print(df[num_cols].describe().T)  


# avg_salary = df.groupby('department')['salary'].mean()
# highest = avg_salary.idxmax()
# lowest  = avg_salary.idxmin()
# print(f'Highest avg salary: {highest} (${avg_salary[highest]:,.0f})')
# print(f'Lowest avg salary : {lowest} (${avg_salary[lowest]:,.0f})')


# corr = df[num_cols].corr()
# plt.figure(figsize=(10,8))
# sns.heatmap(corr, annot=True, cmap='coolwarm', fmt='.2f')
# plt.title('Correlation Matrix')
# plt.show()


# sns.countplot(x='left', data=df)
# plt.title('Employees who Left vs Stayed')
# plt.xlabel('Left (1 = yes, 0 = no)')
# plt.show()


# attrition = df.groupby('department')['left'].mean().sort_values(ascending=False)
# print('Attrition rate per department:\n', attrition)