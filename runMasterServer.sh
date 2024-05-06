EPaxosEnabled=false
MASTER_SERVER_IP="129.232.230.130"

bin/master -N 5 &
sleep 0.1
bin/server -maddr ${MASTER_SERVER_IP} -addr ${MASTER_SERVER_IP} -e=${EPaxosEnabled} &