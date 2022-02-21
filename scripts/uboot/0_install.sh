SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${ROOT_DIR}
git clone -b v2021.10 https://github.com/u-boot/u-boot --depth=1

cd ${UBOOT_DIR}
git pull --no-edit https://github.com/beagleboard/u-boot v2021.10-bbb.io-am335x