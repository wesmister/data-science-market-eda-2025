import pandas as pd

df = pd.read_csv("ds_salaries.csv")

# Strip whitespace from column names
df.columns = df.columns.str.strip()

# Drop duplicates
df.drop_duplicates(inplace=True)

# Map experience level
experience_map = {
    'EN': 'Entry-Level', 'MI': 'Mid-Level', 
    'SE': 'Senior-Level', 'EX': 'Executive'
}
if 'experience_level' in df.columns:
    df['experience_level'] = df['experience_level'].map(experience_map)

# Map employment type
employment_map = {
    'FT': 'Full-Time', 'PT': 'Part-Time', 
    'CT': 'Contract', 'FL': 'Freelance'
}
if 'employment_type' in df.columns:
    df['employment_type'] = df['employment_type'].map(employment_map)

# Map company size
company_size_map = {'S': 'Small', 'M': 'Medium', 'L': 'Large'}
if 'company_size' in df.columns:
    df['company_size'] = df['company_size'].map(company_size_map)

# Save cleaned dataset
df.to_csv("ds_salaries_cleaned.csv", index=False)
