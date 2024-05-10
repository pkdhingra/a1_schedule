REM happy-new-year.org
call gsutil -m cp -r -n gs://90102_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://90102_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\90102_prompt\festivals  c:\e\a2_generated_sites\articles\festivals\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\news  c:\e\a2_generated_sites\articles\news\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\2024  c:\e\a2_generated_sites\articles\2024\  /s /e /y /d
call xcopy c:\f\0-buckets\90102_prompt\www.happy-new-year.org\input\content\  c:\e\a3_input\happy-new-year.org\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\90102_gdrive\  c:\e\a3_input\happy-new-year.org\input\content\  /s "*.list"  ".path" ".imagelist"  /e /y /d