rm log.out

EPaxosEnabled=true
MASTER_SERVER_IP="129.232.230.130"

NClient=1
NReq=80000
clientBatchSize=1
rounds=$((NReq / clientBatchSize))

for((c=1; c<=$NClient; c++))
do
  bin/client -maddr ${MASTER_SERVER_IP} -q $NReq -e=${EPaxosEnabled} -r $rounds &
#> logs/C-$c.out 2>&1 &
done
