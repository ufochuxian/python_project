from datetime import datetime

from collections import namedtuple

from collections import Counter

from urllib import request
import itertools
import psutil
import chardet

from tkinter import *

from contextlib import contextmanager
# print(datetime.now())
#
# timestamp = datetime.timestamp(datetime.now())
# print(timestamp)
# print(datetime.fromtimestamp(timestamp))

# Point = namedtuple('Point', ['x', 'y'])
#
# p = Point(1, 2)
#
# print("p.x = %s,p.y = %s" % (p.x, p.y))
#
#
# c = Counter()
# for ch in 'programming':
#     c[ch] = c[ch] + 1
#
# print(c)
#
# natuals = itertools.count(1)
#
# ns = itertools.takewhile(lambda  x : x <= 10,natuals)
#
# print(list(ns))
#
#
# @contextmanager
# def tag(name):
#     print('<%s>' % name)
#     yield
#     print('<%s>' % name)
#
#
# with tag('h1'):
#     print('hello')
#     print('world')

# with request.urlopen('http://www.baidu.com') as f:
#     data = f.read()
#     print≤('Status:', f.status, f.reason)
#     for k, v in f.getheaders():
#         print('%s:%s' % (k, v))
#         # print('Data:',data.decode('utf-8'))

# print(chardet.detect(b'hello,wrokd!'))
#
# data = '离离原上草'.encode('utf-8')
# print(chardet.detect(data))
#
# print('CPU逻辑数量:%s' % psutil.cpu_count())
#
# print('CPU物理核心:%s' % psutil.cpu_count(logical=False))


# class Application(Frame):
#     def __init__(self, master=None):
#         Frame.__init__(self, master)
#         self.pack()
#         self.createWidgets()
#
#     def createWidgets(self):
#         self.helloLabel = Label(self, text='Hello, world!')
#         self.helloLabel.pack()
#         self.quitButton = Button(self, text='Quit', command=self.quit)
#         self.quitButton.pack()
#
# app = Application()
# app.master.title('Hello World')
# app.mainloop()

