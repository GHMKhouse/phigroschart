echo "Warning: Make sure the current chart is OK!(Y/N):"
read -n 1 -a j
if [ $j == "Y" ]
then
for folder in Resources/*; do
    if [[ -d "$folder" && $(basename "$folder" | grep -E "^[0-9]+$") ]]; then
	for f in $(ls -t $folder/AutoSave_*.json); do
            rm $f
	done
    fi
done
fi
