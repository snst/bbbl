SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

mkdir -p ${NFSROOT_DIR}
sudo chown root:root ${NFSROOT_DIR}

mkdir -p ${TFTP_DIR}
