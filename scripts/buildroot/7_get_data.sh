SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

#rm -rf "${SCRIPT_DIR}/data/${BBBL_OVERLAY}"
cp -v -r "${BUILDROOT_OVERLAY_DIR}/${BBBL_OVERLAY}" ${SCRIPT_DIR}/data
cp -v "${BUILDROOT_DEFCONFIG_DIR}/${BBBL_DEFCONFIG}" ${SCRIPT_DIR}/data
