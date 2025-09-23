source ~/workdir/zephyr-fork/zephyr-env.sh

export PYTHONPATH=~/workdir/zephyr-fork/scripts/pylib/pytest-twister-harness/src:$PYTHONPATH

pytest \
    -p twister_harness.plugin \
    --twister-harness \
    --device-type=hardware \
    --device-rtt=True \
    --build-dir build
