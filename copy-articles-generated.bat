REM abexperiment
call gsutil -m cp -r -n gs://5105_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://5105_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\5105_prompt\technology  c:\e\a2_generated_sites\articles\technology\  /s /e /y /d
call xcopy  c:\f\0-buckets\5105_prompt\news  c:\e\a2_generated_sites\articles\news\  /s /e /y /d
call xcopy c:\f\0-buckets\5105_prompt\www.abexperiment.com\input\content\  c:\e\a3_input\abexperiment.com\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\5105_gdrive\  c:\e\a3_input\abexperiment.com\input\content\  /s "*.list"  ".path" ".path"  /e /y /d

REM Dataknobs
call gsutil -m cp -r -n gs://5106_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://5106_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\5106_prompt\4-articles-technology  c:\e\a2_generated_sites\articles\4-articles-technology\  /s /e /y /d
call xcopy  c:\f\0-buckets\5106_prompt\technology  c:\e\a2_generated_sites\articles\technology\  /s /e /y /d
call xcopy  c:\f\0-buckets\5106_prompt\news  c:\e\a2_generated_sites\articles\news\  /s /e /y /d
call xcopy c:\f\0-buckets\5106_prompt\www.dataknobs.com\input\content\  c:\e\a3_input\dataknobs.com\input\content\  /s /e /y /d

call robocopy  c:\f\0-buckets\5106_gdrive\  c:\e\a3_input\dataknobs.com\input\content\  /s "*.list"  ".path" ".imagelist" /e /y /d

REM
REM call gsutil -m cp -r -n gs://5108_prompt c:\f\0-buckets
REM call xcopy  c:\f\0-buckets\5108_prompt\technology  c:\e\a2_generated_sites\articles\technology\  /s /e /y /d
REM call xcopy c:\f\0-buckets\5108_prompt\kreatewebsites.com.slides\input\content\  c:\e\a3_input\kreatewebsites.com.slides\input\content\  /s /e /y /d
REM call gsutil -m cp -r -n gs://5108_gdrive c:\f\0-buckets
REM call robocopy  c:\f\0-buckets\5108_gdrive\  c:\e\a3_input\kreatewebsites.com.slides\input\content\  /s "*.list"  ".path" /e /y /d

REM 1000Placestosee.info

REM bucket=gs://ghqed4eqcnt3cgmepnwe_prompt/www.1000placestosee.info/input/content/usa/nevada/tahoe/travel-guide-lake-tahoe.articlelist
REM bucket=ghqed4eqcnt3cgmepnwe_prompt
REM category=travel
REM site=1000placestosee.info
call gsutil -m cp -r -n gs://ghqed4eqcnt3cgmepnwe_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://ghqed4eqcnt3cgmepnwe_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\ghqed4eqcnt3cgmepnwe_prompt\travel  c:\e\a2_generated_sites\articles\travel\  /s /e /y /d
call xcopy c:\f\0-buckets\ghqed4eqcnt3cgmepnwe_prompt\www.1000placestosee.info\input\content\  c:\e\a3_input\1000placestosee.info\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\ghqed4eqcnt3cgmepnwe_gdrive_gdrive\www.1000placestosee.info\input\content\  c:\e\a3_input\1000placestosee.info\input\content\  /s "*.list"  ".path" /e /y /d

REM slides.kreatewebsites.com

call gsutil -m cp -r -n gs://5108_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://5108_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\5108_prompt\4-articles-technology  c:\e\a2_generated_sites\articles\4-articles-technology\  /s /e /y /d
call xcopy  c:\f\0-buckets\5108_prompt\technology c:\e\a2_generated_sites\articles\technology\  /s /e /y /d
call xcopy  c:\f\0-buckets\5108_prompt\slides c:\e\a2_generated_sites\articles\slides\  /s /e /y /d
call xcopy c:\f\0-buckets\5108_prompt\slides.kreatewebsites.com\input\content\  c:\e\a3_input\slides.kreatewebsites.com\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\5108_gdrive\  c:\e\a3_input\slides.kreatewebsites.com\input\content\  /s "*.list" "*.imagelist" ".path" /e /y /d

REM happy-new-year.org
call gsutil -m cp -r -n gs://90102_prompt c:\f\0-buckets
call gsutil -m cp -r -n gs://90102_gdrive c:\f\0-buckets
call xcopy  c:\f\0-buckets\90102_prompt\festivals  c:\e\a2_generated_sites\articles\festivals \  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\news  c:\e\a2_generated_sites\articles\news\  /s /e /y /d
call xcopy  c:\f\0-buckets\90102_prompt\2024  c:\e\a2_generated_sites\articles\2024\  /s /e /y /d
call xcopy c:\f\0-buckets\90102_prompt\www.happy-new-year.org\input\content\  c:\e\a3_input\happy-new-year.org\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\90102_gdrive\  c:\e\a3_input\happy-new-year.org\input\content\  /s "*.list"  ".path" ".imagelist"  /e /y /d