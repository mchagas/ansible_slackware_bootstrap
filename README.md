# ansible_slackware_bootstrap
A set of Ansible and Perl scripts to run after a fresh Slackware install

I wrote these playbooks and scripts with the aim of making Slackware more accessible to the masses. A few arbitrary decisions were made along the way... for instance, I chose a working path of /root/ansible/slackware, so you'll have to create that directory or edit the scripts to reflect the path you want to keep everything in.

The first thing you want to do is run slackware-bootstrap-perl-and-python.pl, which will install Perl and Python on your target Slackware machine. After that, run the slackware-installsets.yaml and slackware-admin-setup.yaml playbooks, in that order. You can use my runplaybook.pl script (https://github.com/mmlj4/runplaybook.pl) for these if you like. If you desire to install slackpkg+, uncomment that stanza in slackware-admin-setup.yaml.
