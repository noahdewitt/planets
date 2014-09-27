#!/bin/bash

Planets=('Mercury' 'Venus' 'Earth' 'Mars' 'Jupiter' 'Saturn' 'Uranus' 'Neptune');

for i in "${Planets[@]}"; do
	wget 'http://en.wikipedia.org/wiki/'$i'_(planet)'
	mv $i'_(planet)' $i
	git add $i
	git commit -m 'Automated commit of the wikipedia page for '$i
done

git push


