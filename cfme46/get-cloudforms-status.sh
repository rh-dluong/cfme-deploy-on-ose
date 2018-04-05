#!/bin/bash
oc get pods -n cloudforms46| awk '{print $2}' | awk -F "/" '{print $1}' |tr -d "\r\n"

