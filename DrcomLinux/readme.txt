 Drcom linux登陆脚本                              

-= By 青枫 —— 龚清峰=-

★ 此脚本采用python程序登陆，运行脚本之前请确保阅读以下内容：

☆ 1.安装好python程序

★ 2.脚本与Drcom.py文件在同一文件夹

☆ 3.执行登录操作之前请先按照指引设置帐号密码

★ 4.分享脚本之前一定记得执行脚本的去除帐号密码功能

☆ 5.注意账号信息泄露问题，否则后果自负！

★ 若有侵权，请告知，QQ：894237294，会以最快速度撤下程序。                                    

〓个人博客：blog.spursgo.com〓

macOS注意事项：
mac自带的sed命令，因为其是基于bsd，所以与常用的gnu不一样，所以最好还是能够使用gnu下的sed，那么对于mac，就需要通过命令行来安装gnu-sed，具体安装过程如下所示：
> 1.brew install gnu-sed --with-default-names  
> 2.vi ~/.zshrc
```
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
```
> 3.source ~/.zshrc 或者新开窗口，让设置生效

通用使用方法：
执行 chmod +x LoginDrcom*.sh, 赋予该文件可执行权限，然后执行相应版本的文件 如：./LoginDrcomLinux.sh