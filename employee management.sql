create database employemanagement;
use employemanagaementsystem;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    HireDate DATE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
desc employees;
--------departments----------------------
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100),
    ManagerID INT,
    Budget DECIMAL(10, 2)
);
desc departments;
-----------roles-------------------
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY AUTO_INCREMENT,
    RoleName VARCHAR(100),
    Description TEXT,
    Salary DECIMAL(10, 2),
    EmployeeID INT
    DepartmentID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
desc roles;
----------Projects--------------------
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(10, 2),
    DepartmentID INT,
    EmployeeID INT
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
     FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
desc Projects;
----------Attendance--------------------
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    Date DATE,
    Status VARCHAR(20),
    HoursWorked DECIMAL(4, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
desc Attendance;
------------------------------EMPLOYEE_MANAGEMEMT_SYSTEM(INSERT OF 100 RECORDS)--------------------------------------------
--------------------------#employees-----------------------------------------------------------------------------
INSERT INTO Employees (FirstName, LastName, Email, HireDate, DepartmentID) VALUES
('Amaranath', 'Sharma', 'amarnath.sharma@gmail.com', '2020-01-15', 1),
('Vivaan', 'Verma', 'vivaan.verma@example.com', '2019-03-22', 2),
('Aditya', 'Singh', 'aditya.singh@example.com', '2021-06-30', 3),
('Vihaan', 'Gupta', 'vihaan.gupta@example.com', '2018-09-17', 4),
('Arjun', 'Mehta', 'arjun.mehta@example.com', '2022-02-25', 1),
('Sairam', 'Patel', 'sairam.patel@example.com', '2020-04-10', 2),
('Reyansh', 'Reddy', 'reyansh.reddy@example.com', '2019-07-19', 3),
('Ayaan', 'Nair', 'ayaan.nair@example.com', '2021-01-23', 4),
('Krishna', 'Iyer', 'krishna.iyer@example.com', '2022-03-15', 1),
('Ishaan', 'Chopra', 'ishaan.chopra@example.com', '2018-11-27', 2),
('Ananya', 'Goyal', 'ananya.goyal@example.com', '2020-06-19', 3),
('Diya', 'Shah', 'diya.shah@example.com', '2019-08-23', 4),
('Aadhya', 'Kumar', 'aadhya.kumar@example.com', '2021-05-11', 1),
('Pari', 'Agarwal', 'pari.agarwal@example.com', '2022-01-30', 2),
('Saanvi', 'Joshi', 'saanvi.joshi@example.com', '2018-10-05', 3),
('Anaya', 'Mishra', 'anaya.mishra@example.com', '2020-09-15', 4),
('Aarohi', 'Bansal', 'aarohi.bansal@example.com', '2019-02-12', 1),
('Aryan', 'Kapoor', 'aryan.kapoor@example.com', '2021-07-23', 2),
('Kabir', 'Malhotra', 'kabir.malhotra@example.com', '2018-12-03', 3),
('Ahaan', 'Chaturvedi', 'ahaan.chaturvedi@example.com', '2020-08-13', 4),
('Laksh', 'Rathore', 'laksh.rathore@example.com', '2019-04-19', 1),
('Aarush', 'Dwivedi', 'aarush.dwivedi@example.com', '2021-11-01', 2),
('Dhruv', 'Saxena', 'dhruv.saxena@example.com', '2019-09-10', 1),
('Ritvik', 'Jain', 'ritvik.jain@example.com', '2018-08-06',5),
('Dev', 'Saxena', 'dev.saxena@example.com', '2022-05-16', 3),
('Advait', 'Jain', 'advait.jain@example.com', '2019-10-01', 4),
('Ayaan', 'Ahuja', 'ayaan.ahuja@example.com', '2020-03-22', 1),
('Krish', 'Aggarwal', 'krish.aggarwal@example.com', '2021-09-14', 2),
('Atharv', 'Desai', 'atharv.desai@example.com', '2022-07-20', 3),
('Yuvaan', 'Bhatt', 'yuvaan.bhatt@example.com', '2018-06-05', 4),
('Arnav', 'Pandey', 'arnav.pandey@example.com', '2019-11-11', 1),
('Vivaan', 'Shukla', 'vivaan.shukla@example.com', '2020-12-25', 2),
('Aarav', 'Rana', 'aarav.rana@example.com', '2021-04-08', 3),
('Advik', 'Sethi', 'advik.sethi@example.com', '2022-09-29', 4),
('Arjun', 'Mathur', 'arjun.mathur@example.com', '2018-05-14', 1),
('Aaryan', 'Bharadwaj', 'aaryan.bharadwaj@example.com', '2019-12-19', 2),
('Reyansh', 'Tripathi', 'reyansh.tripathi@example.com', '2020-11-21', 3),
('Vihaan', 'Sharma', 'vihaan.sharma@example.com', '2021-02-18', 4),
('Ayaan', 'Verma', 'ayaan.verma@example.com', '2022-08-17', 1),
('Krishna', 'Singh', 'krishna.singh@example.com', '2018-04-28', 2),
('Ishaan', 'Gupta', 'ishaan.gupta@example.com', '2019-09-23', 3),
('Ananya', 'Mehta', 'ananya.mehta@example.com', '2020-05-09', 4),
('Diya', 'Patel', 'diya.patel@example.com', '2021-10-13', 1),
('Aadhya', 'Reddy', 'aadhya.reddy@example.com', '2022-02-27', 2),
('Pari', 'Nair', 'pari.nair@example.com', '2018-09-07', 3),
('Saanvi', 'Iyer', 'saanvi.iyer@example.com', '2019-06-18', 4),
('Anaya', 'Chopra', 'anaya.chopra@example.com', '2020-01-11', 1),
('Aarohi', 'Goyal', 'aarohi.goyal@example.com', '2021-12-02', 2),
('Aryan', 'Shah', 'aryan.shah@example.com', '2022-03-19', 3),
('Kabir', 'Kumar', 'kabir.kumar@example.com', '2018-08-20', 4),
('Ahaan', 'Agarwal', 'ahaan.agarwal@example.com', '2019-05-15', 1),
('Laksh', 'Joshi', 'laksh.joshi@example.com', '2020-07-28', 2),
('Aarush', 'Mishra', 'aarush.mishra@example.com', '2021-01-25', 3),
('Dev', 'Bansal', 'dev.bansal@example.com', '2022-06-30', 4),
('Advait', 'Kapoor', 'advait.kapoor@example.com', '2018-10-24', 1),
('Ayaan', 'Malhotra', 'ayaan.malhotra@example.com', '2019-11-13', 2),
('Krish', 'Chaturvedi', 'krish.chaturvedi@example.com', '2020-02-05', 3),
('Atharv', 'Rathore', 'atharv.rathore@example.com', '2021-07-09', 4),
('Yuvaan', 'Tandon', 'yuvaan.tandon@example.com', '2022-08-15', 1),
('Arnav', 'Singhal', 'arnav.singhal@example.com', '2018-12-04', 2),
('Vivaan', 'Saxena', 'vivaan.saxena@example.com', '2019-03-17', 3),
('Aarav', 'Dwivedi', 'aarav.dwivedi@example.com', '2020-05-22', 4),
('Advik', 'Jain', 'advik.jain@example.com', '2021-09-28', 1),
('Arjun', 'Ahuja', 'arjun.ahuja@example.com', '2022-01-14', 2),
('Aaryan', 'Aggarwal', 'aaryan.aggarwal@example.com', '2018-06-07', 3),
('Reyansh', 'Desai', 'reyansh.desai@example.com', '2019-10-11', 4),
('Vihaan', 'Bhatt', 'vihaan.bhatt@example.com', '2020-03-25', 1),
('Ayaan', 'Pandey', 'ayaan.pandey@example.com', '2021-11-09', 2),
('Krishna', 'Shukla', 'krishna.shukla@example.com', '2022-04-18', 3),
('Ishaan', 'Rana', 'ishaan.rana@example.com', '2018-07-29', 4),
('Ananya', 'Sethi', 'ananya.sethi@example.com', '2019-12-20', 1),
('Diya', 'Mathur', 'diya.mathur@example.com', '2020-11-23', 2),
('Aadhya', 'Bharadwaj', 'aadhya.bharadwaj@example.com', '2021-02-16', 3),
('Pari', 'Tripathi', 'pari.tripathi@example.com', '2022-08-19', 4),
('Saanvi', 'Sharma', 'saanvi.sharma@example.com', '2018-04-30', 1),
('Anaya', 'Verma', 'anaya.verma@example.com', '2019-09-22', 2),
('Aarohi', 'Singh', 'aarohi.singh@example.com', '2020-01-13', 3),
('Aryan', 'Gupta', 'aryan.gupta@example.com', '2021-12-03', 4),
('Kabir', 'Mehta', 'kabir.mehta@example.com', '2022-03-20', 1),
('Ahaan', 'Patel', 'ahaan.patel@example.com', '2018-08-18', 2),
('Laksh', 'Reddy', 'laksh.reddy@example.com', '2019-05-17', 3),
('Aarush', 'Nair', 'aarush.nair@example.com', '2020-07-26', 4),
('Dev', 'Iyer', 'dev.iyer@example.com', '2021-01-23', 1),
('Advait', 'Chopra', 'advait.chopra@example.com', '2022-06-28', 2),
('Ayaan', 'Goyal', 'ayaan.goyal@example.com', '2018-10-26', 3),
('Krish', 'Shah', 'krish.shah@example.com', '2019-11-15', 4),
('Atharv', 'Kumar', 'atharv.kumar@example.com', '2020-02-07', 1),
('Yuvaan', 'Agarwal', 'yuvaan.agarwal@example.com', '2021-07-11', 2),
('Arnav', 'Joshi', 'arnav.joshi@example.com', '2022-08-13', 3),
('Vivaan', 'Mishra', 'vivaan.mishra@example.com', '2018-12-06', 4),
('Aarav', 'Bansal', 'aarav.bansal@example.com', '2019-03-19', 1),
('Advik', 'Kapoor', 'advik.kapoor@example.com', '2020-05-24', 2),
('Arjun', 'Malhotra', 'arjun.malhotra@example.com', '2020-05-24', 2),
('Aaryan', 'Chaudhary', 'aaryan.chaudhary@example.com', '2021-09-30', 3),
('Reyansh', 'Rastogi', 'reyansh.rastogi@example.com', '2022-01-16', 4),
('Vihaan', 'Sarin', 'vihaan.sarin@example.com', '2018-06-09', 1),
('Ayaan', 'Khanna', 'ayaan.khanna@example.com', '2019-10-13', 2),
('Krishna', 'Kohli', 'krishna.kohli@example.com', '2020-03-27', 3),
('Ishaan', 'Chatterjee', 'ishaan.chatterjee@example.com', '2021-11-11', 4),
('Ananya', 'Mukherjee', 'ananya.mukherjee@example.com', '2022-04-20', 1);

SELECT * from Employees;
--------------------------#departments----------------------------------------------------------------------------

INSERT INTO Departments (DepartmentName, Location, ManagerID, Budget) VALUES
('Human Resources', 'Building A', 1, 50000.00),
('Engineering', 'Building B', 2, 150000.00),
('Marketing', 'Building C', 3, 75000.00),
('Sales', 'Building D', 4, 100000.00),
('Finance', 'Building E', 5, 120000.00),
('IT Support', 'Building F', 6, 80000.00),
('Research and Development', 'Building G', 7, 200000.00),
('Customer Service', 'Building H', 8, 60000.00),
('Logistics', 'Building I', 9, 90000.00),
('Procurement', 'Building J', 10, 70000.00),
('Legal', 'Building K', 11, 110000.00),
('Public Relations', 'Building L', 12, 65000.00),
('Quality Assurance', 'Building M', 13, 85000.00),
('Operations', 'Building N', 14, 130000.00),
('Product Development', 'Building O', 15, 140000.00),
('Training and Development', 'Building P', 16, 55000.00),
('Compliance', 'Building Q', 17, 95000.00),
('Risk Management', 'Building R', 18, 105000.00),
('Internal Audit', 'Building S', 19, 115000.00),
('Corporate Strategy', 'Building T', 20, 125000.00),
('Innovation', 'Building U', 21, 135000.00),
('Sustainability', 'Building V', 22, 145000.00),
('Health and Safety', 'Building W', 23, 75000.00),
('Investor Relations', 'Building X', 24, 85000.00),
('Supply Chain', 'Building Y', 25, 95000.00),
('Facility Management', 'Building Z', 26, 65000.00),
('Business Development', 'Building AA', 27, 115000.00),
('Corporate Communications', 'Building BB', 28, 125000.00),
('Data Analytics', 'Building CC', 29, 135000.00),
('E-commerce', 'Building DD', 30, 145000.00),
('Event Management', 'Building EE', 31, 55000.00),
('Government Affairs', 'Building FF', 32, 65000.00),
('Human Capital', 'Building GG', 33, 75000.00),
('Knowledge Management', 'Building HH', 34, 85000.00),
('Media Relations', 'Building II', 35, 95000.00),
('Member Services', 'Building JJ', 36, 105000.00),
('Office Management', 'Building KK', 37, 115000.00),
('Partnerships', 'Building LL', 38, 125000.00),
('Project Management', 'Building MM', 39, 135000.00),
('Retail Operations', 'Building NN', 40, 145000.00),
('Security', 'Building OO', 41, 55000.00),
('Social Media', 'Building PP', 42, 65000.00),
('Technical Support', 'Building QQ', 43, 75000.00),
('User Experience', 'Building RR', 44, 85000.00),
('Vendor Management', 'Building SS', 45, 95000.00),
('Warehouse Management', 'Building TT', 46, 105000.00),
('Web Development', 'Building UU', 47, 115000.00),
('Workplace Services', 'Building VV', 48, 125000.00),
('Brand Management', 'Building WW', 49, 135000.00),
('Change Management', 'Building XX', 50, 145000.00),
('Content Management', 'Building YY', 51, 55000.00),
('Corporate Governance', 'Building ZZ', 52, 65000.00),
('Cybersecurity', 'Building AAA', 53, 75000.00),
('Data Management', 'Building BBB', 54, 85000.00),
('Digital Marketing', 'Building CCC', 55, 95000.00),
('Diversity and Inclusion', 'Building DDD', 56, 105000.00),
('Employee Engagement', 'Building EEE', 57, 115000.00),
('Environmental Health', 'Building FFF', 58, 125000.00),
('Event Planning', 'Building GGG', 59, 135000.00),
('Facilities', 'Building HHH', 60, 145000.00),
('Field Operations', 'Building III', 61, 55000.00),
('Financial Planning', 'Building JJJ', 62, 65000.00),
('Fraud Prevention', 'Building KKK', 63, 75000.00),
('Global Operations', 'Building LLL', 64, 85000.00),
('Grants Management', 'Building MMM', 65, 95000.00),
('Hospitality', 'Building NNN', 66, 105000.00),
('HR Compliance', 'Building OOO', 67, 115000.00),
('Industrial Relations', 'Building PPP', 68, 125000.00),
('Information Security', 'Building QQQ', 69, 135000.00),
('Infrastructure', 'Building RRR', 70, 145000.00),
('Innovation Lab', 'Building SSS', 71, 55000.00),
('International Affairs', 'Building TTT', 72, 65000.00),
('Investor Services', 'Building UUU', 73, 75000.00),
('Knowledge Transfer', 'Building VVV', 74, 85000.00),
('Learning and Development', 'Building WWW', 75, 95000.00),
('Legal Compliance', 'Building XXX', 76, 105000.00),
('Market Research', 'Building YYY', 77, 115000.00),
('Member Relations', 'Building ZZZ', 78, 125000.00),
('Mobile Development', 'Building AAAA', 79, 135000.00),
('Network Operations', 'Building BBBB', 80, 145000.00),
('Organizational Development', 'Building CCCC', 81, 55000.00),
('Outreach', 'Building DDDD', 82, 65000.00),
('Partnership Development', 'Building EEEE', 83, 75000.00),
('Performance Management', 'Building FFFF', 84, 85000.00),
('Policy Development', 'Building GGGG', 85, 95000.00),
('Process Improvement', 'Building HHHH', 86, 105000.00),
('Product Management', 'Building IIII', 87, 115000.00),
('Program Management', 'Building JJJJ', 88, 125000.00),
('Public Affairs', 'Building KKKK', 89, 135000.00),
('Public Health', 'Building LLLL', 90, 145000.00),
('Quality Control', 'Building MMMM', 91, 55000.00),
('Regulatory Affairs', 'Building NNNN', 92, 65000.00),
('Research', 'Building OOOO', 93, 75000.00),
('Retail Development', 'Building PPPP', 94, 85000.00),
('Risk Assessment', 'Building QQQQ', 95, 95000.00),
('Sales Operations', 'Building RRRR', 96, 105000.00),
('Service Delivery', 'Building SSSS', 97, 115000.00),
('Strategic Planning', 'Building TTTT', 98, 125000.00),
('Talent Acquisition', 'Building UUUU', 99, 135000.00),
('Technology Transfer', 'Building VVVV', 100, 145000.00);

SELECT * from Departments;
--------------------------#roles----------------------------------------------------------------------------
INSERT INTO Roles (RoleName, Description, Salary, DepartmentID) VALUES
('Software Engineer', 'Develops and maintains software applications.', 70000.00, 1),
('Senior Software Engineer', 'Leads software development projects.', 90000.00, 1),
('HR Manager', 'Oversees HR department and manages employee relations.', 80000.00, 2),
('Recruiter', 'Sources and recruits candidates for open positions.', 50000.00, 2),
('Marketing Manager', 'Develops marketing strategies and campaigns.', 85000.00, 3),
('Content Writer', 'Creates content for marketing materials.', 45000.00, 3),
('Sales Executive', 'Drives sales and manages client relationships.', 60000.00, 4),
('Sales Manager', 'Leads the sales team and sets sales targets.', 85000.00, 4),
('IT Support Specialist', 'Provides technical support to employees.', 55000.00, 5),
('Network Administrator', 'Manages and maintains network infrastructure.', 70000.00, 5),
('Financial Analyst', 'Analyzes financial data and prepares reports.', 65000.00, 6),
('Accountant', 'Manages financial records and transactions.', 60000.00, 6),
('Project Manager', 'Leads and manages projects from inception to completion.', 90000.00, 7),
('Project Coordinator', 'Supports project managers in project execution.', 55000.00, 7),
('Customer Service Representative', 'Handles customer inquiries and complaints.', 40000.00, 8),
('Customer Service Manager', 'Manages the customer service team.', 70000.00, 8),
('Product Manager', 'Oversees product development and strategy.', 95000.00, 9),
('Product Designer', 'Designs and prototypes new products.', 75000.00, 9),
('Operations Manager', 'Manages daily operations and logistics.', 85000.00, 10),
('Operations Coordinator', 'Supports operations managers in daily tasks.', 50000.00, 10),
('Business Analyst', 'Analyzes business processes and recommends improvements.', 70000.00, 11),
('Data Analyst', 'Analyzes data to support business decisions.', 65000.00, 11),
('Legal Advisor', 'Provides legal advice and support.', 90000.00, 12),
('Paralegal', 'Assists legal advisors in their duties.', 50000.00, 12),
('Research Scientist', 'Conducts research and experiments.', 80000.00, 13),
('Lab Technician', 'Supports scientists in the laboratory.', 45000.00, 13),
('HR Specialist', 'Handles HR-related tasks and processes.', 60000.00, 14),
('Training Coordinator', 'Coordinates employee training programs.', 50000.00, 14),
('Event Coordinator', 'Plans and coordinates events.', 55000.00, 15),
('Event Manager', 'Oversees event planning and execution.', 75000.00, 15),
('Facilities Manager', 'Manages building maintenance and operations.', 70000.00, 16),
('Maintenance Technician', 'Performs maintenance and repairs.', 45000.00, 16),
('Field Operations Manager', 'Oversees field operations and activities.', 80000.00, 17),
('Field Technician', 'Performs fieldwork and technical tasks.', 50000.00, 17),
('Financial Planner', 'Provides financial planning and advice.', 85000.00, 18),
('Investment Analyst', 'Analyzes investment opportunities.', 75000.00, 18),
('Fraud Analyst', 'Detects and prevents fraudulent activities.', 65000.00, 19),
('Risk Manager', 'Manages and mitigates risks.', 85000.00, 19),
('Global Operations Manager', 'Oversees global operations and logistics.', 95000.00, 20),
('International Coordinator', 'Supports global operations and coordination.', 55000.00, 20),
('Grants Manager', 'Manages grant applications and funding.', 75000.00, 21),
('Grants Coordinator', 'Supports grants managers in their duties.', 50000.00, 21),
('Public Relations Manager', 'Manages public relations and media communications.', 80000.00, 22),
('PR Specialist', 'Supports public relations activities.', 50000.00, 22),
('Supply Chain Manager', 'Oversees supply chain operations.', 85000.00, 23),
('Logistics Coordinator', 'Coordinates logistics and supply chain activities.', 55000.00, 23),
('Chief Technology Officer', 'Leads the technology strategy and development.', 150000.00, 24),
('Chief Financial Officer', 'Oversees financial operations and strategy.', 140000.00, 24),
('Chief Marketing Officer', 'Leads the marketing strategy and initiatives.', 135000.00, 24),
('Chief Operating Officer', 'Oversees daily operations and logistics.', 145000.00, 24),
('Chief Executive Officer', 'Leads the organization and sets strategic direction.', 200000.00, 24),
('Administrative Assistant', 'Provides administrative support to executives.', 45000.00, 25),
('Office Manager', 'Manages office operations and administrative tasks.', 60000.00, 25),
('Graphic Designer', 'Creates visual content for marketing and branding.', 55000.00, 26),
('UI/UX Designer', 'Designs user interfaces and experiences.', 70000.00, 26),
('Quality Assurance Engineer', 'Ensures the quality of software products.', 65000.00, 27),
('Test Engineer', 'Tests software products for defects.', 60000.00, 27),
('Systems Analyst', 'Analyzes and designs information systems.', 75000.00, 28),
('Database Administrator', 'Manages and maintains database systems.', 80000.00, 28),
('Security Analyst', 'Ensures the security of information systems.', 85000.00, 29),
('Cybersecurity Specialist', 'Protects systems from cyber threats.', 90000.00, 29),
('Environmental Engineer', 'Develops solutions to environmental problems.', 75000.00, 30),
('Health and Safety Officer', 'Ensures workplace health and safety compliance.', 60000.00, 30),
('Mechanical Engineer', 'Designs and develops mechanical systems.', 70000.00, 31),
('Electrical Engineer', 'Designs and develops electrical systems.', 75000.00, 31),
('Civil Engineer', 'Designs and oversees construction projects.', 80000.00, 32),
('Architect', 'Designs buildings and structures.', 85000.00, 32),
('Urban Planner', 'Plans and designs urban areas.', 70000.00, 33),
('Surveyor', 'Conducts land surveys and measurements.', 60000.00, 33),
('Biomedical Engineer', 'Develops medical devices and equipment.', 75000.00, 34),
('Clinical Research Coordinator', 'Coordinates clinical research studies.', 65000.00, 34),
('Pharmacist', 'Dispenses medications and provides pharmaceutical care.', 90000.00, 35),
('Lab Assistant', 'Assists in laboratory tasks and experiments.', 45000.00, 35),
('Veterinarian', 'Provides medical care to animals.', 85000.00, 36),
('Veterinary Technician', 'Assists veterinarians in their duties.', 45000.00, 36),
('Teacher', 'Provides education and instruction to students.', 50000.00, 37),
('School Principal', 'Leads and manages a school.', 80000.00, 37),
('Professor', 'Teaches and conducts research at a university.', 90000.00, 38),
('Research Assistant', 'Assists in academic research.', 50000.00, 38),
('Librarian', 'Manages library resources and services.', 60000.00, 39),
('Library Assistant', 'Assists in library operations.', 40000.00, 39),
('Social Worker', 'Provides support and services to individuals and families.', 55000.00, 40),
('Case Manager', 'Manages cases and provides support services.', 50000.00, 40),
('Graphic Artist', 'Creates visual content for various media.', 55000.00, 41),
('Animator', 'Creates animations and visual effects.', 65000.00, 41),
('Video Editor', 'Edits video content for various purposes.', 60000.00, 42),
('Photographer', 'Takes and edits photographs.',('Photographer', 'Takes and edits photographs.', 55000.00, 42),
('Journalist', 'Writes and reports news stories.', 60000.00, 43),
('Editor', 'Edits written content for publication.', 65000.00, 43),
('Marketing Assistant', 'Supports marketing activities and campaigns.', 45000.00, 44),
('Sales Representative', 'Sells products and services to customers.', 50000.00, 44),
('Photographer', 'Takes and edits photographs.', 55000.00, 42),
('Content Writer', 'Creates written content for various media.', 50000.00, 43),
('Copywriter', 'Writes advertising and promotional content.', 55000.00, 43),
('Editor', 'Edits written content for publication.', 60000.00, 44),
('Translator', 'Translates written and spoken content between languages.', 50000.00, 44),
('Interpreter', 'Interprets spoken language in real-time.', 60000.00, 44),
('Event Planner', 'Plans and coordinates events.', 55000.00, 45),
('Fundraising Coordinator', 'Coordinates fundraising activities and campaigns.', 50000.00, 45),
('Volunteer Coordinator', 'Manages and coordinates volunteers.', 45000.00, 45);

SELECT * from roles;

--------------------------#projects---------------------------------------------------------------------------
INSERT INTO Projects (ProjectName, StartDate, EndDate, Budget, DepartmentID) VALUES
('Project Alpha', '2022-01-01', '2022-12-31', 100000.00, 2),
('Project Beta', '2022-03-01', '2022-09-30', 75000.00, 3),
('Project Gamma', '2022-05-01', '2023-04-30', 50000.00, 4),
('Project Delta', '2022-07-01', '2023-06-30', 120000.00, 1),
('Project Apollo', '2022-08-01', '2023-07-31', 150000.00, 5),
('Project Artemis', '2022-09-01', '2023-08-31', 200000.00, 6),
('Project Orion', '2022-10-01', '2023-09-30', 175000.00, 7),
('Project Titan', '2022-11-01', '2023-10-31', 130000.00, 8),
('Project Hermes', '2022-12-01', '2023-11-30', 110000.00, 9),
('Project Athena', '2023-01-01', '2023-12-31', 90000.00, 10),
('Project Zeus', '2023-02-01', '2024-01-31', 95000.00, 11),
('Project Hera', '2023-03-01', '2024-02-29', 85000.00, 12),
('Project Poseidon', '2023-04-01', '2024-03-31', 105000.00, 13),
('Project Hades', '2023-05-01', '2024-04-30', 115000.00, 14),
('Project Demeter', '2023-06-01', '2024-05-31', 125000.00, 15),
('Project Hermes', '2023-07-01', '2024-06-30', 135000.00, 16),
('Project Dionysus', '2023-08-01', '2024-07-31', 145000.00, 17),
('Project Ares', '2023-09-01', '2024-08-31', 155000.00, 18),
('Project Hephaestus', '2023-10-01', '2024-09-30', 165000.00, 19),
('Project Hestia', '2023-11-01', '2024-10-31', 175000.00, 20),
('Project Persephone', '2023-12-01', '2024-11-30', 185000.00, 21),
('Project Eros', '2024-01-01', '2024-12-31', 195000.00, 22),
('Project Psyche', '2024-02-01', '2025-01-31', 205000.00, 23),
('Project Helios', '2024-03-01', '2025-02-28', 215000.00, 24),
('Project Selene', '2024-04-01', '2025-03-31', 225000.00, 25),
('Project Pan', '2024-05-01', '2025-04-30', 235000.00, 26),
('Project Nike', '2024-06-01', '2025-05-31', 245000.00, 27),
('Project Nemesis', '2024-07-01', '2025-06-30', 255000.00, 28),
('Project Tyche', '2024-08-01', '2025-07-31', 265000.00, 29),
('Project Clio', '2024-09-01', '2025-08-31', 275000.00, 30),
('Project Erato', '2024-10-01', '2025-09-30', 285000.00, 31),
('Project Euterpe', '2024-11-01', '2025-10-31', 295000.00, 32),
('Project Melpomene', '2024-12-01', '2025-11-30', 305000.00, 33),
('Project Polyhymnia', '2025-01-01', '2025-12-31', 315000.00, 34),
('Project Terpsichore', '2025-02-01', '2026-01-31', 325000.00, 35),
('Project Thalia', '2025-03-01', '2026-02-28', 335000.00, 36),
('Project Urania', '2025-04-01', '2026-03-31', 345000.00, 37),
('Project Calliope', '2025-05-01', '2026-04-30', 355000.00, 38),
('Project Mnemosyne', '2025-06-01', '2026-05-31', 365000.00, 39),
('Project Themis', '2025-07-01', '2026-06-30', 375000.00, 40),
('Project Rhea', '2025-08-01', '2026-07-31', 385000.00, 41),
('Project Hyperion', '2025-09-01', '2026-08-31', 395000.00, 42),
('Project Iapetus', '2025-10-01', '2026-09-30', 405000.00, 43),
('Project Coeus', '2025-11-01', '2026-10-31', 415000.00, 44),
('Project Crius', '2025-12-01', '2026-11-30', 425000.00, 45),
('Project Oceanus', '2026-01-01', '2026-12-31', 435000.00, 46),
('Project Tethys', '2026-02-01', '2027-01-31', 445000.00, 47),
('Project Phoebe', '2026-03-01', '2027-02-28', 455000.00, 48),
('Project Theia', '2026-04-01', '2027-03-31', 465000.00, 49),
('Project Atlas', '2026-05-01', '2027-04-30', 475000.00, 50),
('Project Prometheus', '2026-06-01', '2027-05-31', 485000.00, 51),
('Project Epimetheus', '2026-07-01', '2027-06-30', 495000.00, 52),
('Project Metis', '2026-08-01', '2027-07-31', 505000.00, 53),
('Project Dione', '2026-09-01', '2027-08-31', 515000.00, 54),
('Project Leto', '2026-10-01', '2027-09-30', 525000.00, 55),
('Project Asteria', '2026-11-01', '2027-10-31', 535000.00, 56),
('Project Eos', '2026-12-01', '2027-11-30', 545000.00, 57),
('Project Helios', '2027-01-01', '2027-12-31', 555000.00, 58),
('Project Selene', '2027-02-01', '2028-01-31', 565000.00, 59),
('Project Astraeus', '2027-03-01', '2028-02-29', 575000.00, 60),
('Project Pallas', '2027-04-01', '2028-03-31', 585000.00, 61),
('Project Styx', '2027-05-01', '2028-04-30', 595000.00, 62),
('Project Charon', '2027-06-01', '2028-05-31', 605000.00, 63),
('Project Erebus', '2027-07-01', '2028-06-30', 615000.00, 64),
('Project Nyx', '2027-08-01', '2028-07-31', 625000.00, 65),
('Project Hemera', '2027-09-01', '2028-08-31', 635000.00, 66),
('Project Aether', '2027-10-01', '2028-09-30', 645000.00, 67),
('Project Chaos', '2027-11-01', '2028-10-31', 655000.00, 68),
('Project Tartarus', '2027-12-01', '2028-11-30', 665000.00, 69),
('Project Gaia', '2028-01-01', '2028-12-31', 675000.00, 70),
('Project Uranus', '2028-02-01', '2029-01-31', 685000.00, 71),
('Project Pontus', '2028-03-01', '2029-02-28', 695000.00, 72),
('Project Ourea', '2028-04-01', '2029-03-31', 705000.00, 73),
('Project Thalassa', '2028-05-01', '2029-04-30', 715000.00, 74),
('Project Eurybia', '2028-06-01', '2029-05-31', 725000.00, 75),
('Project Ceto', '2028-07-01', '2029-06-30', 735000.00, 76),
('Project Phorcys', '2028-08-01', '2029-07-31', 745000.00, 77),
('Project Nereus', '2028-09-01', '2029-08-31', 755000.00, 78),
('Project Doris', '2028-10-01', '2029-09-30', 765000.00, 79),
('Project Thaumas', '2028-11-01', '2029-10-31', 775000.00, 80),
('Project Electra', '2028-12-01', '2029-11-30', 785000.00, 81),
('Project Iris', '2029-01-01', '2029-12-31', 795000.00, 82),
('Project Arke', '2029-02-01', '2030-01-31', 805000.00, 83),
('Project Harpies', '2029-03-01', '2030-02-28', 815000.00, 84),
('Project Hydra', '2029-04-01', '2030-03-31', 825000.00, 85),
('Project Ladon', '2029-05-01', '2030-04-30', 835000.00, 86),
('Project Echidna', '2029-06-01', '2030-05-31', 845000.00, 87),
('Project Typhon', '2029-07-01', '2030-06-30', 855000.00, 88),
('Project Cerberus', '2029-08-01', '2030-07-31', 865000.00, 89),
('Project Orthrus', '2029-09-01', '2030-08-31', 875000.00, 90),
('Project Chimera', '2029-10-01', '2030-09-30', 885000.00, 91),
('Project Sphinx', '2029-11-01', '2030-10-31', 895000.00, 92),
('Project Griffin', '2029-12-01', '2030-11-30', 905000.00, 93),
('Project Pegasus', '2030-01-01', '2030-12-31', 915000.00, 94),
('Project Phoenix', '2030-02-01', '2031-01-31', 925000.00, 95),
('Project Gorgons', '2030-03-01', '2031-02-28', 935000.00, 96),
('Project Sirens', '2030-04-01', '2031-03-31', 945000.00, 97),
('Project Satyrs', '2030-05-01', '2031-04-30', 955000.00, 98),
('Project Centaurs', '2030-06-01', '2031-05-31', 965000.00, 99),
('Project Minotaur', '2030-07-01', '2031-06-30', 975000.00, 100);

SELECT * FROM projects;

--------------------------#attendance ---------------------------------------------------------------------------
INSERT INTO Attendance (EmployeeID, Date, Status, HoursWorked) VALUES
(1, '2023-10-01', 'Present', 8.00),
(2, '2023-10-01', 'Present', 8.00),
(3, '2023-10-01', 'Absent', 0.00),
(4, '2023-10-01', 'Present', 8.00),
(5, '2023-10-01', 'Present', 8.00),
(6, '2023-10-01', 'Present', 8.00),
(7, '2023-10-01', 'Present', 8.00),
(8, '2023-10-01', 'Absent', 0.00),
(9, '2023-10-01', 'Present', 8.00),
(10, '2023-10-01', 'Present', 8.00),
(11, '2023-10-01', 'Present', 8.00),
(12, '2023-10-01', 'Present', 8.00),
(13, '2023-10-01', 'Absent', 0.00),
(14, '2023-10-01', 'Present', 8.00),
(15, '2023-10-01', 'Present', 8.00),
(16, '2023-10-01', 'Present', 8.00),
(17, '2023-10-01', 'Present', 8.00),
(18, '2023-10-01', 'Absent', 0.00),
(19, '2023-10-01', 'Present', 8.00),
(20, '2023-10-01', 'Present', 8.00),
(21, '2023-10-01', 'Present', 8.00),
(22, '2023-10-01', 'Present', 8.00),
(23, '2023-10-01', 'Absent', 0.00),
(24, '2023-10-01', 'Present', 8.00),
(25, '2023-10-01', 'Present', 8.00),
(26, '2023-10-01', 'Present', 8.00),
(27, '2023-10-01', 'Present', 8.00),
(28, '2023-10-01', 'Absent', 0.00),
(29, '2023-10-01', 'Present', 8.00),
(30, '2023-10-01', 'Present', 8.00),
(31, '2023-10-01', 'Present', 8.00),
(32, '2023-10-01', 'Present', 8.00),
(33, '2023-10-01', 'Absent', 0.00),
(34, '2023-10-01', 'Present', 8.00),
(35, '2023-10-01', 'Present', 8.00),
(36, '2023-10-01', 'Present', 8.00),
(37, '2023-10-01', 'Present', 8.00),
(38, '2023-10-01', 'Absent', 0.00),
(39, '2023-10-01', 'Present', 8.00),
(40, '2023-10-01', 'Present', 8.00),
(41, '2023-10-01', 'Present', 8.00),
(42, '2023-10-01', 'Present', 8.00),
(43, '2023-10-01', 'Absent', 0.00),
(44, '2023-10-01', 'Present', 8.00),
(45, '2023-10-01', 'Present', 8.00),
(46, '2023-10-01', 'Present', 8.00),
(47, '2023-10-01', 'Present', 8.00),
(48, '2023-10-01', 'Absent', 0.00),
(49, '2023-10-01', 'Present', 8.00),
(50, '2023-10-01', 'Present', 8.00),
(51, '2023-10-01', 'Present', 8.00),
(52, '2023-10-01', 'Present', 8.00),
(53, '2023-10-01', 'Absent', 0.00),
(54, '2023-10-01', 'Present', 8.00),
(55, '2023-10-01', 'Present', 8.00),
(56, '2023-10-01', 'Present', 8.00),
(57, '2023-10-01', 'Present', 8.00),
(58, '2023-10-01', 'Absent', 0.00),
(59, '2023-10-01', 'Present', 8.00),
(60, '2023-10-01', 'Present', 8.00),
(61, '2023-10-01', 'Present', 8.00),
(62, '2023-10-01', 'Present', 8.00),
(63, '2023-10-01', 'Absent', 0.00),
(64, '2023-10-01', 'Present', 8.00),
(65, '2023-10-01', 'Present', 8.00),
(66, '2023-10-01', 'Present', 8.00),
(67, '2023-10-01', 'Present', 8.00),
(68, '2023-10-01', 'Absent', 0.00),
(69, '2023-10-01', 'Present', 8.00),
(70, '2023-10-01', 'Present', 8.00),
(71, '2023-10-01', 'Present', 8.00),
(72, '2023-10-01', 'Present', 8.00),
(73, '2023-10-01', 'Absent', 0.00),
(74, '2023-10-01', 'Present', 8.00),
(75, '2023-10-01', 'Present', 8.00),
(76, '2023-10-01', 'Present', 8.00),
(77, '2023-10-01', 'Present', 8.00),
(78, '2023-10-01', 'Absent', 0.00),
(79, '2023-10-01', 'Present', 8.00),
(80, '2023-10-01', 'Present', 8.00),
(81, '2023-10-01', 'Present', 8.00),
(82, '2023-10-01', 'Present', 8.00),
(83, '2023-10-01', 'Absent', 0.00),
(84, '2023-10-01', 'Present', 8.00),
(85, '2023-10-01', 'Present', 8.00),
(86, '2023-10-01', 'Present', 8.00),
(87, '2023-10-01', 'Present', 8.00),
(88, '2023-10-01', 'Absent', 0.00),
(89, '2023-10-01', 'Present', 8.00),
(90, '2023-10-01', 'Present', 8.00),
(91, '2023-10-01', 'Present', 8.00),
(92, '2023-10-01', 'Present', 8.00),
(93, '2023-10-01', 'Absent', 0.00),
(94, '2023-10-01', 'Present', 8.00),
(95, '2023-10-01', 'Present', 8.00),
(96, '2023-10-01', 'Present', 8.00),
(97, '2023-10-01', 'Present', 8.00),
(98, '2023-10-01', 'Absent', 0.00),
(99, '2023-10-01', 'Present', 8.00),
(100, '2023-10-01', 'Present', 8.00);
SELECT * from attendance;
-----------------------------------------------------------------------
--------------THE END--------------------------------------------------

 


