REM happy-new-year.org
call gsutil -m cp -r -n gs://90102_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://90102_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\90102_prompt\festivals  c:\e\a2_generated_sites\articles\festivals\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\news  c:\e\a2_generated_sites\articles\news\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\special-day  c:\e\a2_generated_sites\articles\special-day\  /s /e /y /d

REM - future put movies in 2024 etc
call xcopy  c:\f\0-buckets\90102_prompt\movies  c:\e\a2_generated_sites\articles\movies\  /s /e /y /d
REM 2024 should get everything - movies, stocks, news, cricket
call xcopy  c:\f\0-buckets\90102_prompt\2024  c:\e\a2_generated_sites\articles\2024\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\2023  c:\e\a2_generated_sites\articles\2023\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\2022  c:\e\a2_generated_sites\articles\2022\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\2021  c:\e\a2_generated_sites\articles\2021\  /s /e /y /d
call xcopy c:\f\0-buckets\90102_prompt\www.happy-new-year.org\input\content\  c:\e\a3_input\happy-new-year.org\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\90102_gdrive\www.happy-new-year.org\input\content\  c:\e\a3_input\happy-new-year.org\input\content\  /s "*.list"  "*.path" "*.imagelist"  /e 