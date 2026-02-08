#!/bin/bash

TO_ADDRESS=$1
Subject=$2
MESSAGE_BODY=$3
ALERT_TYPE=$4
SERVER_IP=$5
TO_TEAM=$6


{
echo "To: dheerajnalla92@gmail.com"
echo "Subject: hello world"
echo "Content-Type: text/html"
echo ""
echo "Hi"
} | msmtp "dheerajnalla92@gmail.com"