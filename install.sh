#!/bin/bash	
    . ./function.sh #加载预定义函数文件
    ##/
    #如果有参数就调用对应的函数，没有就默认调用安装函数
    #/
    if [ $1 ]
    then
        Action $1
    else
        Install
    fi
