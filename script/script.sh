#!/bin/sh
mkdir -p /output/${OUTPUT_PATH}
echo "Generating file with date and time at $(date)" > /output/${OUTPUT_PATH}/file-$(date +%Y%m%dT%H%M%S).txt
