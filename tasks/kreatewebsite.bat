echo "kreatewebsite start" >> c:\e\a1_schedule\log.txt
REM call start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
call start "C:\Program Files (x86)\Microsoft\Edge\Application\mesedge.exe" http://localhost:51000/generate_site.aspx?site=%1%
timeout 20
REM call start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
call start "C:\Program Files (x86)\Microsoft\Edge\Application\mesedge.exe" http://localhost:51000/generate_site.aspx?site=%1%
timeout 20
cd c:\e\a3_output\%1%
timeout 40
gitall.bat "added by job"
cd c:\e\a1_schedule
echo "kreatewebsite complete" >> c:\e\a1_schedule\log.txt
