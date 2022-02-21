SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${KERNELBUILDSCRIPTS_DIR}

ZIMAGE_SRC="${KERNELBUILDSCRIPTS_DIR}/KERNEL/arch/arm/boot/zImage"
DTB_SRC="${KERNELBUILDSCRIPTS_DIR}/KERNEL/arch/arm/boot/dts/am335x-boneblue.dtb"

stat ${ZIMAGE_SRC}
cp -v ${ZIMAGE_SRC} ${TFTP_DIR}

stat ${DTB_SRC}
cp -v ${DTB_SRC} ${TFTP_DIR}
