echo "pull all started" >> c:\e\a1_schedule\log.txt
call pull-a2_generated_sites
call pull-a3_input
call pull-others
echo "pull all done" >> c:\e\a1_schedule\log.txt
echo "pull all complete" > c:\e\a1_schedule\log-latest.txt
