echo "pull-a3_input start" >> c:\e\a1_schedule\log.txt
call cd c:\e\a3_input\
call git pull origin main
call cd c:\e\a1_schedule
git pull origin main
call cd c:\e\a3_listdir
git pull origin main
call cd c:\e\a3_bat
git pull origin main
call cd c:\e\6-summary
git pull origin main
call cd c:\e\kreate\chat-2024
git pull origin main
call cd c:\e\kreate\chatgpt2
git pull origin main
call cd c:\e\a1_schedule
REM https://github.com/topkreate/listdir.git
REM https://github.com/kreatecontent/a3_samples.git
echo "pull-a3_input complete" >> c:\e\a1_schedule\log.txt