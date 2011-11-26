#!/bin/sh
echo "Reboot following dpkg-autoconfiguration" >&2
/sbin/reboot -d -f -i
