#!/bin/bash
pushd /var/db/repos/qgj
sudo chown -R portage:portage *
sudo -u portage find . -type f -name "*.ebuild" -exec ebuild {} digest \;
popd
