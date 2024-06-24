call gsutil -m cp -r -n gs://5108_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://5108_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\5108_prompt\technology  c:\e\a2_generated_sites\articles\technology\  /s /e /y /d
call xcopy c:\f\0-buckets\5108_prompt\slides.kreatewebsites.com\input\content\  c:\e\a3_input\kreatewebsites.com.slides\input\content\  /s /e /y /d
call xcopy c:\f\0-buckets\5108_prompt\slides.kreatebots.com\input\content\  c:\e\a3_input\kreatewebsites.com.slides\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\5108_gdrive\  c:\e\a3_input\slides.kreatewebsites.com\input\content\  /s "*.list"  ".path" "*.imagelist"  /e 
call robocopy  c:\f\0-buckets\5108_gdrive\  c:\e\a3_input\slides.kreatebots.com\input\content\  /s "*.list"  ".path" "*.imagelist"  /e 