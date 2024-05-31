#
# 
# doc: https://askubuntu.com/questions/923882/reducing-filesize-of-video-in-ubuntu 
ffmpeg -i input.mp4 \
       -c:v libx264 -preset slow -crf 32 \
       -c:a copy \
       output.crf32.mp4