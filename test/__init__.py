import math

import os

from collections import Iterable

from functools import reduce

from types import MethodType

from enum import Enum

import os

import json

from multiprocessing import Process, Queue

import os, time, random

import time, threading

import logging

logging.basicConfig(level=logging.INFO)

# print(100 + 300)

# print ('what\'s,your name')
#
# print (5 > 3 and 6 < 8)
#
# print (not 1 > 2)
#
# print( 10 / 3)
#
# print(10 // 3)
#
# print('python3 是使用unitcode编码的哦')
#
# print(ord('A'))
#
# print(chr(97))
#
# print(b'ABC'.__len__())
#
# "中文".encode('utf-8')
#
# print ('hello,%s,and,%d' %('moto',1000))
#
# #只包含一个元素的元祖
# t = (1,)
#
# print(t)

# birthday = input('birth:')
#
# if (int(birthday)) >= 18:
#     print('adult')
# else:
#     print('not adult')

# names = ('a','b','c')
#
# for name in names:
#     print(name)
# total = 0
# array = [1,2,3,4,5,6]
#
# for a in array:
#     total += a
# print(total)#这里的缩紧是有讲究的

# total = 0
# array = list(range(101))
# for a in array:
#     total += a
# print(total)

# x = 5
# while x > 2:
#     x = x - 1
# print(x)


# #dict
# # 要保证hash的正确性，作为key的对象就不能变。在Python中，字符串、整数等都是不可变的，因此，可以放心地作为key。而list是可变的，就不能作为key：
# d = {'kobe':20,'jordan':30,'yaoming':40}
# d['me'] = 90 #给指定的dict，set value by key
# if 'me' in d:
#     print(d['jordan'])

# 可变对象 不可变对象 python中str是不可变的
# a = 'abc'
# b = a.replace('a', 'A')
# print('a:%s,b:%s' % (a, b))
#
# #查看函数帮助
# help(abs)
#
# a = 255
# b = hex(a)
# print(b)

# 函数有多个返回值的时候，其实返回的就是一个turple
# def move(x,y,step,angle = 0):
#     nx = x + step + math.cos(angle)
#     ny = y + step + math.sin(angle)
#     return nx,ny
#
#
# cordniate = move(100,100,60,30)
# print(cordniate)
#
# newx,newy = move(100,100,60,30)
# print(newx,newy)

# 可变参数
# def calc(*numbers):
#     num = 0
#     for n in numbers:
#         num += n
#     return num
# # print(calc(1, 2, 3))
#
# list = [1,2,3]
# #将list中的元素逐个放入函数中
# print(calc(*list))


# def desc(name, age=10, **kw):
#     print('name:', name, 'age:', age, 'other:', kw)
#
#
# # 关键字参数
# extra = {'city': 'beijing', 'job': 'engineer'}
# desc('zhangsan', '28', **extra)
#
# desc('lisi', **extra)
#
#
# # 命名关键字参数 （限定关键字的参数名称）
# def person(name, age, *,job, address):
#     print('name:', name, 'age:', age, 'job:', job, 'address:', address)
#
#
# dict1 = {'job': 'basktetballplayer', 'address': 'China'}
# # print(dict1.get('address'))
# person('yaoming', '38', job='basketballplayer', address='China')


# def fact(n):
#     if n == 1:
#         return 1
#     else:
#         return n * fact(n - 1)
#
#
#
# print(fact(1000))


# array = ['a','b','c','d','e']
#
# subList = array[0:3]
#
# subList2 = array[-1:]
#
# print(subList2)

# dict = {'a': 1, 'b': 2, 'c': 3}
#
# for key in dict:
#     print(key)
#
# for value in dict.values():
#     print(value)
#
# for k, v in dict.items():
#     print('key:', key, 'value:', value)

# # 字符串是可以迭代的
# print(isinstance('abc', Iterable))
#
# # 整数不可迭代
# print(isinstance(123, Iterable))


# for i,value in enumerate(['a','b','c']):
#     print(i,value)
#
#
# for x,y in [(1,2),(3,4),(5,6)]:
#     print(x,y)

# list = [1,2,26,6,9,23]
#
# a = 0
# for value in list:
#     if (value > a):
#         a = value
# print(a)

# 列表生成
# list = [x * x for x in range(1,11)]
# print(list)
#
# #两层循环
# [m + n for m in 'ABC' for n in 'XYZ']
# print(['AX', 'AY', 'AZ', 'BX', 'BY', 'BZ', 'CX', 'CY', 'CZ'])
#
# print([d for d in os.listdir('.')])
#
# #列表生成式可以用两个变量来生成list
# d = {'x': 'A', 'y': 'B', 'z': 'C' }
# print([k + '=' + v for k, v in d.items()])
#
#
# L = ['ARRAY','LIST','haha']
#
# print([v.lower() for v in L])
#
#
# #生成器
#
# g = (x * x for x in range(1,10))
#
# for v in g:
#     print(v)


# 斐波拉契数列 除第一个数和最后一个数外，任意一个数都可由前两个数相加得到：
# def fib(max):
#     n,a,b = 0,0,1
#     while(n < max):
#         yield b
#         a, b = b,a + b
#         n = n + 1
#     return 'done'
#
# fib(10)

# print(abs)



# 函数式编程

# 高阶函数（函数可以作为函数的参数传入）

# def add(x, y, f):
#     if (callable(f)):
#         return f(x) + f(y)
#     else:
#         return x + y
#
# print(add(2, -10, abs))
#
#
# # map & reduce
#
# array = map(abs,[0,-5,7,9,29])
#
# print(list(array))



# 再看reduce的用法。reduce把一个函数作用在一个序列[x1, x2, x3, ...]上，这个函数必须接收两个参数，reduce把结果继续和序列的下一个元素做累积计算，其效果就是：

# 在这个函数下就相当于sum()函数的作用了
# def add(x, y):
#     return x + y;
# list = reduce(add, [1, 3, 5, 7, 9])
# print(list)


# filter

# def is_odd(x):
#     return x % 2 == 0
#
# a = [1, 3, 5, 8, 20, 50]
#
# print(list(filter(is_odd, a)))
#
# #排序
#
# L = [('Bob', 75), ('Adam', 92),('yaoming', 75), ('Bart', 66), ('Lisa', 88)]
#
# print(sorted(L))


# closure 闭包的概念


# def count():
#     fs = []
#     for i in range(1, 4):
#         def fun():
#             return i * i
#         fs.append(fun) # fs.append(fun()) 这样保存的话，打印出的就是1，4，9，因为这样存储的是值，而不是fun对象
#     return fs
#
#
# f1, f2, f3 = count()
#
# print(f1())
#
# print(f2())
#
# print(f3())

# 匿名函数,关键字lambda表示匿名函数，冒号前面的x表示函数参数。匿名函数有个限制，就是只能有一个表达式，不用写return，返回值就是该表达式的结果。

# print(list(map(lambda x: x * x, [1, 2, 3, 4, 5])))
#
# #同样，也可以把匿名函数作为返回值返回
# def build(x, y):
#     return lambda: x * x + y * y

# 装饰器



# def log(func):
#     def wrapper(*args, **kw):
#         print('call %s():' % func.__name__)
#         return func(*args, **kw)
#
#     return wrapper
#
#
# @log  # 这句就相当于 now = log(now)
# def now():
#     print("2015-02-01")
#
# now()

# # 三层嵌套decorator
# import functools
#
#
# def log(text):
#     def decorator(func):
#         # @functools.wraps(func)  # 函数变量名也是会变的，加上这句就不会变了
#         def wrapper(*args):
#             print('call %s():' % func.__name__)
#             return func(*args)
#         return wrapper
#     return decorator
#
#
# @log('execute')
# def now():
#     print('2015-3-25')
#
# now = log('execute')(now)
#
# now()
#
# print(now.__name__)
#
# # 偏函数
#
# # 定义一个使用2精制进行转换的函数
# int2 = functools.partial(int, base=2)
#
# print(int2('100000'))
#
# # 还可以从新指定参数的
# print(int2('1000000', base=10))

# class Animal(object):
#     def run(self):
#         print('animal run...')
#
#
#
# class Timer(object):
#     def run(self):
#         print('timer run...')
#
# timer = Timer()
#
# timer.run()
#
#
# # 动态语言，支持运行过程中，给实例添加属性和方法
# def set_age(self,age):
#     self.age = age
#
# def say_hello(self):
#     print("say hello")
#
# animal = Animal()
#
# animal.set_age = MethodType(set_age,animal)
#
# animal.set_age(5)
# print(animal.age)
#
# # 也支持给类动态添加属性或者方法
#
# Animal.say_hello = say_hello
#
# print(animal.say_hello())
#
# Month = Enum('Month', ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'))
#
# print(Month.Jan)


# def log(x):
#     logging.info('x:%s',x)
#     return x + x
#
# log(3)

# io

# with open('Test.py','r') as f:
#     # print(f.read())
#     print(f.readline())
#
# # w模式会将文件中已有的内容进行覆盖 a模式会是一个追加的模式，append模式
# with open('Test.py','a') as f:
#     f.write('\ntest write')
#
# print(os.name)
#
# print(os.environ)

# print(os.path.abspath('.'))

# os.path.join(os.path.abspath('.') + '/current')
#
# os.mkfifo(os.path.abspath('.') + '/current.txt')
#
# print()
#
# # filter .py file
# list = [x for x in os.listdir('.') if os.path.isfile(x) and os.path.splitext(x)[1] == '.py']
#
# print(list)


# 要把JSON反序列化为Python对象，用loads()或者对应的load()方法，前者把JSON的字符串反序列化，后者从file-like Object中读取字符串并反序列化：

# d = dict(name='Bob', age=20, score=88)
# print(json.dumps(d))
# #'{"age": 20, "score": 88, "name": "Bob"}'
#
# #dumps()方法返回一个str，内容就是标准的JSON。类似的，dump()方法可以直接把JSON写入一个file-like Object。
#
# json_str = '{"age": 20, "score": 88, "name": "Bob"}'
# print(json.loads(json_str))
#
# class Teacher(object):
#         def __init__(self,name,age):
#             self.name = name
#             self.age = age
#
# s = Teacher('Bob','28')
#
# print(json.dumps(s, default=lambda obj: obj.__dict__))


# python中进程间通信可以通过Queue,Pipes来进行数据交换

# # 写数据进程执行的代码
# def write(q):
#     print('process to write:%s' % os.getpid())
#     for value in ['A', 'B', 'C']:
#         print('put %s value to queue' % value)
#         q.put(value)
#         time.sleep(random.random())
#
#
# def read(q):
#     print('process to read:%s' % os.getpid())
#     while True:
#         value = q.get(True)
#         print('Get %s value from queue' % value)
#
#
# if __name__ == '__main__':
#     q = Queue()
#     pw = Process(target=write, args=(q,))
#     pr = Process(target=read, args=(q,))
#
#     pw.start()
#     pr.start()
#
#     pw.join()
#
#     # 由于read进程是永不退出进程，需要主动terminal
#     pr.terminate()

# 线程

# def loop():
#     n = 0
#     while n < 5:
#         print('currentthread %s,is running,n = %s' % (threading.current_thread().getName(), n))
#         n += 1
#         time.sleep(1)
#     print('loop thread is ended')
#
#
# print('thread %s is running...' % threading.current_thread().name)
#
# t = threading.Thread(target=loop, name='childThread')
#
# t.start()
#
# t.join()
#
# print('thread %s ended.' % threading.current_thread().name)


# ThreadLocal 解决全局变量，在多线程共享，线程安全的问题

local = threading.local()


class Student(object):
    def __init__(self, name, age):
        self.name = name
        self.age = age


def process_student():
    student = local.student
    print('thread:%s,student:name:%s' % (threading.current_thread().getName(), student.name))


def process_thread(name):
    student = Student(name, '10')
    local.student = student
    process_student()


t1 = threading.Thread(target=process_thread, name='thread1', args=('Alice',))
t2 = threading.Thread(target=process_thread, name='thread2', args=('tony',))

t1.start()
t2.start()

t1.join()
t2.join()
