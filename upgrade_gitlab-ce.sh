# This script specifically upgrade the gitlab-ce package only. It assumes the 
# package is in "hold" status, and therefore first unhold it, and then upgrade 
# the destined package (and only that package), and then hold it again to prevent 
# furture `apt-get upgrade` from upgrading it accidentally
#
# Author: Chang-Hong Hsu (hsuch@umich.edu) 
# Change log: 
#   - file created, untested (09/23/2016)

PACKAGE_NAME="gitlab-ce"
sudo apt-mark unhold $PACKAGE
sudo apt-get install --only-upgrade $PACKAGE
sudo apt-mark hold $PACKAGE

