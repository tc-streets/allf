#!C:\python39\python.exe
#get processes
import psutil

for proc in psutil.process_iter():
    try:
        #get process name  from process object
        processName=proc.name()
        processID=proc.pid
        print(processName, ' :: ', processID)
    except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
        pass