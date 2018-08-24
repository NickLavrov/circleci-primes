#!/bin/sh

isPrime ()
{
	for i in $(cat < "primes.txt"); do
		remainder=`echo "${1} % ${i}" | bc`
		if [ "$remainder" == "0" ] ; then
			return 1
		fi
	done
	return 0
}

latest=$( tail -n 1 primes.txt )

next=`echo "${latest} + 2" | bc`

while ! isPrime $next
do
    next=`echo "${next} + 2" | bc`
done

echo $next >> primes.txt
