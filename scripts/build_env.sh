BE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ROOT_DIR="${BE_DIR}/.."
ARDUPILOT_DIR="${ROOT_DIR}/ardupilot"
BUILDROOT_DIR="${ROOT_DIR}/buildroot"
UBOOT_DIR="${ROOT_DIR}/u-boot"
NFSROOT_DIR="${ROOT_DIR}/nfsroot"
KERNELBUILDSCRIPTS_DIR="${ROOT_DIR}/kernelbuildscripts"
TOOLCHAIN_NAME="gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf"
TOOLCHAIN_DIR="${ROOT_DIR}/${TOOLCHAIN_NAME}"
TFTP_DIR="${ROOT_DIR}/tftpboot"

BBBL_DEFCONFIG="beagleboneblue_defconfig"
BBBL_OVERLAY="beagleboneblue"

BUILDROOT_DEFCONFIG_DIR="${BUILDROOT_DIR}/configs"
BUILDROOT_OVERLAY_DIR="${BUILDROOT_DIR}/board"

export CC=${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-

ARDUPILOT_WAF=$ARDUPILOT_DIR/modules/waf/waf-light

reset