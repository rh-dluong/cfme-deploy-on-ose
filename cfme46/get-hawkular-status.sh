#!/bin/bash
oc get pods -n openshift-infra | awk '{print $2}' | awk -F "/" '{print $1}' |tr -d "\r\n"


