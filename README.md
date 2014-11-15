Kemukins: Vagrantbox Demo
=========================

Wakmae CI demo environment with Vagrant.

![sample jenkins](https://cloud.githubusercontent.com/assets/76867/4161995/b56664e4-34d5-11e4-9f25-4eb2120ebabe.png)

Features
--------

+ [wakame-vdc](https://github.com/axsh/wakame-vdc) rpmbuild job demo
+ Deployment pipeline skeleton
+ Jenkins master/slave configuration

System Requirements
-------------------

+ [Vagrant](http://www.vagrantup.com/downloads.html)
+ [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Getting Started
---------------

```
$ git clone https://github.com/wakameci/kemumaki-vagrantbox-demo.git
$ cd kemumaki-vagrantbox-demo
$ make build
```

Access to [http://localhost:8080/](http://localhost:8080/)

Build Cluster
--------------

| name   | eth0 | eth1          | jenkins |
|:-------|:-----|:--------------|:--------|
| node01 | nat  | 192.168.50.11 | master  |
| node02 | nat  | 192.168.50.12 | slave   |

Links
-----

+ Vagrantcloud: [wakameci/kemukins-6.5-x86_64](https://vagrantcloud.com/wakameci/kemukins-6.5-x86_64)
+ Vagrant Box: [wakameci/kemumaki-box-rhel6](https://github.com/wakameci/kemumaki-box-rhel6)
+ Jenkins Configuration: [wakameci/kemumaki-jenkins-demo](https://github.com/wakameci/kemumaki-jenkins-demo)

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
