Motd Cookbook
=============

This cookbook makes your motd.

[![Build Status](https://travis-ci.org/linyows/motd-cookbook.svg?branch=master)][travis]
[travis]: http://travis-ci.org/linyows/motd-cookbook

Usage
-----

Just include `motd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[motd]"
  ],
  "motd": {
    "cookbook": "mycookbook"
  }
}
```

edit: cookbooks/mycookbook/template/default/motd.erb

ssh login:

```sh
$ ssh myserver.com
Last login: Wed Dec 25 00:00:00 2099 from 192.168.1.1

   __  _______  _________
  /  |/  / __ \/_  __/ _ \
 / /|_/ / /_/ / / / / // /
/_/  /_/\____/ /_/ /____/

https://github.com/linyows/motd-cookbook

Chef-Client - myserver.com
Hostname: myserver.com
Last Run: 2099-12-24 23:59:59 +0900
Roles: base, app

(c) MOTD
```

Authors and Contributors
------------------------

- [linyows](https://github.com/linyows)

License
-------

MIT
