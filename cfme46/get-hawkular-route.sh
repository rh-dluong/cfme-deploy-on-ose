#!/bin/bash
oc get route -n openshift-infra | awk '{print $2}' | grep hawkular | tr -d "\r\n"

