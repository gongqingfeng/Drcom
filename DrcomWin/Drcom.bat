title ��DRCOM��Drcom��½�ű�
@echo off
color 2F
echo       --------------------------------------------------------------------
echo      o                         Drcom��½�ű�                              
echo      o                                                                    
echo      o                     -= By ��㡪��qingfeng��Ʒ =-                    
echo      o                                                                   
echo      o                                                                                                                                    
echo      o �� �˽ű�����python�����½�����нű�֮ǰ��ȷ�������������㣺      
echo      o                                                                   
echo      o �� 1.��װ��python����������ַ��www.python.org                    
echo      o                                                                   
echo      o �� 2.��Drcom.py�ļ������Ӧ��λ����д���Լ����˺�����              
echo      o                                                                   
echo      o �� 3.����ű�֮ǰһ���ǵð�Drcom.py�е����������˺�ȥ��            
echo      o                                                                   
echo      o �� ע���˺���Ϣй¶���������Ը���                                
echo      o                                                                   
echo      o �� QQ�� 894237294                                      
echo      o                                                                   
echo      o                                                                   
echo      o                   �����˲��ͣ�blog.spursgo.com��                     
echo      o                                                                  
echo       ---------------------------------------------------------------------
pause
echo. ����ϸ�Ķ��������ݣ���ȷ��������������
echo. ��������ϵĲ���ȫ��ȷ��׼����� 
pause
start /b python Drcom.py >NUL 2>&1
echo.
ping -n 2 www.baidu.com >NUL 2>&1
if %errorlevel%==0 (echo     �� ��������) else (echo     �� ������ͨ)         
echo.
ping -n 2 127.0.0.1 >NUL 2>&1
if %errorlevel%==0 (echo     �� TCP/IPЭ������) else (echo     �� TCP/IPЭ���쳣)
             
echo.
echo. ��ϲ�㣬����ͨ������½�ɹ���
echo.
echo. ���Թرմ˴����ˣ�

