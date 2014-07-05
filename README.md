Kemukins: Vagrantbox Demo
=========================

System Requirements
-------------------

+ [Vagrant](http://www.vagrantup.com/downloads.html)
+ [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Build Cluster
--------------

| name   | eth0 | eth1          | jenkins |
|:-------|:-----|:--------------|:--------|
| node01 | nat  | 192.168.50.11 | master  |
| node02 | nat  | 192.168.50.12 | slave   |

Getting Started
---------------

```
$ git clone https://github.com/wakameci/kemukins-vagrantbox-demo.git
$ cd kemukins-vagrantbox-demo
$ make build
```

access to [http://localhost:8080/](http://localhost:8080/)

Vagrant Box
-----------

+ [wakameci/kemukins-6.5-x86_64](https://vagrantcloud.com/wakameci/kemukins-6.5-x86_64)

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
