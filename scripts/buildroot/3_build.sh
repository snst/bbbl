SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${BUILDROOT_DIR}

make 2>&1 | tee build.log

sudo rm -rf ${NFSROOT_DIR}/*

sudo tar -C ${NFSROOT_DIR} -xf ${BUILDROOT_DIR}/output/images/rootfs.tar
