# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -ahl'
alias ll='ls -hl'
alias ra='systemctl restart httpd.service'
alias dc='php /root/php/YouDaoFanYiJieKouGongJu/test.php'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PATH=/www/wdlinux/phps/71/bin/:$PATH
export PATH
export LANG=zh_CN.UTF-8
