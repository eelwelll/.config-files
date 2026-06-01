#!/bin/bash

address=$(pgrep -a waybar)
length=${#address}
echo $address
idtokill=${address:length-105:5}
kill -9 $idtokill
