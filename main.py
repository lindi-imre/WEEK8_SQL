import mysql.connector

query_files = ["01_basic_select.sql", "02_restricting_and_sorting_data.sql", "03_aggregate_functions_and_group_by.sql", "04_subqueries.sql" , "05_joins.sql", "06_string_functions.sql"]

try:
    connect = mysql.connector.connect(user='User', password='Pass123', host='localhost', db='hr_db')

except mysql.connector.Error as err:
    print("Something wrong")
    print(err)

cursor = connect.cursor()

#Create hr_db database and create tables and insert datas
i = 0
j = 0
lines = 0
while i != 5:
    opened_file = open(query_files[i], 'r')
    with opened_file as f:
        lines = sum(1 for _ in f)
    opened_file.close()
    opened_file = open(query_files[i], 'r')
    line = opened_file.readline()
    while j < lines:
        if j + 1 % 2 == 1:
            print(line)
        else:
            cursor.execute(line)
            data = cursor.fetchall()
            for row in data:
                print(row[0])
        j += 1
    i += 1
