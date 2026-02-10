#!/bin/bash

#
# This file is part of the Generator Labs Zabbix Plugin
#
# For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
#

#
# the account sid and auth token should be passed as the arguments like:
#
#   ./check_generator.sh <account_sid> <auth_token>
#
api_url="https://api.generatorlabs.com/4.0/rbl/listings.zabbix";
api_account_sid=$1;
api_auth_token=$2;

#
# this script uses curl to make the API request to the Generator Labs system
#
curl="/usr/bin/curl";

#
# validate that we have an account sid and auth token
#
if [ ${#api_account_sid} -le 33 ]; then
    echo "You must provide your Generator Labs API account SID and auth token.";
    exit;
fi;
if [ ${#api_auth_token} -le 63 ]; then
    echo "You must provide your Generator Labs API account SID and auth token.";
    exit;
fi;

#
# make the web request and check the output
#
result=`${curl} -s -G ${api_url} -u "${api_account_sid}:${api_auth_token}"`;

echo "$result";
exit 0;
