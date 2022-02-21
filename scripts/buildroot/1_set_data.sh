SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

rm -rf "${BUILDROOT_OVERLAY_DIR}/${BBBL_OVERLAY}"
cp -v -r "${SCRIPT_DIR}/data/${BBBL_OVERLAY}" "${BUILDROOT_OVERLAY_DIR}"
cp -v "${SCRIPT_DIR}/data/${BBBL_DEFCONFIG}" "${BUILDROOT_DEFCONFIG_DIR}"
