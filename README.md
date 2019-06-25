# Init
####导语
> 首先知道你本地安装的python版本，python2还是python3，python2对中文支持不大好，
比如：【channels_app_name = "叽里呱啦-专注儿童英语启蒙"】这样的写法会报错, 
需要在文件头处加上【# encoding: utf-8】

##python
* pip install virtualenv
* rm -rf venv
* virtualenv -p /usr/bin/python venv/
* source venv/bin/activate
* pip install -r requirements.txt

##python3
* pip3 install virtualenv
* rm -rf venv
* virtualenv -p /usr/bin/python3 venv/
* source venv/bin/activate
* pip3 install -r requirements.txt