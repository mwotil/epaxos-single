EPaxosEnabled=true
MASTER_SERVER_IP="129.232.230.130"
REPLICA_SERVER_IP="129.232.230.130"

bin/server -maddr ${MASTER_SERVER_IP} -addr ${REPLICA_SERVER_IP} -e=${EPaxosEnabled} &