#!/usr/bin/env bash
curl -L 'https://download.oracle.com/otn/java/jdk/11.0.3+12/37f5e150db5247ab9333b11c1dddcd30/jdk-11.0.3_linux-x64_bin.rpm' \
  -H 'Connection: keep-alive' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
  -H 'Accept-Encoding: gzip, deflate, br' \
  -H 'Accept-Language: en-US,en;q=0.9,nl;q=0.8' \
  -H "Cookie: oraclelicense=accept-securebackup-cookie" \
  --compressed \
  -o jdk-11.0.3_linux-x64_bin.rpm

