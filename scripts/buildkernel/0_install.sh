SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${ROOT_DIR}
git clone https://github.com/RobertCNelson/ti-linux-kernel-dev ${KERNELBUILDSCRIPTS_DIR}

cd ${KERNELBUILDSCRIPTS_DIR}
git checkout origin/ti-linux-rt-5.10.y -b tmp
