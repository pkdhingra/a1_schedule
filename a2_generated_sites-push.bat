echo "a2_generated_sites-push started" >> c:\e\a1_schedule\log.txt
call cd c:\e\a2_generated_sites\0-articles\
call  gitall "automatic"
call  cd c:\e\a2_generated_sites\1-articles-festivals\
call  gitall "automatic"
call cd c:\e\a2_generated_sites\2-articles\
call  gitall "automatic"
call cd c:\e\a2_generated_sites\3-articles-finance\
call  gitall "automatic"
call cd c:\e\a2_generated_sites\4-articles-technology\
call  gitall "automatic"
call cd c:\e\a2_generated_sites\4-news\
call  gitall "automatic"
call cd c:\e\a2_generated_sites\5-articles-real-estate\
call  gitall "automatic"
call cd c:\e\a2_generated_sites\articles\
call  gitall "automatic"
call cd c:\e\a1_schedule
echo "a2_generated_sites-push end" >> c:\e\a1_schedule\log.txt
echo "a2_generated_sites-push end" > c:\e\a1_schedule\log-latest-generated-push.txt