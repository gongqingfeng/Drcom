title 【DRCOM】Drcom登陆脚本
@echo off
color 2F
echo       --------------------------------------------------------------------
echo      o                         Drcom登陆脚本                              
echo      o                                                                    
echo      o                     -= By 青枫——qingfeng出品 =-                    
echo      o                                                                   
echo      o                                                                                                                                    
echo      o ★ 此脚本采用python程序登陆，运行脚本之前请确保以下条件满足：      
echo      o                                                                   
echo      o ☆ 1.安装好python程序，下载网址：www.python.org                    
echo      o                                                                   
echo      o ★ 2.在Drcom.py文件的相对应的位置填写好自己的账号密码              
echo      o                                                                   
echo      o ☆ 3.分享脚本之前一定记得把Drcom.py中的明文密码账号去除            
echo      o                                                                   
echo      o ★ 注意账号信息泄露，否则后果自负！                                
echo      o                                                                   
echo      o ☆ QQ： 894237294                                      
echo      o                                                                   
echo      o                                                                   
echo      o                   〓个人博客：blog.spursgo.com〓                     
echo      o                                                                  
echo       ---------------------------------------------------------------------
pause
echo. 请仔细阅读以上内容，并确保满足所有条件
echo. 如果您以上的步骤全都确认准备完毕 
pause
start /b python Drcom.py >NUL 2>&1
echo.
ping -n 2 www.baidu.com >NUL 2>&1
if %errorlevel%==0 (echo     √ 外网正常) else (echo     × 外网不通)         
echo.
ping -n 2 127.0.0.1 >NUL 2>&1
if %errorlevel%==0 (echo     √ TCP/IP协议正常) else (echo     × TCP/IP协议异常)
             
echo.
echo. 恭喜你，网络通畅，登陆成功！
echo.
echo. 可以关闭此窗口了！

