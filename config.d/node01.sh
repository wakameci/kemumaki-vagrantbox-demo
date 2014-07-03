#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

# Do some changes ...

chkconfig jenkins on
service jenkins start
