SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${ROOT_DIR}
git clone https://github.com/ArduPilot/ardupilot.git

cd ${ARDUPILOT_DIR}
git checkout ArduCopter-stable
git submodule update --init --recursive
