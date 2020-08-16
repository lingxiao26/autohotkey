CloudMusic := "E:\Program Files (x86)\Netease\CloudMusic\CloudMusic.exe"
eudic := "E:\Program Files (x86)\eudic\eudic.exe"
vagrant_workdir := "G:\vagrant\k8s"
baidu_wp := "E:\baidu\BaiduNetdisk\BaiduNetdisk.exe"

Menu, Web-Site, Add, b站, biliHandler
Menu, Web-Site, Add, zhihu, zhHandler
Menu, Web-Site, Add, LeetCode, lcHandler
Menu, Web-Site, Add, GitHub, ghHandler

Menu, Desk-SoftWare, Add, 网易云, wyyHandler
Menu, Desk-SoftWare, Add, 欧路词典, olHandler
Menu, Desk-SoftWare, Add, 百度网盘, bdwpHandler

Menu, Vagrant, Add, master up, mHandler
Menu, Vagrant, Add, node1 up, n1Handler
Menu, Vagrant, Add, node2 up, n2Handler
Menu, Vagrant, Add, master down, mDHandler
Menu, Vagrant, Add, node1 down, n1DHandler
Menu, Vagrant, Add, node2 down, n2DHandler

Menu, MyMenu, Add, Web-Site, :Web-Site
Menu, MyMenu, Add,
Menu, MyMenu, Add, Desk-SoftWare, :Desk-SoftWare
Menu, MyMenu, Add,
Menu, MyMenu, Add, Vagrant, :Vagrant
Menu, MyMenu, Add,

biliHandler:
  Run, https://www.bilibili.com
return

zhHandler:
  Run, https://www.zhihu.com
return

lcHandler:
  Run, https://www.leetcode.com
return

ghHandler:
  Run, https://www.github.com
return

wyyHandler:
  Run, %CloudMusic%
return

olHandler:
  Run, %eudic%
return

mHandler:
  SetWorkingDir, %vagrant_workdir%
  Run, vagrant.exe up master1
return

n1Handler:
  SetWorkingDir, %vagrant_workdir%
  Run, vagrant.exe up node1
return

n2Handler:
  SetWorkingDir, %vagrant_workdir%
  Run, vagrant.exe up node2
return

mDHandler:
  SetWorkingDir, %vagrant_workdir%
  Run, vagrant.exe halt master1
return

n1DHandler:
  SetWorkingDir, %vagrant_workdir%
  Run, vagrant.exe halt node1
return

n2DHandler:
  SetWorkingDir, %vagrant_workdir%
  Run, vagrant.exe halt node2
return

bdwpHandler:
  Run, %baidu_wp%
return

!q::Menu, MyMenu, Show

