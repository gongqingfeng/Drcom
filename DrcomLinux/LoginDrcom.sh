#!/bin/sh

#设置帐号密码
setInfo(){
	echo "请输入你的用户名："
	read username
	echo "请输入你的密码："
	read password
	#设置密码
	sed -i "9c username='${username}'  #your username" Drcom.py
	#设置帐号
	sed -i "10c password='${password}'  #your password" Drcom.py
	echo "保存成功"
}

#清除帐号密码
clearInfo(){
	#清除帐号
	sed -i "9c username=''  #your username" Drcom.py
	#清除密码
	sed -i "10c password=''  #your password" Drcom.py
	echo "清除成功"
}

#登录Drcom
login(){
	killDrcom
	python Drcom.py > /dev/null 2>&1 &
	lines=`ps -aux | grep 'python Drcom.py' | wc -l` 
	if [ $lines -gt 1 ]; then
	 	network
	fi 
}

#查询Drcom运行状态
inquireDrcom(){
	lines=`ps -aux | grep 'python Drcom.py' | wc -l` 
	if [ $lines -gt 1 ]; then
		pid=`ps -ef | grep "python Drcom.py" | grep -v grep | awk '{print $2}'`
	 	echo "Drcom正在后台运行，后台进程id为${pid}"
	else
		echo "Drcom尚未运行"
	fi 
}

#杀死Drcom后台进程
killDrcom(){
	lines=`ps -aux | grep 'python Drcom.py' | wc -l` 
	if [ $lines -gt 1 ]; then
	 	pid=`ps -ef | grep "python Drcom.py" | grep -v grep | awk '{print $2}'`
	 	echo "Drcom后台进程id为${pid}"
	 	kill ${pid} > /dev/null 2>&1 &
	 	echo "Drcom成功杀死"
	else
		echo "Drcom尚未运行"
	fi 
	 
}

network(){
	host="www.baidu.com"
	ping -c 2 $host > /dev/null  2>&1
	if [ $? = 0 ]; then
		echo "联网成功"
	else
		echo "联网失败，请检查网络链路或者登录帐号信息是否正确"
	fi
}

#选择流程
chose(){
	while true 
	do
		echo "是否继续运行此脚本yes/no"
		read choice
		case $choice in
			"yes" | "y" | "Y" | "YES")
				break
			;;

			"no" | "n" | "N" | "NO")
				bye
				exit
			;;

			*)
				echo "输入错误，请重新输入"
		esac
	done
}

welcome(){
	clear
	echo       --------------------------------------------------------------------
	echo      o                         Drcom登陆脚本                              
	echo      o                                                                    
	echo      o                     -= By 青枫——龚清峰出品 =-                    
	echo      o                                                                   
	echo      o                                                                                                                                    
	echo      o ★ 此脚本采用python程序登陆，运行脚本之前请确保阅读以下内容：      
	echo      o                                                                   
	echo      o ☆ 1.安装好python程序                    
	echo      o                                                                   
	echo      o ★ 2.脚本与Drcom.py文件在同一文件夹            
	echo      o                                                                   
	echo      o ☆ 3.执行登录操作之前请先按照指引设置帐号密码            
	echo      o      
	echo      o ★ 4.分享脚本之前一定记得执行脚本的去除帐号密码功能    
	echo      o                                                               
	echo      o ☆ 5.注意账号信息泄露问题，否则后果自负！                                
	echo      o                                                                   
	echo      o ★ QQ：894237294                                      
	echo      o                                                                   
	echo      o                                                                   
	echo      o                   〓个人博客：blog.spursgo.com〓                     
	echo      o                                                                  
	echo       ---------------------------------------------------------------------
	echo "回车继续"
	read temp
	clear
}

bye(){
	echo "欢迎登录个人博客：blog.spursgo.com,获取更多精彩内容！"
	echo "bye bye！"
}
menu(){
	clear
	echo "请输入下面的数字进行选择："
	echo "-------------------------------"
	echo "1. 设置帐号密码"
	echo "2. 清除帐号密码"
	echo "3. 登录Drcom"
	echo "4. 查询Drcom运行状态"
	echo "5. 杀死Drcom后台进程"
	echo "6. 检查网络连通性"
	echo "7. 退出脚本"
	echo "-------------------------------"
	read num
	case $num in
		[1] )
			setInfo
		;;

		[2] )
			clearInfo
		;;

		[3] )
			login
		;;

		[4] )
			inquireDrcom
		;;

		[5] )
			killDrcom
		;;

		[6] )
			network
		;;

		[7] )
			bye
			exit
		;;

		*)
			echo "选择错误，请重新选择"
	esac
		
}

main(){
	welcome
	while true 
	do
		menu
		chose
	done
}

main








