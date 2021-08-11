rm log.out

EPaxosEnabled=false
MASTER_SERVER_IP="10.10.1.1"

NClient=100
NReq=1000
clientBatchSize=10
rounds=$((NReq / clientBatchSize))

for((c=1; c<=$NClient; c++))
do
  bin/client -maddr ${MASTER_SERVER_IP} -q $NReq -e=${EPaxosEnabled} -r $rounds &
#> logs/C-$c.out 2>&1 &
done