Intro
=====

The old and original intro

"This module is heavily inspired by the pam-http module by Kragen Sitaker. I rewrote it largely because I wanted to MIT license it (instead of GPL) and because there was some profanity in the source.  Also, the version I modeled this off of didn't even compile because it used an old version of libcurl."

I forked it from https://github.com/beatgammit/pam-http Jameson Little's repo, but this gone into multuple changes.

So now what it does is something simple.

Expects a URL

        auth sufficient gate_pam.so url=https://<URL>?user=<username>=password=<password>
        account sufficient gate_pam.so

Since I user google authenticator as password, that's why I did not care about obsfucating the password, but if you want to authenticate against your own DB, then you might want to make that change.


Simple Usage
------------

The .so file should be put in `/lib/*/security` and the PAM config files will need to be edited accordingly.

The config files are located in `/etc/pam.d/` and the one I changed was `/etc/pam.d/common-auth`. i
This is NOT the best place to put it, as sudo uses this file and you could get unexpected results. But if you have any other suggestions please let me know.


	auth sufficient mypam.so url=https://localhost:2000
	account sufficient mypam.so

Sufficient basically means that if this authentication method succeeds, the user is given access.

Contributor: Ajey Gore 


