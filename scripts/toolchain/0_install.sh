SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${SCRIPT_DIR}
wget -c https://releases.linaro.org/components/toolchain/binaries/6.5-2018.12/arm-linux-gnueabihf/${TOOLCHAIN_NAME}.tar.xz
tar xf ${TOOLCHAIN_NAME}.tar.xz
mv ${TOOLCHAIN_NAME} ${ROOT_DIR}

sudo ln -s /usr/bin/python3.8 /usr/bin/python
