#!/bin/bash
echo -n "Enter (--setup) or FULLPATH.txt file with hosts/IPs: "
read VAR
if [[$VAR = "--setup"]]
then
	echo "Gonna run through setup"
else
	cd ItWasAllADream && poetry install && poetry shell
	cd
	cd
	input=$VAR
	while IFS= read -r line; do
        	echo "$line"
        	itwasalladream -u {unpriv account username} -p {unpriv account password} -d {domain} "$line"
	done < "$input"
	cat *.csv > CombinedCSV.csv
	rm report_*
fi




basically create two different scripts a part 1 that starts the python poetry shell and then a part 2 that does the actual scan
