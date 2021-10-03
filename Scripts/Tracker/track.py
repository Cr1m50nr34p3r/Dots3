#!/usr/bin/python3
# imports
import argparse
import time
import os
import datetime
import os.path as path
# change these variables
logs_dir="/home/r3dbl4d3/.dlogs"
# Fixed variables
now=datetime.datetime.now()
current_date=datetime.datetime.now().date()
current_date="{:04d}-{:02d}-{:02d}".format(current_date.year,current_date.month,current_date.day)
time_now=datetime.datetime.now().time()
current_time= "{:02d}:{:02d}".format(time_now.hour,time_now.minute)
# initiate argeparse
parser=argparse.ArgumentParser()
parser.add_argument('-n', default="unnamed", help="name of the task", type=str)
parser.add_argument('-c',default=False,help="Check logs",type=bool)
parser.add_argument('-r',default=False,help="Read logs",type=bool)
parser.add_argument('-s',default=False,help="start stopwatch",type=bool)
parser.add_argument('-d',default=current_date,help="date to check for",type=str)
args=parser.parse_args()
start=args.s
name=args.n
check=args.c
date=args.d
read_l=args.r
# initiate file
if path.isdir(logs_dir)==False:
    root_dir=path.realpath(f"{logs_dir}/..")
    os.chdir(root_dir)
    os.mkdir(logs_dir)
if path.isfile(f"{logs_dir}/{current_date}.bin")==False:
    f=open(f"{logs_dir}/{current_date}.bin","ab")
else:
    f=open(f"{logs_dir}/{current_date}.bin","ab")
    f.write(bytearray("""
""",'ascii'))
# functions
def stopwatch():
    running=True
    seconds=0
    while running:
        try:
            mins,secs=divmod(seconds,60)
            hours,mins=divmod(mins,60)
            timer="{:02d}:{:02d}:{:02d}".format(hours,mins,secs)
            print(timer,end='\r')
            time.sleep(1)
            seconds+=1
        except KeyboardInterrupt:
            dur=datetime.datetime.strptime(timer,"%H:%M:%S")
            duration="{:02d}:{:02d}:{:02d}".format(dur.hour,dur.minute,dur.second)
            td=datetime.timedelta(hours=dur.hour,minutes=dur.minute,seconds=dur.second)
            end_time=now+td 
            start_time=end_time-td
            start_time="{:02d}:{:02d}".format(start_time.hour,start_time.minute)
            end_time="{:02d}:{:02d}".format(end_time.hour,end_time.minute)
            write_data=f"{name.upper()} - {start_time} - {end_time} - {duration}"
            write_data_bin=bytearray(write_data,'ascii')
            f.write(write_data_bin)
            print(write_data)
            running=False
def check_log(date):
    logs=os.listdir(logs_dir)
    for log in logs:
        log_list=log.split('.')
        log=log_list[0]
        if log==date:
            log_read= open(f"{logs_dir}/{log}.bin",'rb')
            data=log_read.read()
            return (data.decode('ascii'))        
def read_log(date,name):
    start_times=[]
    end_times=[]
    durations=[]
    tds=datetime.timedelta()
    data=check_log(date)
    data=data.splitlines()
    for line in data:
        line_l=line.split(' - ')
        if line_l[0]==name.upper():
            start_times.append(line_l[1])
            end_times.append(line_l[2])
            durations.append(line_l[3])
    for duration in durations:
        dur=datetime.datetime.strptime(duration,"%H:%M:%S")
        td=datetime.timedelta(hours=dur.hour,minutes=dur.minute,seconds=dur.second)
        tds+=td
    print(f"{name.upper()} - ",end="")
    print(f"{start_times[0]} - {end_times[0]}")
    whitespaces=len(name)+3
    for i in range(1,len(start_times)):
        print(' '*whitespaces,end="")
        print(f"{start_times[i]} - {end_times[i]}")
    print()
    print(f"TOTAL DURATION = {tds}")
# execute
if check:
    data=check_log(date)
    print(data) 
if start:
    stopwatch()
if read_l:
    read_log(date,name)
