MASTER_SERVER_IP=""

bin/master -N 5 &
sleep 0.1
bin/server -maddr ${MASTER_SERVER_IP} -addr ${MASTER_SERVER_IP} &
