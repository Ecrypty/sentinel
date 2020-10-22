#!/bin/bash
set -evx

mkdir ~/.florijncoincore

# safety check
if [ ! -f ~/.florijncoincore/.florijncoin.conf ]; then
  cp share/florijncoin.conf.example ~/.florijncoincore/florijncoin.conf
fi
