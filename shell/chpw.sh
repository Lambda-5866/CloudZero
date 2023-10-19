#!/bin/bash

mysql  -uroot -p1234 -e "use web; update member set PASSWD='1q2w3e4r' where SNB='$1' " 2> /dev/null;
