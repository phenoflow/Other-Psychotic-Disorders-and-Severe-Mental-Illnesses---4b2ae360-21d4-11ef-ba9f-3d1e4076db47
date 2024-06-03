# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"E11z0","system":"readv2"},{"code":"Eu23z","system":"readv2"},{"code":"E1y..","system":"readv2"},{"code":"E11z.","system":"readv2"},{"code":"F38.8","system":"readv2"},{"code":"F29.X","system":"readv2"},{"code":"F30.9","system":"readv2"},{"code":"F39","system":"readv2"},{"code":"F39.X","system":"readv2"},{"code":"F29","system":"readv2"},{"code":"F23.9","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-psychotic-disorders-and-severe-mental-illnesses-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-psychotic-disorders-and-severe-mental-illnesses-specified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-psychotic-disorders-and-severe-mental-illnesses-specified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-psychotic-disorders-and-severe-mental-illnesses-specified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
