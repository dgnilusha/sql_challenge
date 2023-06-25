# sql_challenge

Pewlett Hackard Employee Database Research Project( SQL challenge)
This challenge focuses on conducting a research analysis on the employees of Pewlett Hackard during the 1980s and 1990s. The available data for this research is stored in six CSV files.

The goal of this challenge is to design appropriate database tables to hold the data from the CSV files, import the CSV files into a SQL database, and then perform data analysis to answer questions about the employee data.

Data Modeling
To represent the employee data from the CSV files, the following tables have been designed:

employees: Stores information about the employees.
departments: Stores information about the departments.
dept_emp: Maps employees to departments.
dept_manager: Stores information about the department managers.
titles: Stores information about the employee titles.
salaries: Stores information about the employee salaries.
Data Engineering
To import the data from the CSV files into a SQL database, perform the following steps:

Create a new database in  a preferred SQL database management system (e.g., PostgreSQL, MySQL).
Execute the SQL scripts provided in the "create_tables.sql" file to create the necessary tables in the database.
Use an appropriate method (e.g., SQL COPY command, database management tool) to import the data from the CSV files into the corresponding tables.
Verify that the data has been successfully imported by running SQL queries against the tables.
Data Analysis
After importing the data,  can now perform data analysis on the employee database. Some example questions  can answer using SQL queries include:

List the employee number, last name, first name, sex, and salary of each employee.
List the first name, last name, and hire date for the employees hired in 1986.
List the manager of each department along with their department number, department name, employee number, last name, and first name.
List the department number for each employee along with their employee number, last name, first name, and department name.
List the first name, last name, and sex of each employee whose first name is "Hercules" and whose last name begins with the letter "B".
List each employee in the Sales department, including their employee number, last name, and first name.
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
List the frequency counts, in descending order, of all employee last names (i.e., how many employees share each last name).


Conclusion

By following the steps outlined in this README file, can successfully perform the data modeling, data engineering, and data analysis tasks for the Pewlett Hackard employee database research project.( challenge) 
