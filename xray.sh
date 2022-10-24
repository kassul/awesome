#!/bin/sh
if [ ! -f UUID ]; then
  UUID="cd155c5c-c0bd-418e-8eab-99c01a07b1d1"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

