MASTER_SERVER_IP="10.10.1.1"

rm log.out
NClient=100
NReq=1000
clientBatchSize=10
rounds=$((NReq / clientBatchSize))

for((c=1; c<=$NClient; c++))
do
  bin/client -maddr ${MASTER_SERVER_IP} -q $NReq -r $rounds &
#> logs/C-$c.out 2>&1 &
done 
