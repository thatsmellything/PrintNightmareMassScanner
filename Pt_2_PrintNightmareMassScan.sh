#!/bin/bash
echo -n "Enter FULLPATH.txt file with hosts/IPs: "
read VAR

input=$VAR
while IFS= read -r line; do
        echo "$line"
        itwasalladream -u {unpriv account username} -p {unpriv account password} -d {domain} "$line"
done < "$input"
rm Vulnerable.csv
cat *.csv > CombinedCSV.csv
rm report_*

grep Yes CombinedCSV.csv > Vulnerable.csv
awk -F"," '{print $1}' Vulnerable.csv > cutmeout.txt
rm unreachable_unknown_host_list.txt
grep -vw -f cutmeout.txt $VAR > unreachable_unknown_host_list.txt
