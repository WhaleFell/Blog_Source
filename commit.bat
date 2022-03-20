@echo off
%防中文乱码%
chcp 65001
echo %~dp0
echo 目录 %~dp0 按任意键运行自动git处理
pause %暂停%
cd /d %~dp0  %进入脚本目录%
echo ======暂存变更=======
git add .
echo =====提交变更========
echo 请输入msg:
set /p msg=
git commit -m "%msg%"
echo =======拉取远程======
git pull origin master
echo =====提交远程========
git push -u origin master
echo ======end==========
pause




