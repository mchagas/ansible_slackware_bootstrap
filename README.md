# ansible_slackware_bootstrap
A set of Ansible and Perl scripts to run after a fresh Slackware install

I wrote these playbooks and scripts with the aim of making Slackware more accessible to the masses. A few arbitrary decisions were made along the way... for instance, I chose a working path of /root/ansible/slackware, so you'll have to create that directory or edit the scripts to reflect the path you want to keep everything in. I also made provision for uploading your favorite .profile, .bashrc and .vimrc dotfiles to your target box. If you don't have these available, touch each of them in /etc/ansible/slackware, or comment out the relevant plays in slackware-admin-setup.yaml.

The first thing you want to do is run slackware-bootstrap-perl-and-python.pl, which will install Perl and Python on your target Slackware machine. After that, run the slackware-installsets.yaml and slackware-admin-setup.yaml playbooks, in that order. You can use my runplaybook.pl script (https://github.com/mmlj4/runplaybook.pl) for these if you like. If you desire to install slackpkg+, uncomment that stanza in slackware-admin-setup.yaml.

Please note that you'll have to download the sbopkg, sbotools (and optionally the slackpkg+) packages yourself from the appropriate places, as I am not uploading them here:

https://sbopkg.org
http://dawnrazor.net/sbotools/
http://slakfinder.org/slackpkg+.html

Note: you might have to edit slackware-admin-setup.yaml if you download a newer version of the above packages.

Please, if you find errors or have suggestions, let me know. Thanks.

--Joey Kelly
