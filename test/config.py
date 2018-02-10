# print('hello world','my first python prgram')

# name = input()
#
# print("hello",name)

# print('1024 + 768 = ',1024 + 768)

import threading

import time

import configparser
import os
import pygame
import pyglet

from aip import AipSpeech

cf = configparser.ConfigParser()
cf.read('ver.conf')


def resolveEnv(con):
    if con.startswith('ENV_'):
        return os.environ.get(con)
    return con


print(resolveEnv(cf.get('ver', 'versionname')))
print(resolveEnv(cf.get('ver', 'versioncode')))

APP_ID = resolveEnv(cf.get('baidu', 'AppID'))
print(APP_ID)
API_KEY = resolveEnv(cf.get('baidu', 'API_Key'))
print(API_KEY)
SECRET_KEY = resolveEnv(cf.get('baidu', 'SECRET_KEY'))
print(SECRET_KEY)
client = AipSpeech(APP_ID, API_KEY, SECRET_KEY)

result = client.synthesis('我还是个单身狗,哇哇哇', 'zh', 1, {
    'vol': 5,'spd':5,'per':0
})

# 识别正确返回语音二进制 错误则返回dict 参照下面错误码
if not isinstance(result, dict):
    with open('auido.mp3', 'wb') as f:
        f.write(result)

pygame.init()
track1 = pygame.mixer.music.load("auido.mp3")
pygame.mixer.music.play(2, 0)
# 这句延时一定要加，不然听不到声音
time.sleep(10)
