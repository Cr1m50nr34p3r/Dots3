import datetime
import os.path as path
import os
import argparse
# change these variables
logs_dir="C:/Users/aksha/Desktop/Time_Logs"
# permanent variables
current_date=datetime.datetime.now().date()
# initiate argeparse
parser=argparse.ArgumentParser()
parser.add_argument('-d',default=current_date,help="date to check for",type=str)
args=parser.parse_args()
b_file= args.d
if path.isfile(f"{logs_dir}/{b_file}.bin"):
    b= open(f"{logs_dir}/{b_file}.bin",'rb')
    write_bin=b.read()
    write_str=write_bin.decode('ascii')
    f= open(f"{logs_dir}/{b_file}.md",'w')
    f.write(write_str)
else:
    raise FileNotFoundError(f"the file {b_file}.md does not exist")