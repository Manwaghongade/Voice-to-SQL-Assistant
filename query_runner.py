import sqlite3
import pandas as pd

def run_sql_query(sql_query):
    try:
        conn = sqlite3.connect("hr.db")
        df = pd.read_sql_query(sql_query, conn)
        conn.close()
        return df
    except Exception as e:
        return pd.DataFrame({"Error": [str(e)]})
