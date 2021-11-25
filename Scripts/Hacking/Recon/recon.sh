#!/usr/bin/env bash
exclude=''
while getopts 'i:e:' flag
do
    case $flag in
        'i') input="${OPTARG}";;
        'e') exclude="{$OPTARG}";;
    esac
done
echo "[+] GETTING SUBDOMAINS"
[[ ! -e 'Subdomains' || ! -d 'Subdomains' ]] && mkdir -v Subdomains
wildcards=$(cat $input | grep '\*' | sed 's/\*\.//g')
pushd Subdomains
for domain in $wildcards
do
    curl "https://sonar.omnisint.io/subdomains/$domain" \
  -H 'authority: sonar.omnisint.io' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36' \
  -H 'accept: */*' \
  -H 'sec-gpc: 1' \
  -H 'origin: https://omnisint.io' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://omnisint.io/' \
  -H 'accept-language: en-US,en;q=0.9' \
  --compressed -s -o ~/.cache/subdomains.cache
    cat ~/.cache/subdomains.cache | sed -e 's/\[\(.*\)\]/\1/g' -e 's/\"//g' | \
        tr ',' '\n' | while read domain ; do

        echo "$domain" | tee -a subdomains.txt
    done
done
popd
if [[ -n $exclude ]]
then
    echo "[+] Removing out of scope domains"
    grep '\*' $exclude | sed 's/\*\.//g' | while read domain ; do
        grep -v "$domain" Subdomains/subdomains.txt > subdomains_tmp.txt
        mv Subdomains/subdomains_tmp.txt subdomains.txt
    done
    grep -v '\*' $exclude | while read domain ; do
        grep -v "$domain" Subdomains/subdomains.txt > subdomains_tmp.txt
        mv Subdomains/subdomains_tmp.txt subdomains.txt
    done
else
    echo "[+] NO OUT OF SCOPE DOMAINS FOUND MOVING ON"
fi
grep -v '\*' $input >> Subdomains/subdomains.txt
pushd Subdomains
echo "[+] PROBING ALL DOMAINS"
cat subdomains.txt | httprobe-bin | tee online.txt
grep '^https' online.txt | uniq > online_https.txt
sed 's/^https:\/\///g' online_https.txt > for_scan.txt
popd
echo "[+] STARTING SCREENSHOTING"
mkdir -v Screenshots
pushd Screenshots
httpscreenshot -l ../Subdomains/online_https.txt -p -w 5 -a -vH &> /dev/null
echo "[+] GETTING HTTP HEADERS"
cat ../Subdomains/for_scan.txt | xargs -P5 -i curl -I -s --proto-default https {} -o {}.headers
popd
echo "[+] GETTING PARAMETERS"
mkdir -v Parameters
python -m arjun -i Subdomains/online_https.txt -t 5 -oJ parameters.json
