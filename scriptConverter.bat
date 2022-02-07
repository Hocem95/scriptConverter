mkdir converti
for %%a in ("*.*") do ffmpeg -i %%a -codec copy "converti\%%~na.mp4"
pause
