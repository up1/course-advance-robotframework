import csv

def read_file_to_list(filename):
    csvfile = open(filename)
    users = csv.reader(csvfile)
    next(users, None)
    return [rows for rows in users]

print(read_file_to_list('user.csv'))
