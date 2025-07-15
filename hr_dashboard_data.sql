DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(50),
    job_title VARCHAR(100),
    hire_date DATE,
    termination_date DATE,
    status VARCHAR(20), -- Active, Terminated
    location VARCHAR(100),
    salary DECIMAL(10, 2),
    bonus DECIMAL(10,2),
    performance_score VARCHAR(20),
    training_hours INT,
    manager_id INT,
    marital_status VARCHAR(20),
    education_level VARCHAR(50),
    previous_company VARCHAR(50),
    years_at_company INT,
    last_promotion_date DATE,
    attrition_flag VARCHAR(10), -- Yes/No
    recruitment_channel VARCHAR(50),
    working_hours INT,
    commute_distance_km FLOAT
);

INSERT INTO employees VALUES (
        1, 'Karan', 'Desai', 'Male', 52, 'Marketing', 'Manager', '2017-03-20',
        NULL, 'Active', 'Mumbai', 96165, 7438, 'Excellent', 39,
        2, 'Single', 'PhD', 'Wipro', 10, '2022-05-22',
        'No', 'Internal', 39, 51
    );
INSERT INTO employees VALUES (
        2, 'Raj', 'Verma', 'Female', 58, 'Operations', 'Manager', '2021-01-07',
        NULL, 'Active', 'Chennai', 76027, 4254, 'Average', 30,
        3, 'Divorced', 'PhD', 'HCL', 20, '2024-11-05',
        'No', 'Naukri', 48, 45
    );
INSERT INTO employees VALUES (
        3, 'Manwa', 'Kumar', 'Male', 43, 'Marketing', 'Lead', '2015-05-04',
        '2015-05-08', 'Resigned', 'Delhi', 46914, 1167, 'Good', 39,
        3, 'Divorced', 'Master', 'Wipro', 5, '2022-08-23',
        'Yes', 'Internal', 42, 84
    );
INSERT INTO employees VALUES (
        4, 'Raj', 'Singh', 'Female', 53, 'Marketing', 'Coordinator', '2015-01-21',
        '2021-07-20', 'Terminated', 'Mumbai', 30476, 7129, 'Excellent', 6,
        2, 'Divorced', 'High School', 'TechM', 19, '2025-04-28',
        'Yes', 'Internal', 45, 17
    );
INSERT INTO employees VALUES (
        5, 'Manwa', 'Mishra', 'Female', 57, 'Sales', 'Developer', '2022-07-30',
        '2023-05-09', 'Terminated', 'Hyderabad', 118192, 6975, 'Good', 21,
        2, 'Single', 'High School', 'TechM', 2, '2022-08-10',
        'Yes', 'Naukri', 34, 73
    );
INSERT INTO employees VALUES (
        6, 'Karan', 'Ghongade', 'Male', 57, 'HR', 'Executive', '2015-01-29',
        NULL, 'Active', 'Chennai', 55383, 5344, 'Poor', 24,
        1, 'Divorced', 'Master', 'TechM', 12, '2024-11-07',
        'No', 'LinkedIn', 41, 7
    );
INSERT INTO employees VALUES (
        7, 'Priya', 'Sharma', 'Male', 44, 'Marketing', 'Manager', '2016-02-05',
        '2016-09-12', 'Terminated', 'Pune', 87975, 7331, 'Poor', 4,
        1, 'Single', 'Master', 'TechM', 6, '2018-12-17',
        'Yes', 'Website', 46, 36
    );
INSERT INTO employees VALUES (
        8, 'Priya', 'Joshi', 'Female', 60, 'Marketing', 'Executive', '2019-12-22',
        NULL, 'Active', 'Bangalore', 111336, 9140, 'Good', 5,
        8, 'Divorced', 'High School', 'TechM', 15, '2021-12-04',
        'No', 'Referral', 35, 59
    );
INSERT INTO employees VALUES (
        9, 'Amit', 'Singh', 'Female', 41, 'Marketing', 'Analyst', '2015-05-01',
        '2017-08-06', 'Terminated', 'Hyderabad', 112407, 1272, 'Excellent', 6,
        5, 'Divorced', 'PhD', 'Cognizant', 15, '2019-08-30',
        'Yes', 'LinkedIn', 34, 58
    );
INSERT INTO employees VALUES (
        10, 'Amit', 'Singh', 'Male', 24, 'Finance', 'Lead', '2016-11-21',
        NULL, 'Active', 'Mumbai', 62356, 9721, 'Excellent', 9,
        2, 'Married', 'High School', 'HCL', 8, '2017-06-14',
        'No', 'Internal', 45, 55
    );
INSERT INTO employees VALUES (
        11, 'Vikas', 'Kumar', 'Female', 51, 'Finance', 'Manager', '2021-07-27',
        '2024-07-30', 'Resigned', 'Chennai', 98362, 2100, 'Average', 24,
        7, 'Married', 'PhD', 'Wipro', 2, '2023-11-19',
        'Yes', 'Internal', 49, 49
    );
INSERT INTO employees VALUES (
        12, 'Priya', 'Yadav', 'Male', 48, 'HR', 'Coordinator', '2021-02-10',
        NULL, 'Active', 'Bangalore', 53319, 7945, 'Excellent', 13,
        8, 'Married', 'Bachelor', 'HCL', 9, '2024-11-06',
        'No', 'Website', 42, 88
    );
INSERT INTO employees VALUES (
        13, 'Karan', 'Joshi', 'Female', 44, 'Marketing', 'Manager', '2015-09-30',
        NULL, 'Active', 'Hyderabad', 115980, 4720, 'Average', 27,
        10, 'Single', 'High School', 'HCL', 0, '2019-01-29',
        'No', 'LinkedIn', 41, 90
    );
INSERT INTO employees VALUES (
        14, 'Manwa', 'Mishra', 'Female', 57, 'HR', 'Executive', '2015-08-16',
        '2024-06-25', 'Resigned', 'Delhi', 90656, 3055, 'Poor', 10,
        7, 'Single', 'High School', 'Cognizant', 8, '2022-10-30',
        'Yes', 'Naukri', 39, 71
    );
INSERT INTO employees VALUES (
        15, 'Priya', 'Desai', 'Female', 48, 'Marketing', 'Coordinator', '2016-02-27',
        '2024-04-11', 'Resigned', 'Pune', 111904, 7708, 'Excellent', 17,
        6, 'Single', 'High School', 'Infosys', 15, '2019-02-02',
        'Yes', 'Website', 48, 60
    );
INSERT INTO employees VALUES (
        16, 'Raj', 'Verma', 'Male', 55, 'Operations', 'Manager', '2015-01-12',
        '2018-09-16', 'Resigned', 'Mumbai', 106057, 7191, 'Poor', 27,
        10, 'Single', 'Master', 'HCL', 20, '2022-07-06',
        'Yes', 'Website', 41, 52
    );
INSERT INTO employees VALUES (
        17, 'Sneha', 'Desai', 'Female', 49, 'Marketing', 'Manager', '2020-12-27',
        '2022-02-07', 'Terminated', 'Chennai', 34518, 2874, 'Good', 14,
        9, 'Single', 'Master', 'TCS', 17, '2023-02-05',
        'Yes', 'Website', 33, 29
    );
INSERT INTO employees VALUES (
        18, 'Manwa', 'Kumar', 'Female', 39, 'HR', 'Lead', '2017-05-23',
        NULL, 'Active', 'Pune', 110062, 8318, 'Excellent', 38,
        6, 'Single', 'Master', 'HCL', 15, '2018-07-09',
        'No', 'Internal', 48, 76
    );
INSERT INTO employees VALUES (
        19, 'Manwa', 'Sharma', 'Female', 36, 'Finance', 'Developer', '2019-06-20',
        NULL, 'Active', 'Hyderabad', 51431, 8275, 'Good', 9,
        4, 'Divorced', 'Bachelor', 'TCS', 11, '2023-01-02',
        'No', 'Website', 38, 81
    );
INSERT INTO employees VALUES (
        20, 'Priya', 'Verma', 'Male', 56, 'HR', 'Executive', '2021-06-16',
        NULL, 'Active', 'Chennai', 69111, 8723, 'Good', 6,
        4, 'Married', 'Master', 'Wipro', 15, '2023-10-19',
        'No', 'Internal', 45, 46
    );
INSERT INTO employees VALUES (
        21, 'Priya', 'Desai', 'Male', 25, 'Sales', 'Lead', '2020-09-02',
        NULL, 'Active', 'Pune', 101416, 3800, 'Excellent', 21,
        6, 'Divorced', 'Master', 'Cognizant', 7, '2022-03-28',
        'No', 'Referral', 50, 25
    );
INSERT INTO employees VALUES (
        22, 'Raj', 'Sharma', 'Male', 26, 'Operations', 'Executive', '2019-03-22',
        NULL, 'Active', 'Chennai', 107550, 1962, 'Poor', 21,
        1, 'Married', 'High School', 'Infosys', 0, '2022-09-29',
        'No', 'Naukri', 32, 8
    );
INSERT INTO employees VALUES (
        23, 'Divya', 'Joshi', 'Male', 43, 'HR', 'Coordinator', '2015-03-08',
        NULL, 'Active', 'Delhi', 33011, 5377, 'Poor', 34,
        4, 'Married', 'Bachelor', 'Cognizant', 12, '2023-03-09',
        'No', 'Website', 33, 24
    );
INSERT INTO employees VALUES (
        24, 'Karan', 'Ghongade', 'Female', 56, 'Sales', 'Manager', '2016-02-25',
        NULL, 'Active', 'Bangalore', 69913, 3054, 'Good', 20,
        5, 'Married', 'Master', 'TCS', 0, '2019-10-12',
        'No', 'Internal', 40, 16
    );
INSERT INTO employees VALUES (
        25, 'Amit', 'Mishra', 'Male', 30, 'Operations', 'Executive', '2017-12-27',
        NULL, 'Active', 'Chennai', 65100, 6237, 'Good', 35,
        9, 'Married', 'High School', 'Infosys', 2, '2024-01-29',
        'No', 'Website', 42, 16
    );
INSERT INTO employees VALUES (
        26, 'Manwa', 'Patel', 'Male', 34, 'IT', 'Coordinator', '2020-03-04',
        NULL, 'Active', 'Hyderabad', 93485, 8449, 'Excellent', 15,
        7, 'Divorced', 'Master', 'HCL', 1, '2024-08-07',
        'No', 'LinkedIn', 35, 45
    );
INSERT INTO employees VALUES (
        27, 'Karan', 'Desai', 'Male', 23, 'Marketing', 'Coordinator', '2018-09-07',
        '2019-03-27', 'Terminated', 'Pune', 104562, 2238, 'Excellent', 40,
        6, 'Divorced', 'Master', 'HCL', 4, '2019-01-10',
        'Yes', 'Website', 35, 46
    );
INSERT INTO employees VALUES (
        28, 'Divya', 'Verma', 'Female', 32, 'HR', 'Developer', '2020-05-30',
        NULL, 'Active', 'Bangalore', 71444, 1767, 'Excellent', 35,
        2, 'Married', 'PhD', 'Infosys', 17, '2025-04-04',
        'No', 'LinkedIn', 30, 81
    );
INSERT INTO employees VALUES (
        29, 'Amit', 'Singh', 'Female', 32, 'HR', 'Analyst', '2019-12-12',
        NULL, 'Active', 'Pune', 109048, 2697, 'Excellent', 29,
        10, 'Single', 'High School', 'Infosys', 13, '2024-07-16',
        'No', 'Internal', 50, 20
    );
INSERT INTO employees VALUES (
        30, 'Ravi', 'Patel', 'Male', 48, 'Operations', 'Lead', '2022-06-14',
        NULL, 'Active', 'Chennai', 100194, 6611, 'Good', 13,
        1, 'Single', 'High School', 'Infosys', 14, '2025-04-18',
        'No', 'Internal', 35, 37
    );
INSERT INTO employees VALUES (
        31, 'Neha', 'Yadav', 'Female', 39, 'HR', 'Lead', '2021-09-09',
        NULL, 'Active', 'Pune', 113333, 2799, 'Good', 6,
        7, 'Single', 'Master', 'Cognizant', 16, '2022-03-16',
        'No', 'Internal', 36, 32
    );
INSERT INTO employees VALUES (
        32, 'Raj', 'Yadav', 'Male', 55, 'Finance', 'Analyst', '2019-12-06',
        NULL, 'Active', 'Chennai', 76410, 3458, 'Excellent', 21,
        4, 'Single', 'PhD', 'Wipro', 4, '2022-01-21',
        'No', 'Internal', 34, 11
    );
INSERT INTO employees VALUES (
        33, 'Vikas', 'Mishra', 'Female', 35, 'IT', 'Developer', '2015-07-07',
        NULL, 'Active', 'Mumbai', 65968, 1715, 'Poor', 23,
        4, 'Divorced', 'Bachelor', 'TCS', 0, '2019-08-06',
        'No', 'Naukri', 42, 18
    );
INSERT INTO employees VALUES (
        34, 'Amit', 'Yadav', 'Male', 60, 'Finance', 'Manager', '2016-05-01',
        NULL, 'Active', 'Bangalore', 70580, 3188, 'Poor', 20,
        10, 'Married', 'PhD', 'Infosys', 8, '2023-05-30',
        'No', 'Referral', 44, 27
    );
INSERT INTO employees VALUES (
        35, 'Neha', 'Mishra', 'Female', 48, 'Marketing', 'Manager', '2020-06-02',
        NULL, 'Active', 'Pune', 54283, 4320, 'Excellent', 37,
        4, 'Single', 'PhD', 'Infosys', 0, '2022-04-27',
        'No', 'Internal', 44, 31
    );
INSERT INTO employees VALUES (
        36, 'Amit', 'Kumar', 'Male', 54, 'HR', 'Coordinator', '2018-10-03',
        NULL, 'Active', 'Chennai', 52488, 8839, 'Poor', 39,
        7, 'Single', 'Bachelor', 'Infosys', 10, '2023-12-13',
        'No', 'Internal', 31, 59
    );
INSERT INTO employees VALUES (
        37, 'Ravi', 'Mishra', 'Male', 25, 'Finance', 'Lead', '2021-12-24',
        '2025-02-21', 'Resigned', 'Bangalore', 65488, 8117, 'Excellent', 3,
        5, 'Married', 'Bachelor', 'TechM', 10, '2025-06-24',
        'Yes', 'Internal', 34, 5
    );
INSERT INTO employees VALUES (
        38, 'Priya', 'Desai', 'Female', 46, 'HR', 'Analyst', '2021-08-19',
        NULL, 'Active', 'Chennai', 94925, 3635, 'Average', 5,
        6, 'Married', 'Master', 'Wipro', 20, '2022-04-13',
        'No', 'Internal', 39, 66
    );
INSERT INTO employees VALUES (
        39, 'Divya', 'Verma', 'Female', 52, 'HR', 'Developer', '2021-01-13',
        '2021-10-21', 'Terminated', 'Hyderabad', 69970, 4377, 'Average', 8,
        8, 'Single', 'Bachelor', 'Cognizant', 6, '2024-01-18',
        'Yes', 'Naukri', 45, 22
    );
INSERT INTO employees VALUES (
        40, 'Raj', 'Verma', 'Male', 23, 'HR', 'Coordinator', '2020-05-25',
        NULL, 'Active', 'Bangalore', 104708, 7921, 'Good', 3,
        9, 'Single', 'Bachelor', 'Cognizant', 15, '2022-10-04',
        'No', 'Website', 37, 64
    );
INSERT INTO employees VALUES (
        41, 'Sneha', 'Yadav', 'Female', 26, 'IT', 'Developer', '2016-08-22',
        NULL, 'Active', 'Mumbai', 99176, 4229, 'Excellent', 27,
        7, 'Married', 'High School', 'TechM', 16, '2025-05-08',
        'No', 'LinkedIn', 39, 63
    );
INSERT INTO employees VALUES (
        42, 'Divya', 'Mishra', 'Male', 35, 'HR', 'Manager', '2018-11-28',
        '2021-06-19', 'Resigned', 'Bangalore', 114489, 8873, 'Excellent', 25,
        10, 'Divorced', 'Bachelor', 'HCL', 7, '2021-02-17',
        'Yes', 'LinkedIn', 45, 51
    );
INSERT INTO employees VALUES (
        43, 'Priya', 'Verma', 'Male', 30, 'Sales', 'Coordinator', '2019-02-23',
        NULL, 'Active', 'Chennai', 73396, 2066, 'Average', 20,
        2, 'Married', 'Bachelor', 'HCL', 10, '2023-03-23',
        'No', 'LinkedIn', 36, 85
    );
INSERT INTO employees VALUES (
        44, 'Karan', 'Singh', 'Male', 47, 'Operations', 'Manager', '2022-09-21',
        NULL, 'Active', 'Chennai', 68223, 5865, 'Poor', 34,
        1, 'Married', 'PhD', 'Wipro', 5, '2025-06-08',
        'No', 'Internal', 48, 48
    );
INSERT INTO employees VALUES (
        45, 'Amit', 'Patel', 'Male', 29, 'Finance', 'Lead', '2018-03-09',
        NULL, 'Active', 'Chennai', 48436, 6006, 'Good', 8,
        5, 'Married', 'Master', 'Wipro', 9, '2024-11-10',
        'No', 'Internal', 47, 47
    );
INSERT INTO employees VALUES (
        46, 'Sneha', 'Verma', 'Female', 52, 'Operations', 'Coordinator', '2021-12-10',
        NULL, 'Active', 'Hyderabad', 110608, 8920, 'Average', 38,
        3, 'Married', 'Bachelor', 'HCL', 14, '2023-02-02',
        'No', 'Naukri', 50, 21
    );
INSERT INTO employees VALUES (
        47, 'Amit', 'Patel', 'Female', 53, 'Marketing', 'Coordinator', '2016-05-23',
        '2025-04-12', 'Resigned', 'Bangalore', 55839, 2205, 'Good', 16,
        1, 'Single', 'Master', 'Wipro', 14, '2023-09-07',
        'Yes', 'Naukri', 40, 15
    );
INSERT INTO employees VALUES (
        48, 'Sneha', 'Singh', 'Female', 39, 'Sales', 'Lead', '2022-03-24',
        NULL, 'Active', 'Bangalore', 115101, 5225, 'Excellent', 35,
        7, 'Divorced', 'PhD', 'TechM', 12, '2022-07-10',
        'No', 'Referral', 49, 83
    );
INSERT INTO employees VALUES (
        49, 'Sneha', 'Verma', 'Male', 48, 'Sales', 'Developer', '2018-09-27',
        '2019-08-27', 'Terminated', 'Bangalore', 73067, 8621, 'Good', 29,
        10, 'Divorced', 'High School', 'HCL', 17, '2020-04-02',
        'Yes', 'Naukri', 44, 67
    );
INSERT INTO employees VALUES (
        50, 'Manwa', 'Sharma', 'Male', 22, 'Finance', 'Executive', '2017-10-14',
        NULL, 'Active', 'Pune', 53232, 5608, 'Average', 8,
        8, 'Divorced', 'High School', 'Wipro', 14, '2018-03-27',
        'No', 'Internal', 44, 74
    );
INSERT INTO employees VALUES (
        51, 'Ravi', 'Desai', 'Female', 56, 'Finance', 'Executive', '2016-05-15',
        NULL, 'Active', 'Chennai', 48137, 8568, 'Average', 33,
        9, 'Married', 'Master', 'Cognizant', 13, '2021-09-05',
        'No', 'Internal', 35, 53
    );
INSERT INTO employees VALUES (
        52, 'Karan', 'Ghongade', 'Female', 24, 'IT', 'Coordinator', '2019-09-17',
        '2025-01-09', 'Terminated', 'Bangalore', 40177, 8398, 'Excellent', 2,
        4, 'Single', 'Bachelor', 'HCL', 2, '2021-09-04',
        'Yes', 'LinkedIn', 49, 7
    );
INSERT INTO employees VALUES (
        53, 'Priya', 'Joshi', 'Male', 23, 'Operations', 'Lead', '2016-06-17',
        NULL, 'Active', 'Delhi', 118574, 8975, 'Average', 10,
        9, 'Divorced', 'High School', 'Cognizant', 6, '2018-05-27',
        'No', 'Internal', 35, 24
    );
INSERT INTO employees VALUES (
        54, 'Amit', 'Mishra', 'Male', 36, 'Sales', 'Manager', '2019-07-03',
        NULL, 'Active', 'Delhi', 41358, 5061, 'Average', 23,
        5, 'Divorced', 'Bachelor', 'Infosys', 5, '2024-02-05',
        'No', 'Internal', 43, 53
    );
INSERT INTO employees VALUES (
        55, 'Vikas', 'Ghongade', 'Female', 42, 'Sales', 'Developer', '2020-07-30',
        '2024-09-22', 'Resigned', 'Pune', 45602, 7957, 'Excellent', 23,
        2, 'Single', 'Bachelor', 'Infosys', 2, '2025-05-28',
        'Yes', 'Referral', 34, 86
    );
INSERT INTO employees VALUES (
        56, 'Neha', 'Ghongade', 'Female', 32, 'IT', 'Executive', '2016-03-29',
        NULL, 'Active', 'Pune', 90986, 9063, 'Excellent', 32,
        7, 'Single', 'Bachelor', 'TCS', 12, '2020-11-03',
        'No', 'Internal', 36, 39
    );
INSERT INTO employees VALUES (
        57, 'Vikas', 'Kumar', 'Male', 28, 'Sales', 'Executive', '2015-05-05',
        NULL, 'Active', 'Chennai', 92004, 8851, 'Good', 39,
        7, 'Married', 'PhD', 'TCS', 8, '2023-03-07',
        'No', 'Website', 46, 21
    );
INSERT INTO employees VALUES (
        58, 'Manwa', 'Ghongade', 'Female', 34, 'Finance', 'Manager', '2022-12-01',
        NULL, 'Active', 'Mumbai', 51914, 7007, 'Excellent', 31,
        5, 'Married', 'PhD', 'TechM', 3, '2022-12-21',
        'No', 'Internal', 38, 79
    );
INSERT INTO employees VALUES (
        59, 'Manwa', 'Sharma', 'Female', 58, 'IT', 'Analyst', '2019-09-08',
        NULL, 'Active', 'Chennai', 110362, 4261, 'Average', 40,
        10, 'Married', 'Bachelor', 'TechM', 18, '2024-07-20',
        'No', 'LinkedIn', 30, 20
    );
INSERT INTO employees VALUES (
        60, 'Vikas', 'Desai', 'Female', 50, 'IT', 'Executive', '2015-07-30',
        NULL, 'Active', 'Bangalore', 68036, 2417, 'Average', 3,
        6, 'Single', 'PhD', 'TCS', 15, '2020-06-17',
        'No', 'Internal', 50, 50
    );
INSERT INTO employees VALUES (
        61, 'Karan', 'Yadav', 'Female', 56, 'IT', 'Coordinator', '2017-01-20',
        NULL, 'Active', 'Delhi', 63850, 1378, 'Excellent', 37,
        8, 'Divorced', 'PhD', 'TCS', 7, '2018-11-08',
        'No', 'Internal', 46, 10
    );
INSERT INTO employees VALUES (
        62, 'Raj', 'Kumar', 'Female', 39, 'IT', 'Developer', '2021-10-16',
        NULL, 'Active', 'Hyderabad', 86005, 4526, 'Good', 31,
        7, 'Single', 'High School', 'TCS', 8, '2023-02-26',
        'No', 'Internal', 35, 20
    );
INSERT INTO employees VALUES (
        63, 'Manwa', 'Singh', 'Female', 57, 'HR', 'Developer', '2019-04-21',
        '2020-09-24', 'Resigned', 'Chennai', 51675, 4362, 'Poor', 22,
        5, 'Divorced', 'Bachelor', 'TCS', 3, '2021-11-30',
        'Yes', 'Internal', 39, 22
    );
INSERT INTO employees VALUES (
        64, 'Raj', 'Verma', 'Male', 42, 'HR', 'Analyst', '2020-10-19',
        NULL, 'Active', 'Bangalore', 50714, 4699, 'Excellent', 24,
        1, 'Divorced', 'Bachelor', 'Cognizant', 11, '2024-05-12',
        'No', 'LinkedIn', 42, 34
    );
INSERT INTO employees VALUES (
        65, 'Priya', 'Yadav', 'Female', 50, 'IT', 'Executive', '2021-12-02',
        '2022-04-09', 'Resigned', 'Mumbai', 119381, 1630, 'Average', 10,
        10, 'Single', 'Master', 'TCS', 18, '2024-08-10',
        'Yes', 'Website', 41, 74
    );
INSERT INTO employees VALUES (
        66, 'Vikas', 'Desai', 'Female', 39, 'Sales', 'Executive', '2015-05-16',
        NULL, 'Active', 'Bangalore', 106443, 5820, 'Good', 7,
        2, 'Divorced', 'Bachelor', 'Cognizant', 6, '2020-02-26',
        'No', 'Referral', 35, 39
    );
INSERT INTO employees VALUES (
        67, 'Amit', 'Patel', 'Male', 52, 'Operations', 'Developer', '2019-07-14',
        NULL, 'Active', 'Pune', 74393, 2845, 'Average', 4,
        6, 'Married', 'Bachelor', 'TechM', 0, '2024-12-16',
        'No', 'LinkedIn', 39, 71
    );
INSERT INTO employees VALUES (
        68, 'Priya', 'Mishra', 'Female', 29, 'Sales', 'Executive', '2022-07-26',
        NULL, 'Active', 'Bangalore', 42910, 6914, 'Average', 23,
        2, 'Single', 'Bachelor', 'Wipro', 19, '2023-07-02',
        'No', 'LinkedIn', 42, 24
    );
INSERT INTO employees VALUES (
        69, 'Karan', 'Singh', 'Male', 57, 'HR', 'Coordinator', '2022-08-14',
        NULL, 'Active', 'Chennai', 56709, 1422, 'Good', 33,
        8, 'Married', 'Master', 'HCL', 1, '2023-11-09',
        'No', 'Internal', 47, 36
    );
INSERT INTO employees VALUES (
        70, 'Divya', 'Kumar', 'Male', 28, 'Marketing', 'Analyst', '2017-02-18',
        NULL, 'Active', 'Mumbai', 61954, 9444, 'Average', 12,
        6, 'Single', 'Master', 'HCL', 16, '2025-06-28',
        'No', 'Referral', 47, 66
    );
INSERT INTO employees VALUES (
        71, 'Priya', 'Kumar', 'Male', 42, 'HR', 'Lead', '2018-11-18',
        '2019-01-04', 'Resigned', 'Pune', 49717, 7556, 'Average', 15,
        3, 'Divorced', 'Master', 'Cognizant', 7, '2020-06-21',
        'Yes', 'LinkedIn', 39, 7
    );
INSERT INTO employees VALUES (
        72, 'Karan', 'Sharma', 'Male', 53, 'Finance', 'Developer', '2020-04-04',
        NULL, 'Active', 'Chennai', 41949, 1793, 'Poor', 39,
        1, 'Married', 'PhD', 'Wipro', 20, '2020-11-16',
        'No', 'Referral', 38, 87
    );
INSERT INTO employees VALUES (
        73, 'Priya', 'Ghongade', 'Female', 53, 'HR', 'Lead', '2017-03-09',
        NULL, 'Active', 'Pune', 56222, 1976, 'Good', 25,
        8, 'Divorced', 'Bachelor', 'Cognizant', 17, '2019-08-27',
        'No', 'Referral', 36, 69
    );
INSERT INTO employees VALUES (
        74, 'Neha', 'Joshi', 'Male', 58, 'HR', 'Coordinator', '2020-11-17',
        NULL, 'Active', 'Chennai', 103080, 7385, 'Good', 12,
        5, 'Divorced', 'PhD', 'Infosys', 3, '2021-04-15',
        'No', 'Referral', 38, 73
    );
INSERT INTO employees VALUES (
        75, 'Divya', 'Desai', 'Female', 23, 'Operations', 'Lead', '2017-12-17',
        '2018-05-08', 'Terminated', 'Pune', 100972, 2664, 'Good', 34,
        3, 'Single', 'High School', 'Wipro', 9, '2022-12-29',
        'Yes', 'LinkedIn', 31, 31
    );
INSERT INTO employees VALUES (
        76, 'Neha', 'Yadav', 'Female', 48, 'IT', 'Analyst', '2017-08-05',
        NULL, 'Active', 'Bangalore', 104273, 9319, 'Poor', 36,
        3, 'Married', 'Bachelor', 'TechM', 16, '2020-11-22',
        'No', 'LinkedIn', 42, 87
    );
INSERT INTO employees VALUES (
        77, 'Vikas', 'Sharma', 'Male', 32, 'IT', 'Analyst', '2022-09-12',
        NULL, 'Active', 'Pune', 72959, 9167, 'Poor', 36,
        7, 'Divorced', 'PhD', 'Cognizant', 10, '2024-07-01',
        'No', 'Internal', 43, 29
    );
INSERT INTO employees VALUES (
        78, 'Neha', 'Mishra', 'Male', 35, 'IT', 'Analyst', '2020-09-18',
        '2023-12-23', 'Terminated', 'Bangalore', 92795, 1921, 'Poor', 17,
        3, 'Single', 'Bachelor', 'Wipro', 14, '2022-01-07',
        'Yes', 'Naukri', 33, 30
    );
INSERT INTO employees VALUES (
        79, 'Karan', 'Ghongade', 'Male', 23, 'Operations', 'Developer', '2015-03-07',
        '2025-04-05', 'Resigned', 'Chennai', 109781, 4428, 'Average', 40,
        8, 'Divorced', 'Bachelor', 'TechM', 15, '2017-08-29',
        'Yes', 'Internal', 39, 32
    );
INSERT INTO employees VALUES (
        80, 'Ravi', 'Singh', 'Female', 27, 'HR', 'Coordinator', '2020-07-09',
        NULL, 'Active', 'Chennai', 35355, 2171, 'Poor', 29,
        5, 'Single', 'High School', 'HCL', 14, '2020-09-21',
        'No', 'Website', 40, 31
    );
INSERT INTO employees VALUES (
        81, 'Manwa', 'Kumar', 'Female', 34, 'IT', 'Executive', '2017-07-03',
        '2019-09-01', 'Resigned', 'Hyderabad', 67902, 4499, 'Poor', 25,
        7, 'Married', 'Master', 'TechM', 17, '2024-04-22',
        'Yes', 'Referral', 32, 12
    );
INSERT INTO employees VALUES (
        82, 'Sneha', 'Singh', 'Male', 43, 'HR', 'Manager', '2021-10-20',
        '2024-11-27', 'Terminated', 'Chennai', 68605, 2775, 'Poor', 10,
        4, 'Divorced', 'Bachelor', 'TechM', 1, '2021-10-27',
        'Yes', 'Naukri', 50, 81
    );
INSERT INTO employees VALUES (
        83, 'Vikas', 'Joshi', 'Female', 40, 'Operations', 'Manager', '2017-05-08',
        NULL, 'Active', 'Bangalore', 104437, 1536, 'Good', 14,
        5, 'Single', 'Bachelor', 'TechM', 3, '2021-01-24',
        'No', 'Internal', 30, 30
    );
INSERT INTO employees VALUES (
        84, 'Neha', 'Mishra', 'Female', 57, 'Finance', 'Coordinator', '2022-05-05',
        NULL, 'Active', 'Bangalore', 32991, 6134, 'Excellent', 33,
        6, 'Married', 'Bachelor', 'TCS', 8, '2024-08-19',
        'No', 'Naukri', 47, 85
    );
INSERT INTO employees VALUES (
        85, 'Vikas', 'Desai', 'Male', 56, 'Marketing', 'Executive', '2020-01-07',
        '2023-11-26', 'Resigned', 'Delhi', 59887, 7814, 'Poor', 2,
        3, 'Married', 'High School', 'TCS', 2, '2025-01-21',
        'Yes', 'Website', 34, 67
    );
INSERT INTO employees VALUES (
        86, 'Ravi', 'Kumar', 'Male', 31, 'Marketing', 'Lead', '2020-10-09',
        '2023-10-20', 'Resigned', 'Mumbai', 52407, 8437, 'Good', 37,
        4, 'Single', 'Bachelor', 'TCS', 2, '2025-02-18',
        'Yes', 'Internal', 31, 47
    );
INSERT INTO employees VALUES (
        87, 'Neha', 'Mishra', 'Male', 57, 'Marketing', 'Manager', '2017-12-11',
        NULL, 'Active', 'Hyderabad', 113024, 7024, 'Good', 4,
        5, 'Single', 'Bachelor', 'Cognizant', 10, '2023-08-22',
        'No', 'Referral', 44, 39
    );
INSERT INTO employees VALUES (
        88, 'Neha', 'Kumar', 'Female', 32, 'HR', 'Developer', '2015-03-01',
        NULL, 'Active', 'Hyderabad', 32131, 4404, 'Poor', 15,
        1, 'Single', 'PhD', 'Cognizant', 12, '2020-04-26',
        'No', 'Referral', 33, 25
    );
INSERT INTO employees VALUES (
        89, 'Neha', 'Verma', 'Female', 32, 'Sales', 'Developer', '2019-03-14',
        '2021-02-02', 'Resigned', 'Mumbai', 93138, 6194, 'Average', 9,
        1, 'Divorced', 'Master', 'Cognizant', 19, '2023-02-20',
        'Yes', 'Referral', 46, 53
    );
INSERT INTO employees VALUES (
        90, 'Sneha', 'Singh', 'Male', 56, 'HR', 'Executive', '2019-01-22',
        NULL, 'Active', 'Delhi', 82961, 9896, 'Excellent', 29,
        1, 'Divorced', 'High School', 'Infosys', 18, '2019-05-14',
        'No', 'LinkedIn', 32, 25
    );
INSERT INTO employees VALUES (
        91, 'Divya', 'Joshi', 'Female', 38, 'Marketing', 'Coordinator', '2016-06-03',
        NULL, 'Active', 'Delhi', 57294, 8275, 'Good', 24,
        9, 'Married', 'High School', 'Infosys', 10, '2019-08-12',
        'No', 'Referral', 32, 85
    );
INSERT INTO employees VALUES (
        92, 'Ravi', 'Kumar', 'Male', 31, 'HR', 'Developer', '2018-02-21',
        '2023-10-31', 'Terminated', 'Delhi', 91771, 3852, 'Excellent', 13,
        1, 'Married', 'High School', 'Infosys', 15, '2025-05-17',
        'Yes', 'Website', 47, 33
    );
INSERT INTO employees VALUES (
        93, 'Raj', 'Yadav', 'Male', 40, 'HR', 'Manager', '2020-01-29',
        NULL, 'Active', 'Bangalore', 39631, 9548, 'Average', 29,
        2, 'Married', 'High School', 'TechM', 2, '2021-09-25',
        'No', 'Website', 30, 44
    );
INSERT INTO employees VALUES (
        94, 'Manwa', 'Patel', 'Female', 22, 'HR', 'Executive', '2015-01-27',
        NULL, 'Active', 'Delhi', 51560, 3976, 'Average', 15,
        4, 'Divorced', 'Master', 'HCL', 14, '2016-01-23',
        'No', 'LinkedIn', 46, 10
    );
INSERT INTO employees VALUES (
        95, 'Sneha', 'Sharma', 'Female', 51, 'Sales', 'Analyst', '2016-05-22',
        NULL, 'Active', 'Mumbai', 61164, 2726, 'Average', 10,
        8, 'Married', 'High School', 'TechM', 19, '2024-03-08',
        'No', 'Internal', 32, 77
    );
INSERT INTO employees VALUES (
        96, 'Raj', 'Verma', 'Female', 56, 'Sales', 'Analyst', '2019-07-18',
        '2020-01-24', 'Terminated', 'Delhi', 73481, 7734, 'Good', 14,
        1, 'Single', 'High School', 'Wipro', 15, '2024-08-24',
        'Yes', 'Website', 39, 45
    );
INSERT INTO employees VALUES (
        97, 'Neha', 'Patel', 'Female', 29, 'Marketing', 'Executive', '2018-10-20',
        NULL, 'Active', 'Mumbai', 49415, 7551, 'Average', 34,
        2, 'Single', 'High School', 'Infosys', 14, '2020-09-24',
        'No', 'LinkedIn', 30, 7
    );
INSERT INTO employees VALUES (
        98, 'Manwa', 'Kumar', 'Male', 35, 'HR', 'Analyst', '2019-12-14',
        NULL, 'Active', 'Chennai', 94404, 9806, 'Poor', 33,
        2, 'Married', 'Bachelor', 'HCL', 19, '2025-03-18',
        'No', 'Referral', 37, 62
    );
INSERT INTO employees VALUES (
        99, 'Raj', 'Joshi', 'Female', 34, 'Marketing', 'Executive', '2022-05-29',
        NULL, 'Active', 'Chennai', 34718, 3685, 'Good', 32,
        8, 'Divorced', 'Master', 'TechM', 13, '2023-10-24',
        'No', 'Website', 49, 36
    );
INSERT INTO employees VALUES (
        100, 'Raj', 'Sharma', 'Male', 53, 'Finance', 'Manager', '2017-03-30',
        NULL, 'Active', 'Bangalore', 112843, 6703, 'Good', 6,
        1, 'Married', 'PhD', 'Wipro', 7, '2020-01-30',
        'No', 'LinkedIn', 47, 47
    );