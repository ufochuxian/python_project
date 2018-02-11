import datetime
import logging
from xml.dom import minidom
from xml.etree.ElementTree import ElementTree

import codecs
import os
import shutil

import time

import configparser

from aip import AipSpeech

import pygame

PACKAGESUCCESS_MP3 = 'packagesuccess.mp3'

BAIDU = 'baidu'

cf = configparser.ConfigParser()
cf.read('ver.conf')

HDPI_SPLASH_PNG_PATH = '/res/drawable-hdpi/splash.png'

XHDPI_SPLASH_PNG_PATH = '/res/drawable-xhdpi/splash.png'

XXHDPI_SPLASH_PNG_PATH = '/res/drawable-xxhdpi/splash.png'

channels_app_name = "叽里呱啦-专注儿童英语启蒙"
channels_app_name_extra = "叽里呱啦儿童英语"  # WDJ MIM 360
channels_app_name_extra1 = "叽里呱啦"  # YYB #ANZHIM #GDT # 360 #BD
channels_app_name_extra2 = "叽里呱啦-儿童英语"  # MXM #VIVOM

app_name = channels_app_name

channels_release = (  # "YYBA",
    "MIM",
    "YYBM"
    , "HUAWEIM"
    # , "JLGLWBM"
    # , "YYBM", "MIM", "BDM", "360M", "WDJM", "UCAPPM", "MXM", "ANZHUOM", "91M"
    # , "ANZHIM", "LENOVOM", "OPPOM"
    # , "SGPM", "YYHM", "YOUYIM", "YIYONGHUI", "LIQUM"
    # , "YOUYUEM", "VIVOM"
    # , "LEM"
    # , "CHUIZIM"
)


# onlyfiles = [f for f in listdir(".") if isfile(join(".",f))]


def find_nodes(tree, path):
    return tree.findall(path)


def read_xml(in_path):
    tree = ElementTree()
    tree.parse(in_path)
    return tree


def write_xml(tree, out_path):
    tree.write(out_path, encoding="utf-8", xml_declaration=True)


def change_node_properties(nodelist, kv_map, is_delete=False):
    for node in nodelist:
        for key in kv_map:
            if is_delete:
                if key in node.attrib:
                    del node.attrib[key]
            else:
                node.set(key, kv_map.get(key))


packagePath = '/Users/chen/PycharmProjects/untitled1/package'
sourcePackagePath = packagePath + '/source/'
reApkPath = packagePath + '/reapk'
mainfestxmlPath = reApkPath + '/AndroidManifest.xml'
stringXmlPath = reApkPath + '/res/values/strings.xml'
keyStorePath = packagePath + '/config/jiliguala_release.keystore'

src_h_splash = reApkPath + HDPI_SPLASH_PNG_PATH
src_xh_splash = reApkPath + XHDPI_SPLASH_PNG_PATH
src_xxh_splash = reApkPath + XXHDPI_SPLASH_PNG_PATH

splash_config = '/config/splash_res'

splash_res_h_360 = packagePath + splash_config + '/360/drawable-hdpi/splash.png'
splash_res_xh_360 = packagePath + splash_config + '/360/drawable-xhdpi/splash.png'
splash_res_xxh_360 = packagePath + splash_config + '/360/drawable-xxhdpi/splash.png'

splash_res_h_huawei = packagePath + splash_config + '/huawei_splash/drawable-hdpi/splash.png'
splash_res_xh_huawei = packagePath + splash_config + '/huawei_splash/drawable-xhdpi/splash.png'
splash_res_xxh_huawei = packagePath + splash_config + '/huawei_splash/drawable-xxhdpi/splash.png'

splash_res_h_ali = packagePath + splash_config + '/ali/drawable-hdpi/splash.png'
splash_res_xh_ali = packagePath + splash_config + '/ali/drawable-xhdpi/splash.png'
splash_res_xxh_ali = packagePath + splash_config + '/ali/drawable-xxhdpi/splash.png'

splash_res_h_yiyongbao = packagePath + splash_config + '/yingyongbao/drawable-hdpi/splash.png'
splash_res_xh_yiyongbao = packagePath + splash_config + '/yingyongbao/drawable-xhdpi/splash.png'
splash_res_xxh_yiyongbao = packagePath + splash_config + '/yingyongbao/drawable-xxhdpi/splash.png'

splash_res_h_standard = packagePath + splash_config + '/standard/drawable-hdpi/splash.png'
splash_res_xh_standard = packagePath + splash_config + '/standard/drawable-xhdpi/splash.png'
splash_res_xxh_standard = packagePath + splash_config + '/standard/drawable-xxhdpi/splash.png'

onlyfiles = [f for f in os.listdir(sourcePackagePath)]
apkName = ''
apkNamePrefix = ''
for f in onlyfiles:
    f.__contains__('.apk')
    apkName = f
    # rindex代表最后一次出现指定字符的位置
    apkNamePrefix = apkName[0:apkName.rindex('_', 0, len(f))]
print(apkName)
print('apkNamePrefix:%s' % apkNamePrefix)

unSignApkPath = reApkPath + '/dist/' + apkName

unPackageApkCommond = 'apktool -f d ' + sourcePackagePath + apkName + ' -o ' + reApkPath
packageApkCommond = 'apktool b ' + reApkPath

print(reApkPath)

pygame.init()


def resolve_env(con):
    if con.startswith('ENV_'):
        return os.environ.get(con)
    return con


def unpackage_apk():
    os.system(unPackageApkCommond)


def package_apk():
    os.system(packageApkCommond)


def sign_apk(channel):
    new_apk_name = apkNamePrefix + '_' + channel + '.apk'
    save_sign_apk_path = reApkPath + '/dist/' + new_apk_name
    sign_apk_commond = 'jarsigner -digestalg SHA1 -sigalg MD5withRSA -keystore ' + keyStorePath + ' -storepass knoala168 -keypass jiliguala168 -signedjar ' + save_sign_apk_path + ' ' + unSignApkPath + ' niuwa_release_keystore'
    logging.info('sign_apk_commond = %s' % sign_apk_commond)
    os.system(sign_apk_commond)


def replace_splash(channel):
    if channel == 'HUAWEIM':
        shutil.copy(splash_res_h_huawei, src_h_splash)
        shutil.copy(splash_res_xh_huawei, src_xh_splash)
        shutil.copy(splash_res_xxh_huawei, src_xxh_splash)
    elif channel == '360M':
        shutil.copy(splash_res_h_360, src_h_splash)
        shutil.copy(splash_res_xh_360, src_xh_splash)
        shutil.copy(splash_res_xxh_360, src_xxh_splash)
        # 豌豆荚被阿里收购，所以它们是同一个平台
    elif channel == 'WDJM':
        shutil.copy(splash_res_h_ali, src_h_splash)
        shutil.copy(splash_res_xh_ali, src_xh_splash)
        shutil.copy(splash_res_xxh_ali, src_xxh_splash)
    elif channel == 'YYBM':
        shutil.copy(splash_res_h_yiyongbao, src_h_splash)
        shutil.copy(splash_res_xh_yiyongbao, src_xh_splash)
        shutil.copy(splash_res_xxh_yiyongbao, src_xxh_splash)
    else:
        shutil.copy(splash_res_h_standard, src_h_splash)
        shutil.copy(splash_res_xh_standard, src_xh_splash)
        shutil.copy(splash_res_xxh_standard, src_xxh_splash)


def replace_apk_channel(channel):
    doc = minidom.parse(mainfestxmlPath)
    metadatas = doc.getElementsByTagName('meta-data')

    for n in metadatas:
        if (n.getAttribute('android:name') == 'CHANNEL'):
            value = n.getAttribute('android:value')
            print('origin value:%s' % value)
            n.setAttribute('android:value', channel)
            f = codecs.open(mainfestxmlPath, 'w', 'utf-8')
            doc.writexml(f, addindent='  ', newl='\n', encoding='utf-8')
            f.close()
            value = n.getAttribute('android:value')
            print('change value:%s' % value)


def replace_app_name(channel):
    if channel == 'MIM' or channel == '360M':
        app_name_value = channels_app_name_extra
    elif channel == 'YYBM' or channel == 'ANZHIM' or channel == 'WDJM' or channel == 'GDTM' or channel == 'BDM':
        app_name_value = channels_app_name_extra1
    elif channel == 'MXM' or channel == 'VIVOM' or channel == 'SGPM':
        app_name_value = channels_app_name_extra2
    else:
        app_name_value = channels_app_name
    logging.info('app_name_value:%s' % app_name_value)

    doc = minidom.parse(stringXmlPath)
    app_name_node = doc.getElementsByTagName('string')
    for n in app_name_node:
        if (n.getAttribute('name') == 'app_name'):
            n.firstChild.replaceWholeText(app_name_value)
            f = codecs.open(stringXmlPath, 'w', 'utf-8')
            doc.writexml(f, addindent='  ', newl='\n', encoding='utf-8')
            f.close()
            print('app_name_value:%s' % app_name_value)


def notify_package_success():
    logging.info('package sucess...')
    APP_ID = resolve_env(cf.get('baidu', 'AppID'))
    API_KEY = resolve_env(cf.get('baidu', 'API_Key'))
    SECRET_KEY = resolve_env(cf.get('baidu', 'SECRET_KEY'))
    client = AipSpeech(APP_ID, API_KEY, SECRET_KEY)

    result = client.synthesis('全渠道打包成功了', 'zh', 1, {
        'vol': 5, 'spd': 3
    })
    # 识别正确返回语音二进制 错误则返回dict 参照下面错误码
    if not isinstance(result, dict):
        with open(PACKAGESUCCESS_MP3, 'wb') as f:
            f.write(result)
    track1 = pygame.mixer.music.load(PACKAGESUCCESS_MP3)
    pygame.mixer.music.play(2, 0)
    # 这句延时一定要加，不然听不到声音
    time.sleep(10)


starttime = datetime.datetime.now()

if (os.path.exists(reApkPath)):
    shutil.rmtree(reApkPath)

unpackage_apk()
#
for channel in channels_release:
    replace_splash(channel)
    replace_app_name(channel)
    replace_apk_channel(channel)
    package_apk()
    sign_apk(channel)

endTime = datetime.datetime.now()

notify_package_success()

print('use time:%s' % (endTime - starttime))
