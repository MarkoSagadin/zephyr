# west twister \
#     -T tests/kernel/mem_slab/mslab \
#     -p nrf7002dk/nrf5340/cpuapp \
#     --device-testing \
#     --device-serial /dev/ttyACM1 \
#      --log-level DEBUG \
#     -vvv

# Below works
# west twister \
#     -T tests/kernel/mem_slab/mslab \
#     -p nrf7002dk/nrf5340/cpuapp \
#     --device-testing \
#     --device-serial-pty ./west_rtt.sh \
#      --flash-before \
#      --test-only \
#      --log-level DEBUG \
#     -vvv

# west twister \
#     -T tests/subsys/zbus \
#     -p nrf7002dk/nrf5340/cpuapp \
#     --device-testing \
#     --device-serial /dev/ttyACM1 \
#     --flash-before \
#     --log-level DEBUG \
#     -x=CONFIG_USE_SEGGER_RTT=y \
#     -x=CONFIG_LOG_BACKEND_RTT=y \
#     -x=CONFIG_LOG_BACKEND_UART=n \
#     -x=CONFIG_LOG_MODE_DEFERRED=y \
#     -vvv

# west twister \
#     -T tests/subsys/zbus/integration \
#     -p nrf7002dk/nrf5340/cpuapp \
#     --device-testing \
#     --device-rtt \
#     --log-level DEBUG \
#     -x=CONFIG_USE_SEGGER_RTT=y \
#     -x=CONFIG_LOG_BACKEND_RTT=y \
#     -x=CONFIG_LOG_BACKEND_UART=n \
#     -x=CONFIG_LOG_MODE_DEFERRED=y \
#     -vvv

# west twister \
#     -T tests/subsys/zbus/integration \
#     -p nrf7002dk/nrf5340/cpuapp \
#     --device-testing \
#     --device-serial /dev/ttyACM1 \
#     --log-level DEBUG \
#     -vvv

# west twister \
#     -T tests/subsys/zbus/integration \
#     --device-testing \
#     --hardware-map map.yml \
#     --log-level DEBUG \
#     -vvv

# west twister \
#     -T tests/subsys/zbus/integration \
#     --device-testing \
#     --hardware-map map_rtt.yml \
#     --log-level DEBUG \
#     -x=CONFIG_USE_SEGGER_RTT=y \
#     -x=CONFIG_LOG_BACKEND_RTT=y \
#     -x=CONFIG_LOG_BACKEND_UART=n \
#     -x=CONFIG_LOG_MODE_DEFERRED=y \
#     -vvv

west twister \
    -T tests/misc/print_format \
    --device-testing \
    --hardware-map map_rtt.yml \
    --log-level DEBUG \
    -x=CONFIG_LOG=y \
    -x=CONFIG_USE_SEGGER_RTT=y \
    -x=CONFIG_LOG_BACKEND_RTT=y \
    -x=CONFIG_LOG_BACKEND_UART=n \
    -x=CONFIG_LOG_MODE_DEFERRED=y \
    -vvv
