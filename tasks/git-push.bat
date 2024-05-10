echo "kreatewebsite-push start" >> c:\e\a1_schedule\log.txt
REM call start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
REM timeout 20
REM call start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
REM timeout 20
call cd c:\e\a3_output\%1%
call cd output\content\
REM timeout 40
call gitall.bat "added by job"
call cd c:\e\a1_schedule
echo "kreatewebsite-push complete" >> c:\e\a1_schedule\log.txt
