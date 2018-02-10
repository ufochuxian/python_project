# print('hello world','my first python prgram')

# name = input()
#
# print("hello",name)

# print('1024 + 768 = ',1024 + 768)

import configparser
import os

cf = configparser.ConfigParser()
cf.read('ver.conf')


def resolveEnv(con):
    if con.startswith('ENV_'):
        return os.environ.get(con)
    return con


print(resolveEnv(cf.get('ver', 'versionname')))
print(resolveEnv(cf.get('ver', 'versioncode')))
