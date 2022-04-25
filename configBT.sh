#!/bin/bash

sed -i -e 's,ExecStart=/usr/lib/bluetooth/bluetoothd,ExecStart=/usr/lib/bluetooth/bluetoothd -P battery,g' /usr/lib/systemd/system/bluetooth.service
systemctl daemon-reload
service bluetooth restart