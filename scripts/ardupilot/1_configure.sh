SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/../build_env.sh"

cd ${ARDUPILOT_DIR}

$ARDUPILOT_WAF configure --board=blue --toolchain=${TOOLCHAIN}

# https://docs.px4.io/master/en/flight_controller/beaglebone_blue.html
# https://github.com/mirkix/ardupilotblue
# https://github.com/imfatant/test
# https://github.com/ArduPilot/ardupilot/blob/master/BUILD.md

