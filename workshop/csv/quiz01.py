from csv import DictReader

with open('employees.csv', 'r') as read_obj:
    csv_reader = DictReader(read_obj)
    list_of_rows = list(csv_reader)
    print(list_of_rows[0]['firstname'], list_of_rows[1]['lastname'])