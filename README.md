Motd Cookbook
=============

This cookbook makes your motd.

Usage
-----

Just include `motd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[motd]"
  ],
  "override_attributes": {
    "motd": {
        "header": "
   __  _______  _________
  /  |/  / __ \/_  __/ _ \
 / /|_/ / /_/ / / / / // /
/_/  /_/\____/ /_/ /____/
",
        "footer": "
 (c) MOTD",
    }
  }
}
```

```sh
$ ssh myserver.com
Last login: Wed Dec 25 00:00:00 2099 from 192.168.1.1

   __  _______  _________
  /  |/  / __ \/_  __/ _ \
 / /|_/ / /_/ / / / / // /
/_/  /_/\____/ /_/ /____/

Chef-Client - myserver.com
Hostname: myserver.com
Last Run: 2099-12-24 23:59:59 +0900
Roles: base, ruby, nodejs, web, database, cache, app

(c) MOTD
```

Authors and Contributors
------------------------

- [linyows](https://github.com/linyows)

License
-------

MIT
