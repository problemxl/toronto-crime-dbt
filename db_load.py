import pandas as pd
from sqlalchemy import create_engine

# Load the CSV file into a DataFrame
df = pd.read_csv("Neighbourhood_Crime_Rates_Open_Data.csv")

# Create an engine that connects to PostgreSQL
engine = create_engine("postgresql://admin:LocalPasswordOnly@localhost:5432/postgres")

# Write records stored in a DataFrame to a SQL database
df.to_sql(
    "raw_crime_data",
    engine,
    if_exists="replace",
    index=False,
    schema="toronto_crime",
)
