#!/usr/bin/env bash

# Terminate already running obs instances
killall -q obs

# Wait until the processes have been shut down
while pgrep -u $UID -x obs >/dev/null; do sleep 1; done

# Launch obs
sleep 8 && VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_pro_icd64.json:/usr/share/vulkan/icd.d/amd_pro_icd32.json OBS_USE_EGL=1 obs --startreplaybuffer &
