SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

sudo modprobe nfs 
sudo modprobe nfsd

docker run -d --privileged                            \
  --network=host                                      \
  -v ${NFSROOT_DIR}:/nfsroot                          \
  -v ${SCRIPT_DIR}/exports:/etc/exports:ro            \
  -p 2049:2049                                        \
  erichough/nfs-server
  

docker run -d -p 0.0.0.0:69:69/udp --network=host -v ${TFTP_DIR}:/var/tftpboot pghalliday/tftp

docker ps

echo "docker kill [NAME]"
