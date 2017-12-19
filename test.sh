#!/bin/sh
diff_path_file_list="./diff_path_file_list"
function check {
    #定义一个函数用于检查上一步执行是否成功
    if [ $? -ne 0 ];then 
            echo -e "\e[1;31m `date +%Y%m%d_%H:%M:%S`  $1 failed,please check it ! \e[0m"|tee -a $error_log
            exit -1
    fi
}

###拉取最新代码
echo -e "\e[1;33m\n---------------git pull--------------\e[0m"
git branch
git pull 
check "git pull"
echo -e "\e[1;32m\n---------------git pull success--------------\e[0m"
sleep 5

###查看那些代码进行了修改
echo -e "\e[1;33m\n---------------git diff list--------------\e[0m"
git diff HEAD HEAD^ --name-only > $diff_path_file_list
check "git diff"
echo -e "\e[1;32m\n---------------git pull success--------------\e[0m"

###链接ftp
ftp 123.125.50.238 5021

###备份、更新



read -p "请按任意键退出" INPUT
