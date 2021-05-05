NClient=10
NReq=1000
clientBatchSize=1
rounds=$((NReq / clientBatchSize))

for((c=1; c<=$NClient; c++))
do
  bin/client -maddr 10.142.15.203 -q $NReq -r $rounds & 
#> logs/C-$c.out 2>&1 &
done 
