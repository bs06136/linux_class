#!bin/sh
if [ $# -ne 2 ]; then
	echo "invalic input"
	exit 1
fi
if [ $1 -lt 1 ]; then
	echo "input must be greater than 0"
	exit 1
fi

if [ $2 -lt 1 ]; then
	echo "input must be greater than 0"
	exit 1	
fi
for i in $(seq 1 $1) 
do
	for j in $(seq 1 $2)
	do
		printf "%d*%d=%d  " $i $j $((i * j))
	done
echo " "
done
exit 0
