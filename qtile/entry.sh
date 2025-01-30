#!/bin/bash

# This glue shell is only needed when you want to
# run Qtile within a virtualenv

source /opt/qtile/venv/bin/activate
python /opt/qtile/venv/bin/qtile $*
