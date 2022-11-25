#!/bin/bash
set -e


yay -S brother-mfc-j4510dw
yay -S brother-brgenml1
yay -S brother-dcp7055

#in manjaro leave out

#sudo pacman -S cups gutenprint cups-pdf gtk3-print-backends nmap
#sudo systemctl enable org.cups.cupsd.service
#sudo systemctl start org.cups.cupsd.service


##Go to http://localhost:631/ and add the printer
