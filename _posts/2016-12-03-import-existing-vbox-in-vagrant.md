---
layout: post
title:  Import existing vbox in vagrant
tags:   [tips, vagrant, virtualbox]
---

* Add vbox to VirtualBox (Machine -> Add)
* ```cd <project_directory>```
* ```mkdir -p .vagrant/machines/default/virtualbox```
* ```VBoxManage list vms```
* copy hash in curly braces of your vbox, ex. "bdff668b-af18-4dad-ac58-9d9c1865d9d7"
* ```echo -n "COPIED_HASH" > .vagrant/machines/default/virtualbox/id```
* run VirtualBox and start your vbox, log in with username: **vagrant**, password: **vagrant**
* ```cd ~```
* ```curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub >> .ssh/authorized_keys```
* you may logout vbox and quit VirtualBox
* ```vagrant reload```
