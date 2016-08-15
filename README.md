# ansible_slackware_bootstrap
A set of Ansible and Perl scripts to run after a fresh Slackware install

I wrote these playbooks and scripts with the aim of making Slackware more accessible to the masses.

The first thing you want to do is run slackware-bootstrap-perl-and-python.pl, which will install Perl and Python on your target Slackware machine. After that, run the slackware-installsets.yaml and slackware-admin-setup.yaml playbooks, in that order. You can use my runplaybook.pl script (https://github.com/mmlj4/runplaybook.pl, included for convenience' sake) for these if you like. If you desire to install slackpkg+, uncomment that stanza in slackware-admin-setup.yaml.

Please note that while I have included the sbopkg, sbotools and slackpkg+ packages, you will most certainly want to make sure you have the latest versions of these source and package tools. See the README in the packagetools directory for more info.

There are things that you should customize... for example, you will want to copy your own .profile, .bashrc and .vimrc dotfiles to the dotfiles directory... I've tried to document where such customizations could be made.

https://sbopkg.org
https://pink-mist.github.io/sbotools/
http://slakfinder.org/slackpkg+.html

Please, if you find errors or have suggestions, let me know. Thanks.

--Joey Kelly
