#!/bin/bash

rm -rf deployables
mkdir -p deployables
sudo cp -R ./* $OPENERP_LOCATION/openerp/addons/
#Working directory openerp-functional-tests
./run.sh || true
zip -r deployables/openerp-modules.zip openerp-modules --exclude=*.git*