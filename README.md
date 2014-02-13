pptpd_vpn Cookbook
======================
This cookbook is a pptpd_vpn server build. It is build for raspberry pi with Raspbian[1], but as Raspbian is build on Debian[2] is
also works on Debian and Ubuntu[3].

1) [http://www.raspbian.org/](http://www.raspbian.org/)

2) [http://www.debian.org/](http://www.debian.org/)

3) [http://www.ubuntu.com/](http://www.ubuntu.com/)

Requirements
------------

Running system with one of above operating systems.


Attributes
----------

You need to change the `local_ip`, `ip_begin` and `ip_end_block` in the node configuration to match you network settings.

Usage
-----

e.g.
Just include `pptpd_vpn` in your node's `run_list`:

```json
{
    "pptpd_vpn": {
        "local_ip": "192.168.1.53",
        "ip_begin": "192.168.1.200",
        "ip_end_block": "231"
    },
    "run_list": [
        "recipe[pptpd_vpn]"
    ]
}
```

Issues
------

Simply add a issue in the [issue tracker](https://bitbucket.org/tomasnorre/chef_pptpd_vpn/issues).

License and Authors
-------------------
Authors: Tomas Norre <tomas.norre@gmail.com>


```text
The MIT License (MIT)

Copyright (c) 2014 Tomas Norre

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```