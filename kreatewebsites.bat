echo "kreatewebsites start" >> c:\e\a1_schedule\log.txt
call start chrome.exe http://localhost:51000/generate_sites.aspx?sites=%1%
echo "kreatewebsites complete" >> c:\e\a1_schedule\log.txt