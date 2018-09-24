import csv
def read_data(filename):
    f = open(filename, 'r')
    csvfile = csv.reader(f)
    f.close
    return [rows for rows in csvfile]
