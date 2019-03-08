---
title: "Import Existing Vbox in Vagrant"
date: 2016-12-03T18:00:00+07:00
---

```bash
# Add vbox to VirtualBox (Machine -> Add)

# Then create a directories for Vagrant in the your project:
cd project_directory
mkdir -p .vagrant/machines/default/virtualbox
VBoxManage list vms

# copy a hash in curly braces of your vbox, ex. “bdff668b-af18-4dad-ac58-9d9c1865d9d7”
echo -n "COPIED_HASH" > .vagrant/machines/default/virtualbox/id

# run VirtualBox and start your vbox, log in there with username: vagrant, password: vagrant
cd ~
curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub >> .ssh/authorized_keys

# After that you must logout from vbox and quit VirtualBox
vagrant reload
```
