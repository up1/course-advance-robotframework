import csv


def read(filename):
    with open(filename) as csvfile:
        spamreader = csv.reader(csvfile)
        for row in spamreader:
            for c in row:
                print(c, end='-')
            print()


def write(results, filename):
    with open(filename, 'w') as csvfile:
        spamwriter = csv.writer(csvfile)
        for row in results:
            spamwriter.writerow(row)


# input = [['somkiat1', 'pui1', 40], ['somkiat2', 'pui2', 40]]
# write(input, 'new.csv')
