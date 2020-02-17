# Filenaam: dowload_youtube.sh
# functie: Download youtube videos op Ubuntu 18.ou mbv youtube-dl
# Documentatie https://linoxide.com/linux-how-to/install-use-youtube-dl-ubuntu/

# check beschikbare format to download video
youtube-dl -F https://youtu.be/AvkV8-ylzuY

# Dowload video obv beste formaat (=format 18, obv bovenstaande lijst)
youtube-dl -f 18 https://youtu.be/AvkV8-ylzuY
