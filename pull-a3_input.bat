echo "pull-a3_input start" >> c:\e\a1_schedule\log.txt
call cd c:\e\a3_input\
call git pull origin main
call cd c:\e\a1_schedule
echo "pull-a3_input complete" >> c:\e\a1_schedule\log.txt