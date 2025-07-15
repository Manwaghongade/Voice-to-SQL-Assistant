def text_to_sql(user_input):
    user_input = user_input.lower().strip()

    if "employee details" in user_input or "all employees" in user_input:
         return "SELECT * FROM employees;"
    
    elif "average salary by department" in user_input:
         return "SELECT department, AVG(salary) FROM employees GROUP BY department;"
    
    elif "hiring trend" in user_input or "employees hired per year" in user_input:
         return "SELECT STRFTIME('%Y', hire_date) AS year, COUNT(*) FROM employees GROUP BY year ORDER BY year;"
    
    elif "attrition by department" in user_input or "department wise attrition" in user_input:
         return "SELECT department, attrition_flag, COUNT(*) FROM employees GROUP BY department, attrition_flag;"

    elif "recruitment channel" in user_input:
         return "SELECT recruitment_channel, COUNT(*) FROM employees GROUP BY recruitment_channel;"

    elif "performance summary" in user_input or "count by performance" in user_input:
         return "SELECT performance_score, COUNT(*) FROM employees GROUP BY performance_score;"

    elif "marital status" in user_input:
        return "SELECT marital_status, COUNT(*) FROM employees GROUP BY marital_status;"
    
    elif "total employees" in user_input or "headcount" in user_input:
        return "SELECT COUNT(*) FROM employees;"

    elif "male vs female" in user_input or "gender ratio" in user_input:
        return "SELECT gender, COUNT(*) FROM employees GROUP BY gender;"
    
    elif "attrition by gender" in user_input:
        return "SELECT gender, attrition_flag, COUNT(*) FROM employees GROUP BY gender, attrition_flag;"

    elif "resignation by gender by department" in user_input or "resigned male and female" in user_input:
        return "SELECT department, gender, COUNT(*) FROM employees WHERE attrition_flag = 'Yes' GROUP BY department, gender;"

    elif "total active" in user_input:
         return "SELECT COUNT(*) FROM employees WHERE status = 'Active';"

    elif "total resignations" in user_input or "resigned employees count" in user_input:
         return "SELECT COUNT(*) FROM employees WHERE attrition_flag = 'Yes';"
    
    elif "average tenure of active" in user_input:
         return "SELECT AVG(years_at_company) FROM employees WHERE status = 'Active';"

    elif "average tenure of resigned" in user_input:
         return "SELECT AVG(years_at_company) FROM employees WHERE attrition_flag = 'Yes';"
    
    elif "gender by age group" in user_input:
         return "SELECT age_group, gender, COUNT(*) FROM employees GROUP BY age_group, gender;"
    
    elif "attrition by performance" in user_input:
         return "SELECT performance_score, attrition_flag, COUNT(*) FROM employees GROUP BY performance_score, attrition_flag;"

    elif "age group distribution" in user_input or "distribution by age group" in user_input:
        return "SELECT age_group, COUNT(*) FROM employees GROUP BY age_group;"
    
    elif "tenure by department" in user_input or "average tenure by department" in user_input:
        return "SELECT department, AVG(years_at_company) FROM employees GROUP BY department;"
    
    elif "gender-wise" in user_input or "male and female employees" in user_input:
        return "SELECT gender, COUNT(*) FROM employees GROUP BY gender;"

    else:
        return "-- Sorry, I don't understand this question. Try another one."
