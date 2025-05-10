import schedule
import time
import subprocess

def my_task():
    print("Running my task...")
    subprocess.run(["cms-pull.bat"], check=True)
    subprocess.run(["kreate.cloud.02101.bat"], check=True)

my_task()
# Schedule the task to run every hour
schedule.every(1).hours.do(my_task)

while True:
    schedule.run_pending()
    time.sleep(60)  # Wait 1 minute before checking again
