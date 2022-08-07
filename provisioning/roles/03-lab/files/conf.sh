#!/bin/bash

ACCOUNT_NAME=$1
ACCESS_KEY=$2

cat << EOF >controller-info.xml 
<?xml version="1.0" encoding="UTF-8"?>
<controller-info>
    <account-name>$ACCOUNT_NAME</account-name>
    <account-access-key>$ACCESS_KEY</account-access-key>

    <controller-host>$ACCOUNT_NAME.saas.appdynamics.com</controller-host>
    <controller-port>443</controller-port>
    <controller-ssl-enabled>true</controller-ssl-enabled>

    <application-name>Java101</application-name>
    <tier-name>Tomcat9</tier-name>
    <node-name>node1</node-name>

    <sim-enabled>true</sim-enabled>
</controller-info>
EOF
