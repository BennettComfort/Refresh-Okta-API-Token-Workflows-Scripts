#!/bin/bash
org=''
token=''

curl "https://$org.okta.com/api/v1/users/me" \
--header "Accept: application/json" \
--header "Content-Type: application/json" \
--header "Authorization: SSWS $token" 