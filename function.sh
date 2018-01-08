#!/bin/bash
    ##/
    #函数分离，将函数写在这里
    #/
    ##/
    #安装
    #/
    function Install() {
	path=`pwd`
	ln -s $path"/.vim" $HOME"/"
	ln -s $path"/.vimrc" $HOME"/"
	ln -s $path"/.bashrc" $HOME"/"
    }
    ##/
    #卸载
    ##/
    function Uninstall() {
    	echo "Uninstall"
    }  

    ##/
    #根据参数进行调用对应函数
    #/
    function Action() {
	is_case=0
        case $1 in
            "uninstall") Uninstall;is_case=1
                ;;
       	     "install") Install;is_case=1
		;;
        esac
	if [ $is_case -eq 0 ]
	then
	    echo "参数:${1} 有误无法调用对应函数。确认是否参数有误！"
	fi
    }
