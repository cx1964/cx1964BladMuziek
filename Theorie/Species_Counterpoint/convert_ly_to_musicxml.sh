# file: convert_ly_to_musicxml.sh
# functie: convert lillypond file to musicxml
# opm: ly werkt nog niet helemaal goed

echo "input file:$1"
FILE=$1
my_filename="${FILE%.*}"
echo "output file: $my_filename.musicxml" 
ly musicxml $1 > $my_filename.musicxml