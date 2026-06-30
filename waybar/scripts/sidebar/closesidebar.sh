#!/bin/bash

address=$(pgrep -a waybar)
length=${#address}
echo $address
idtokill=${address:length-105:5}
idtokilltwo=${address:length-106:6}
kill -9 $idtokill
kill -9 $idtokilltwo
