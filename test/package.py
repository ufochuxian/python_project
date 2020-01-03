import datetime
import logging
from xml.dom import minidom
from xml.etree.ElementTree import ElementTree
import codecs
import os
import shutil

import time

import configparser

# from aip import AipSpeech

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

focuschildrenenglish = "focuschildenglish"
childrenenglish = "childrenenglish"
jiliguala = "jiliguala"
childrenenglishwithdivider = "childrenenglishwithdivider"

app_name = channels_app_name

app_name_list = [channels_app_name, channels_app_name_extra, channels_app_name_extra1, channels_app_name_extra2]

channels_release = (
    "SMPZ",
    "SMPZ1",
    "SMPZ2",
    "SMPZ3",
    "SMPZ4",
    "SMPZ5",
    "SMPZ6",
    "SMPZ7",
    "SMPZ8",
    "SMPZ9",
    "SMPZ10",
    "SMPZ11",
    "SMPZ12",
    "SMPZ13",
    "SMPZ14",
    "SMPZ15",
    "SMPZ16",
    "360SEM",
    "360SEM1",
    "360SEM2",
    "360SEM3",
    "360SEM4",
    "360SEM5",
    "360SEM6",
    "360SEM7",
    "360SEM8",
    "360SEM9",
    "360SEM10",
    "360SEM11",
    "360SEM12",
    "360SEM13",
    "360SEM14",
    "BBS",
    "BBS1",
    "BBS2",
    "BBS3",
    "BBS4",
    "BBS5",
    "BBS6",
    "BBS7",
    "BBS8",
    "BBS9"
)

channels_for_vsdolly = "SMPZ,SMPZ1,SMPZ2,SMPZ3,SMPZ4,SMPZ5,SMPZ6,SMPZ7,SMPZ8,SMPZ9,SMPZ10,SMPZ11,SMPZ12,SMPZ13,SMPZ14,SMPZ15,SMPZ16,360SEM,360SEM1,360SEM2,360SEM3,360SEM4,360SEM5,360SEM6,360SEM7,360SEM8,360SEM9,360SEM10,360SEM11,360SEM12,360SEM13,360SEM14,BBS,BBS1,BBS2,BBS3,BBS4,BBS5,BBS6,BBS7,BBS8,BBS9"



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


rootPath = os.path.dirname(os.getcwd())
packagePath = rootPath + '/package'
full_package_path = packagePath + '/fullpackage/'
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

# unPackageApkCommond = 'apktool -f d ' + sourcePackagePath + apkName + ' -o ' + reApkPath
packageApkCommond = 'apktool b ' + reApkPath

print(reApkPath)

pygame.init()

jiliguala_focuson_children_english_path = packagePath + '/jiliguala_focuson_children_english/'

jiliguala_children_english_path = packagePath + '/jiliguala_children_english/'

jiliguala_path = packagePath + '/jiliguala/'

jiliguala_children_english_with_divider_path = packagePath + '/jiliguala_children_english_with_divider/'

jiliguala_focuson_children_english_apk_name = apkNamePrefix + "_" + focuschildrenenglish + '.apk'

jiliguala_focuson_children_english_apk = jiliguala_focuson_children_english_path + jiliguala_focuson_children_english_apk_name

jiliguala_children_english_apk_name = apkNamePrefix + "_" + childrenenglish + '.apk'

jiliguala_children_english_apk = jiliguala_children_english_path + jiliguala_children_english_apk_name

jiliguala_apk_name = apkNamePrefix + "_" + jiliguala + '.apk'

jiliguala_apk = jiliguala_path + jiliguala_apk_name

jiliguala_children_english_with_divider_apk_name = apkNamePrefix + "_" + childrenenglishwithdivider + '.apk'

jiliguala_children_english_with_divider_apk = jiliguala_children_english_with_divider_path + jiliguala_children_english_with_divider_apk_name


def generateDifferentTypeApkWithName():
    dest_package_path = ''
    for name in app_name_list:
        if (name == channels_app_name):
            dest_file_name = apkNamePrefix + "_" + focuschildrenenglish + '.apk'
            dest_package_path = jiliguala_focuson_children_english_path
        elif (name == channels_app_name_extra):
            dest_file_name = apkNamePrefix + "_" + childrenenglish + '.apk'
            dest_package_path = jiliguala_children_english_path
        elif (name == channels_app_name_extra1):
            dest_file_name = apkNamePrefix + "_" + jiliguala + '.apk'
            dest_package_path = jiliguala_path
        elif (name == channels_app_name_extra2):
            dest_file_name = apkNamePrefix + "_" + childrenenglishwithdivider + '.apk'
            dest_package_path = jiliguala_children_english_with_divider_path
            # os.mkdir(dest_package_path)
        shutil.copyfile(sourcePackagePath + apkName, dest_package_path + dest_file_name)


def sign_apk_with_type(name):
    new_apk_name = ""
    save_sign_apk_path = ""
    if name == channels_app_name:
        new_apk_name = jiliguala_focuson_children_english_apk_name
        save_sign_apk_path = jiliguala_focuson_children_english_path + new_apk_name
    elif name == channels_app_name_extra:
        new_apk_name = jiliguala_children_english_apk_name
        save_sign_apk_path = jiliguala_children_english_path + new_apk_name
    elif name == channels_app_name_extra1:
        new_apk_name = jiliguala_apk_name
        save_sign_apk_path = jiliguala_path + new_apk_name
    elif name == channels_app_name_extra2:
        new_apk_name = jiliguala_children_english_with_divider_apk_name
        save_sign_apk_path = jiliguala_children_english_with_divider_path + new_apk_name
    unSignApkPath = reApkPath + '/dist/' + new_apk_name
    sign_apk_commond = 'jarsigner -digestalg SHA1 -sigalg SHA1withRSA -keystore ' + keyStorePath + ' -storepass knoala168 -keypass jiliguala168 -signedjar ' + save_sign_apk_path + ' ' + unSignApkPath + ' niuwa_release_keystore'
    logging.info('sign_apk_commond = %s' % sign_apk_commond)
    os.system(sign_apk_commond)


def unpackageApkWithType(name):
    unPackageApkCommond = ""
    if name == channels_app_name:
        # jiliguala_focuson_children_english_apk = jiliguala_focuson_children_english_path + apkNamePrefix + "_" + name + '.apk'
        unPackageApkCommond = 'apktool -f d --only-main-classes ' + jiliguala_focuson_children_english_apk + ' -o ' + reApkPath
    elif name == channels_app_name_extra:
        # jiliguala_children_english_apk = jiliguala_children_english_path + apkNamePrefix + "_" + name + '.apk'
        unPackageApkCommond = 'apktool -f d --only-main-classes ' + jiliguala_children_english_apk + ' -o ' + reApkPath
    elif name == channels_app_name_extra1:
        # jiliguala_apk = jiliguala_path + apkNamePrefix + "_" + name + '.apk'
        unPackageApkCommond = 'apktool -f d --only-main-classes ' + jiliguala_apk + ' -o ' + reApkPath
    elif name == channels_app_name_extra2:
        # jiliguala_children_english_with_divider_apk = jiliguala_children_english_with_divider_path + apkNamePrefix + "_" + name + '.apk'
        unPackageApkCommond = 'apktool -f d --only-main-classes ' + jiliguala_children_english_with_divider_apk + ' -o ' + reApkPath
    os.system(unPackageApkCommond)


def package_apk():
    os.system(packageApkCommond)


def sign_apk(channel):
    new_apk_name = apkNamePrefix + '_' + channel + '.apk'
    save_sign_apk_path = reApkPath + '/dist/' + new_apk_name
    sign_apk_commond = 'jarsigner -digestalg SHA1 -sigalg SHA1withRSA -keystore ' + keyStorePath + ' -storepass knoala168 -keypass jiliguala168 -signedjar ' + save_sign_apk_path + ' ' + unSignApkPath + ' niuwa_release_keystore'
    logging.info('sign_apk_commond = %s' % sign_apk_commond)
    os.system(sign_apk_commond)


def replace_app_name_by_type(name):
    print('replace_app_name_by_type,name:' + name)
    unpackageApkWithType(name)
    doc = minidom.parse(stringXmlPath)
    app_name_node = doc.getElementsByTagName('string')
    for n in app_name_node:
        if n.getAttribute('name') == 'app_name':
            n.firstChild.replaceWholeText(name)
            f = codecs.open(stringXmlPath, 'w', 'utf-8')
            doc.writexml(f, addindent='  ', newl='\n', encoding='utf-8')
            f.close()
            print('app_name_value:%s' % name)
    package_apk()
    sign_apk_with_type(name)


def updateAppName():
    replace_app_name_by_type(channels_app_name)
    replace_app_name_by_type(channels_app_name_extra)
    replace_app_name_by_type(channels_app_name_extra1)
    replace_app_name_by_type(channels_app_name_extra2)


fullpackage_channel_jiliguala = full_package_path + "channel_jiliguala/"

fullpackage_channel_childrenenglish = full_package_path + "channel_jiliguala_childrenenglish/"

fullpackage_channel_childrenenglish_with_divider = full_package_path + "channel_jiliguala_childrenenglish_with_divider/"

fullpackage_channel_focus_on_children_english = full_package_path + "channel_jiliguala_focus_on_children_english/"


channel_jiliguala_path = packagePath + '/config/channel_jiliguala.txt'

channel_jiliguala_childrenenglish_path = packagePath + '/config/channel_jiliguala_childrenenglish.txt'

channel_jiliguala_childrenenglish_with_divider_path = packagePath + '/config/channel_jiliguala_childrenenglish_with_divider.txt'

channel_jiliguala_childrenenglish_focuson_path = packagePath + '/config/channel_jiliguala_focus_on_children_english.txt'


def deleteAllChannelNameApk():

    if os.path.exists(reApkPath):
        shutil.rmtree(reApkPath)
    os.mkdir(reApkPath)

    # if os.path.exists(channel_jiliguala_path):
    #     shutil.rmtree(channel_jiliguala_path)
    # if os.path.exists(channel_jiliguala_childrenenglish_path):
    #     shutil.rmtree(channel_jiliguala_childrenenglish_path)
    # if os.path.exists(channel_jiliguala_childrenenglish_with_divider_path):
    #     shutil.rmtree(channel_jiliguala_childrenenglish_with_divider_path)
    # if os.path.exists(channel_jiliguala_childrenenglish_focuson_path):
    #     shutil.rmtree(channel_jiliguala_childrenenglish_focuson_path)

    if os.path.exists(jiliguala_path):
        shutil.rmtree(jiliguala_path)
    os.mkdir(jiliguala_path)
    if os.path.exists(jiliguala_children_english_path):
        shutil.rmtree(jiliguala_children_english_path)
    os.mkdir(jiliguala_children_english_path)
    if os.path.exists(jiliguala_children_english_with_divider_path):
        shutil.rmtree(jiliguala_children_english_with_divider_path)
    os.mkdir(jiliguala_children_english_with_divider_path)
    if os.path.exists(jiliguala_focuson_children_english_path):
        shutil.rmtree(jiliguala_focuson_children_english_path)
    os.mkdir(jiliguala_focuson_children_english_path)

    if os.path.exists(full_package_path) == False:
        os.mkdir(full_package_path)

    if (os.path.exists(fullpackage_channel_jiliguala)):
        shutil.rmtree(fullpackage_channel_jiliguala)
    os.mkdir(fullpackage_channel_jiliguala)
    if (os.path.exists(fullpackage_channel_childrenenglish)):
        shutil.rmtree(fullpackage_channel_childrenenglish)
    os.mkdir(fullpackage_channel_childrenenglish)
    if (os.path.exists(fullpackage_channel_childrenenglish_with_divider)):
        shutil.rmtree(fullpackage_channel_childrenenglish_with_divider)
    os.mkdir(fullpackage_channel_childrenenglish_with_divider)
    if (os.path.exists(fullpackage_channel_focus_on_children_english)):
        shutil.rmtree(fullpackage_channel_focus_on_children_english)
    os.mkdir(fullpackage_channel_focus_on_children_english)


def generateAllPackageByChannelName():
    #sign channel_jiliguala
    command = 'java -jar ../lib/VasDolly.jar put -c ' + channel_jiliguala_path + ' -f ' + jiliguala_apk + ' ' + fullpackage_channel_jiliguala + ''
    os.system(command)
    print('channel_jiliguala command:' + command)

    #sign channel_jiligula_childenglish
    command = 'java -jar ../lib/VasDolly.jar put -c ' + channel_jiliguala_childrenenglish_path + ' -f ' + jiliguala_children_english_apk + ' ' + fullpackage_channel_childrenenglish + ''
    os.system(command)
    print('channel_jiligula_childenglish command:' + command)

    #sign channel_jiligula_childenglish_with_divider
    command = 'java -jar ../lib/VasDolly.jar put -c ' + channel_jiliguala_childrenenglish_with_divider_path + ' -f ' + jiliguala_children_english_with_divider_apk + ' ' + fullpackage_channel_childrenenglish_with_divider + ''
    os.system(command)
    print('channel_jiligula_childenglish_with_divider command:' + command)

    #sign channel_jiligula_childenglish
    command = 'java -jar ../lib/VasDolly.jar put -c ' + channel_jiliguala_childrenenglish_focuson_path + ' -f ' + jiliguala_focuson_children_english_apk + ' ' + fullpackage_channel_focus_on_children_english + ''
    os.system(command)
    print('channel_jiligula_childenglish command:' + command)



def editChannelName():
    renameChannelName(fullpackage_channel_jiliguala)
    renameChannelName(fullpackage_channel_childrenenglish)
    renameChannelName(fullpackage_channel_childrenenglish_with_divider)
    renameChannelName(fullpackage_channel_focus_on_children_english)


def renameChannelName(path):
    print('renameChannelName:%s', path)
    files = os.listdir(path)
    date_prefix = ''
    for f in files:
        channel = f[0:f.index('-')]
        if (date_prefix == ''):
            date_prefix = f[f.index('-') + 1:f.rindex('_') + 1]
        newname = date_prefix + channel + ".apk"
        os.rename(path + f, path + newname)
        print('newname:', newname)

starttime = datetime.datetime.now()


deleteAllChannelNameApk()

generateDifferentTypeApkWithName()
#
updateAppName()

generateAllPackageByChannelName()

editChannelName()

#
# full_packages = [f for f in os.listdir(full_package_path)]
#
# print("full_packages",full_packages.__len__())

# source_apk = sourcePackagePath + apkName
#
# command = 'java -jar ../lib/VasDolly.jar put -c ' + channel_path + ' -f ' + source_apk + ' ' + full_package_path + ''
#
# print('command:' + command)
#
# os.system(command)



# editChannelName()


def resolve_env(con):
    if con.startswith('ENV_'):
        return os.environ.get(con)
    return con


def unpackage_apk():
    os.system(unPackageApkCommond)

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
    elif channel == 'YYBM' or channel == 'ANZHIM' or channel == 'WDJM' or channel == 'GDTM' or channel == 'BDM' or channel == 'OPPOM' or channel == 'SAMSUNGM':
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
    # client = AipSpeech(APP_ID, API_KEY, SECRET_KEY)

    # result = client.synthesis('全渠道打包成功了', 'zh', 1, {
    #     'vol': 5, 'spd': 3
    # })
    # 识别正确返回语音二进制 错误则返回dict 参照下面错误码
    # if not isinstance(result, dict):
    #     with open(PACKAGESUCCESS_MP3, 'wb') as f:
    #         f.write(result)
    track1 = pygame.mixer.music.load(PACKAGESUCCESS_MP3)
    pygame.mixer.music.play(2, 0)
    # 这句延时一定要加，不然听不到声音
    time.sleep(10)


def delete_source_file():
    src_file = reApkPath + '/dist/' + apkName
    if os.path.exists(src_file):
        os.remove(src_file)



# if (os.path.exists(reApkPath)):
#     shutil.rmtree(reApkPath)


# unpackage_apk()
#
# need_r_splash = resolve_env(cf.get('config', 'needRSplash'))
# #
# for channel in channels_release:
#     if need_r_splash == 'True':
#         replace_splash(channel)
#     replace_app_name(channel)
#     replace_apk_channel(channel)
#     package_apk()
#     sign_apk(channel)

endTime = datetime.datetime.now()

notify_package_success()

# delete_source_file()

print('use time:%s' % (endTime - starttime))
