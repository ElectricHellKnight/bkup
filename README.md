# bkup
A little script to easily backup configs to an organized directory.

You ever go to edit a config file and simply add a .old or a .bak? You know, you go to edit /etc/ssh/sshd_config and you make /etc/ssh/sshd_config.bak right next to the original?

I find this to be a little messy and got sick of always manually copying and specifying the timestamp, so I made this.

Make a root folder for your backups (I like to use /bak/hostname) and make sure you have write permissions to it. Then ***EDIT THE SCRIPT and put that path in the top variable***. Then just run:

bkup /some/directory/file.fil /some/other/directory/conf.conf

and it will create:

/your/backup/path/some/directory/file.fil_MMDDYYYY_HHMM

and

/your/bakup/path/some/other/directory/conf.conf
