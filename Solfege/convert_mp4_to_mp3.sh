# file: convert_mp4_to_mp3.sh
# functie: creeer een mp3 uit een mp4

ffmpeg -i video1248015748.mp4 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 Les_07_output.mp3