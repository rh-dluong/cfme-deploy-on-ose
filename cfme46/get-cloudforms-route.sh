#!/bin/bash
oc get route -n cloudforms46 | grep httpd | awk '{print $2}'|tr -d "\r\n"
 
