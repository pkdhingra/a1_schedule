REM copy_article_to_site
gsutil -m cp -r -n gs://faqai  c:\f\0-buckets
REM Not needed gsutil -m cp -r -n gs://earnings-call-usa-processed  c:\f\0-buckets
gsutil -m cp -r -n gs://earnings-call-usa-processed c:\e\a2_generated_sites\articles\stocks\
gsutil -m cp -r -n gs://earning_call_transcript/earning_call_faq.com/input/content/2024/q2  c:/e/a3_input/earnings-call.kreatebots.com/input/content/2024/
SET drive=7110_gdrive
SET cms=7110_prompt
SET topic=stocks
SET site=earnings-call.kreatebots.com
REM call gsutil -m cp -r -n gs://%drive%  c:\f\0-buckets
REM call gsutil -m cp -r -n gs://%cms%  c:\f\0-buckets
REM call xcopy  c:\f\0-buckets\%cms%\  c:\e\a2_generated_sites\articles\  /s /e /y /d
REM call xcopy c:\f\0-buckets\%cms%\%site%\input\content\  c:\e\a3_input\%site%\input\content\  /s /e /y /d
REM call robocopy  c:\f\0-buckets\%cms%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count"  /e 

REM REM call xcopy  c:\f\0-buckets\%cms%\  c:\e\a2_generated_sites\articles\%topic%  /s /e /y /d
REM REM in future avoid using www or use every where for consistency
