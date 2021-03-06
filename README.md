# Fedora 31 Workstation

## What

* Fedora 31, with Desktop Environment
* For vagrant Libvirt provider (https://github.com/vagrant-libvirt/vagrant-libvirt)
* Produces a vagrant box (https://www.vagrantup.com/) under `builds/`
    * Box is ~XXXXHUNDREDMB after building
    * Box uses rsync rather than nfs for syncing `/vagrant`

##  tl;dr

```
vagrant/vagrant
```

## Building

* packer build fedora.json
* vagrant box add builds/fedora-31-libvirt.box
  * Note libvirt keeps disks, might have to delete from filestore if re-adding
  * --force won't help you

