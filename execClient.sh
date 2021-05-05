for((c=1; c<=10; c++))
do
  bin/client -maddr 10.142.15.203 -q 1000 -r 1000 & 
#> logs/C-$c.out 2>&1 &
done 
