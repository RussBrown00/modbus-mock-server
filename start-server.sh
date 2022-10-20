#!/bin/sh

echo "************************************************************"
echo "**********    SERVER_TYPE: $SERVER_TYPE"
echo "**********    SERVER_PORT: $SERVER_PORT"
echo "**********    WEB_PORT: $WEB_PORT"
echo "**********    DEVICE ID: $DEVICE_ID"
echo "************************************************************"

pymodbus.server run \
  --modbus-server $SERVER_TYPE \
  --host 0.0.0.0 \
  --modbus-port $SERVER_PORT \
  --web-port $WEB_PORT \
  --unit-id $DEVICE_ID
