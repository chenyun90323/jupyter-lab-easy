#!/bin/sh

if [ ! `whoami` = "root" ];then
	echo "非root用户，请用root运行！"
    exit
fi

DIR=`pwd`
ln -s /etc/logrotate.d/jupyterlab $DIR/jupyterlab_logrotate
ln -s /etc/systemd/system/jupyterlab.service $DIR/jupyterlab.service
mkdir -p root
mkdir -p log
echo '请运行 jupyter-lab --generate-config ，配置 jupyter_notebook_config.py ...'
