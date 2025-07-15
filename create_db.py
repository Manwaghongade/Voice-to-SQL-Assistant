import sqlite3

conn = sqlite3.connect("hr.db")
cursor = conn.cursor()

with open("hr_dashboard_data.sql", "r") as f:
    sql_script = f.read()

cursor.executescript(sql_script)
conn.commit()
conn.close()

print("✅ HR database created successfully.")
