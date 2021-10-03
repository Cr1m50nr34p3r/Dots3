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
md_file= args.d
if path.isfile(f"{logs_dir}/{md_file}.md"):
    f= open(f"{logs_dir}/{md_file}.md",'r')
    write_str=f.read()
    write_bin=bytearray(write_str,'ascii')
    b= open(f"{logs_dir}/{md_file}.bin",'wb')
    b.write(write_bin)
    os.remove(f"{logs_dir}/{md_file}.md")
else:
    raise FileNotFoundError(f"the file {md_file}.md does not exist")