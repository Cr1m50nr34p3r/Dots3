import calendar_scrape
import datetime
import time
from win10toast import ToastNotifier
import pytz
notification = ToastNotifier()
def countdown(t,event):

    while t:
        mins,secs = divmod(t, 60)
        timer = '{:02d}:{:02d}'.format(mins,secs)
        print(timer, end="\r")
        time.sleep(1)
        t -= 1
    ToastNotifier.show_toast(f"Timer is completed for {event}","see your next task in terminal")


# input time in seconds

# function call
tz=pytz.timezone('Asia/Kolkata')
event = calendar_scrape.main()
for i in event:
    print(i,end=" ")
now=datetime.datetime.now()
timings= event[0]
timings=timings.split('-')
start=datetime.datetime.strptime(timings[0],"%H:%M")
end = datetime.datetime.strptime(timings[1], " %H:%M ")
duration=end-start
print(duration)
confirmation=input("should I start a timer?(Y/N) ")
if confirmation.lower()=='y':
    countdown(int(duration.total_seconds()),event[1])