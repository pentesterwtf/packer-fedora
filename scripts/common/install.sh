#!/bin/sh -eux

dnf install sudo rsync -y
dnf install qemu-guest-agent spice-vdagent -y
systemctl set-default graphical.target

# Ignore the gnome first setup thing
mkdir /home/vagrant/.config
echo "yes" >> /home/vagrant/.config/gnome-initial-setup-done
chown vagrant:vagrant /home/vagrant/.config
chown vagrant:vagrant /home/vagrant/.config/gnome-initial-setup-done
