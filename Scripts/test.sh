# dict
declare -A examples
examples['t1']='1'

examples['t2']='2'
for key in "${!examples[@]}"
do
	echo $key
done

