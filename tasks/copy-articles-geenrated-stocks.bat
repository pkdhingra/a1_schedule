call gsutil -m cp -r -n gs://7110_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://7110_gdrive c:\f\0-buckets
call gsutil -m cp -r -n gs://earnings-call-clean/extract_data/part1_EC/
call gsutil -m cp -r -n gs://earnings-call-clean  c:\f\0-buckets
call xcopy  c:\f\0-buckets\7110_prompt\stocks  c:\e\a2_generated_sites\articles\stocks\  /s /e /y /d
call xcopy  c:\f\0-buckets\7110_prompt\news  c:\e\a2_generated_sites\articles\stocks\  /s /e /y /d
call xcopy c:\f\0-buckets\7110_prompt\earnings-call.kreatebots.com\input\content\  c:\e\a3_input\earnings-call.kreatebots.com\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\7110_gdrive\earnings-call.kreatebots.com\input\content  c:\e\a3_input\earnings-call.kreatebots.com\input\content\  /s "*.list"  "*.path" ".imagelist"  "*.count"  /e /y /d