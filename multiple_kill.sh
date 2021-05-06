# Assumes rc3 and epaxos-single have been installed in root user folder.
key=/root/go/src/rc3/deployment/install/id_rsa
User=root
ServerIps=(35.231.106.63 35.231.36.158 35.231.156.78 34.73.203.209 35.196.236.120)
ClientIps=(34.74.63.165)

kill_all() {
  for ip in "${ServerIps[@]}"; do
    ssh -o StrictHostKeyChecking=no -i ${key} "${User}"@"${ip}" "sudo su && cd && cd go/src/epaxos-single && .fastkill.sh" 2>&1 &
  done
  for ip in "${ClientIps[@]}"; do
    ssh -o StrictHostKeyChecking=no -i ${key} "${User}"@"${ip}" "sudo su && cd && cd go/src/epaxos-single && .fastkill.sh" 2>&1 &
  done
}

# must be called at this folder, e.g., do sth like cd .../depolyment/run && . <file name>.sh
. fastkill.sh
kill_all