SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${ROOT_DIR}
git clone https://git.buildroot.net/buildroot

cd buildroot

git checkout 2021.11.x
git checkout -b mywork
