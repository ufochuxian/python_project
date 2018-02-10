.class Lorg/xwalk/core/XWalkEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final META_XWALK_APK_URL:Ljava/lang/String; = "xwalk_apk_url"

.field private static final META_XWALK_DOWNLOAD_MODE:Ljava/lang/String; = "xwalk_download_mode"

.field private static final META_XWALK_DOWNLOAD_MODE_UPDATE:Ljava/lang/String; = "xwalk_download_mode_update"

.field private static final META_XWALK_ENABLE_DOWNLOAD_MODE:Ljava/lang/String; = "xwalk_enable_download_mode"

.field private static final META_XWALK_VERIFY:Ljava/lang/String; = "xwalk_verify"

.field private static final OPTIMIZED_DEX_DIR:Ljava/lang/String; = "dex"

.field private static final PACKAGE_RE:Ljava/lang/String; = "[a-z]+\\.[a-z0-9]+\\.[a-z0-9]+.*"

.field private static final PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "xwalkcore"

.field private static final TAG:Ljava/lang/String; = "XWalkLib"

.field private static final XWALK_CORE_EXTRACTED_DIR:Ljava/lang/String; = "extracted_xwalkcore"

.field private static sApplicationContext:Landroid/content/Context;

.field private static sApplicationName:Ljava/lang/String;

.field private static sDeviceAbi:Ljava/lang/String;

.field private static sIsDownloadMode:Ljava/lang/Boolean;

.field private static sIsDownloadModeUpdate:Ljava/lang/Boolean;

.field private static sIsXWalkVerify:Ljava/lang/Boolean;

.field private static sRuntimeAbi:Ljava/lang/String;

.field private static sXWalkApkUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    :try_start_0
    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 272
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 274
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 276
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 275
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 108
    :try_start_0
    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 109
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 111
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;

    const-string v3, "[a-z]+\\.[a-z0-9]+\\.[a-z0-9]+.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    const-string v2, "this application"

    sput-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;

    .line 119
    :cond_1
    const-string v2, "XWalkLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crosswalk application name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sApplicationName:Ljava/lang/String;

    return-object v2

    .line 112
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDeviceAbi()Ljava/lang/String;
    .locals 8

    .prologue
    .line 249
    sget-object v5, Lorg/xwalk/core/XWalkEnvironment;->sDeviceAbi:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 251
    :try_start_0
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/xwalk/core/XWalkEnvironment;->sDeviceAbi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, "e":Ljava/lang/NoSuchFieldError;
    .local v2, "input":Ljava/io/BufferedReader;
    .local v3, "ir":Ljava/io/InputStreamReader;
    .local v4, "process":Ljava/lang/Process;
    :goto_0
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device ABI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/xwalk/core/XWalkEnvironment;->sDeviceAbi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    sget-object v5, Lorg/xwalk/core/XWalkEnvironment;->sDeviceAbi:Ljava/lang/String;

    return-object v5

    .line 252
    .end local v0    # "e":Ljava/lang/NoSuchFieldError;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/lang/NoSuchFieldError;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop ro.product.cpu.abi"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 255
    .restart local v4    # "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 256
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 257
    .restart local v2    # "input":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/xwalk/core/XWalkEnvironment;->sDeviceAbi:Ljava/lang/String;

    .line 258
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 259
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 260
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 261
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Can not detect device\'s ABI"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getExtractedCoreDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    const-string v1, "extracted_xwalkcore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOptimizedDexDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateDataDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    const-string v1, "xwalkcore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRuntimeAbi()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 174
    sget-object v8, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 176
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 177
    new-instance v8, Ljava/lang/NoSuchFieldError;

    invoke-direct {v8}, Ljava/lang/NoSuchFieldError;-><init>()V

    throw v8
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v0, "abi":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/NoSuchFieldError;
    const-string v8, "os.arch"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "arch":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 229
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected os.arch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "arch":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NoSuchFieldError;
    :cond_1
    :try_start_1
    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0    # "abi":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_2
    move v8, v4

    :goto_1
    packed-switch v8, :pswitch_data_1

    .line 195
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected CPU_ABI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    :sswitch_0
    const-string v8, "armeabi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_1

    :sswitch_1
    const-string v8, "armeabi-v7a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_1

    :sswitch_2
    const-string v8, "arm64-v8a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_1

    :sswitch_3
    const-string v8, "x86"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v7

    goto :goto_1

    :sswitch_4
    const-string v8, "x86_64"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x4

    goto :goto_1

    .line 183
    :pswitch_0
    const-string v8, "armeabi-v7a"

    sput-object v8, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    :goto_2
    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    const-string v4, "armeabi-v7a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 235
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isIaDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    const-string v3, "x86"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    .line 243
    :cond_3
    :goto_3
    const-string v3, "XWalkLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Runtime ABI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_4
    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    return-object v3

    .line 186
    :pswitch_1
    :try_start_2
    const-string v8, "arm64-v8a"

    sput-object v8, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto :goto_2

    .line 189
    :pswitch_2
    const-string v8, "x86"

    sput-object v8, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto :goto_2

    .line 192
    :pswitch_3
    const-string v8, "x86_64"

    sput-object v8, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 199
    .restart local v1    # "arch":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/NoSuchFieldError;
    :sswitch_5
    const-string v5, "x86"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "i686"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "i386"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "ia32"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "x64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "x86_64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "armv7l"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "armeabi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "armeabi-v7a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "aarch64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "armv8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "arm64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    .line 204
    :pswitch_4
    const-string v3, "x86"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto/16 :goto_2

    .line 208
    :pswitch_5
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->is64bitDevice()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 209
    const-string v3, "x86_64"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto/16 :goto_2

    .line 211
    :cond_5
    const-string v3, "x86"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto/16 :goto_2

    .line 217
    :pswitch_6
    const-string v3, "armeabi-v7a"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto/16 :goto_2

    .line 222
    :pswitch_7
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->is64bitDevice()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 223
    const-string v3, "arm64-v8a"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto/16 :goto_2

    .line 225
    :cond_6
    const-string v3, "armeabi-v7a"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto/16 :goto_2

    .line 238
    .end local v1    # "arch":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NoSuchFieldError;
    :cond_7
    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    const-string v4, "arm64-v8a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isIaDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    const-string v3, "x86_64"

    sput-object v3, Lorg/xwalk/core/XWalkEnvironment;->sRuntimeAbi:Ljava/lang/String;

    goto/16 :goto_3

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        -0x540025d1 -> :sswitch_b
        -0x48c872cb -> :sswitch_e
        -0x300b59d9 -> :sswitch_a
        -0x2c0bb1c1 -> :sswitch_c
        0x1c936 -> :sswitch_9
        0x1c976 -> :sswitch_5
        0x308168 -> :sswitch_7
        0x308cab -> :sswitch_6
        0x312d77 -> :sswitch_8
        0x58c5a1a -> :sswitch_10
        0x58c61de -> :sswitch_f
        0x8ab4d72 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 180
    :sswitch_data_1
    .sparse-switch
        -0x300b59d9 -> :sswitch_4
        -0x2c0bb1c1 -> :sswitch_0
        0x1c976 -> :sswitch_3
        0x8ab4d72 -> :sswitch_1
        0x5553f3ec -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    const-string v1, "libxwalkcore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getXWalkApkUrl()Ljava/lang/String;
    .locals 10

    .prologue
    .line 79
    sget-object v0, Lorg/xwalk/core/XWalkEnvironment;->sXWalkApkUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "xwalk_apk_url"

    invoke-static {v0}, Lorg/xwalk/core/XWalkEnvironment;->getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "url":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 82
    const-string v0, ""

    sput-object v0, Lorg/xwalk/core/XWalkEnvironment;->sXWalkApkUrl:Ljava/lang/String;

    .line 100
    :goto_0
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crosswalk APK download URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sXWalkApkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    sget-object v0, Lorg/xwalk/core/XWalkEnvironment;->sXWalkApkUrl:Ljava/lang/String;

    return-object v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getRuntimeAbi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "archQuery":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 87
    .local v8, "uri":Ljava/net/URI;
    invoke-virtual {v8}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "query":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 89
    move-object v4, v6

    .line 94
    :goto_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/XWalkEnvironment;->sXWalkApkUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v4    # "query":Ljava/lang/String;
    .end local v8    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v7

    .line 97
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid xwalk_apk_url"

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v4    # "query":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/net/URI;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/XWalkEnvironment;->sApplicationContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static is64bitApp()Z
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getRuntimeAbi()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "abi":Ljava/lang/String;
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static is64bitDevice()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getDeviceAbi()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "abi":Ljava/lang/String;
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadMode()Z
    .locals 4

    .prologue
    .line 126
    sget-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadMode:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 127
    const-string v1, "xwalk_download_mode"

    invoke-static {v1}, Lorg/xwalk/core/XWalkEnvironment;->getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "enable":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 129
    const-string v1, "xwalk_enable_download_mode"

    invoke-static {v1}, Lorg/xwalk/core/XWalkEnvironment;->getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    if-eqz v0, :cond_3

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadMode:Ljava/lang/Boolean;

    .line 133
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crosswalk download mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadMode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    sget-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 131
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadModeUpdate()Z
    .locals 4

    .prologue
    .line 139
    sget-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadModeUpdate:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 140
    const-string v1, "xwalk_download_mode_update"

    invoke-static {v1}, Lorg/xwalk/core/XWalkEnvironment;->getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "enable":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadModeUpdate:Ljava/lang/Boolean;

    .line 143
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crosswalk download mode update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadModeUpdate:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    sget-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsDownloadModeUpdate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 141
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIaDevice()Z
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getDeviceAbi()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "abi":Ljava/lang/String;
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXWalkVerify()Z
    .locals 4

    .prologue
    .line 149
    sget-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsXWalkVerify:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 150
    const-string v1, "xwalk_verify"

    invoke-static {v1}, Lorg/xwalk/core/XWalkEnvironment;->getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "verify":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsXWalkVerify:Ljava/lang/Boolean;

    .line 153
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crosswalk verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/xwalk/core/XWalkEnvironment;->sIsXWalkVerify:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    sget-object v1, Lorg/xwalk/core/XWalkEnvironment;->sIsXWalkVerify:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 151
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setXWalkApkUrl(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    sput-object p0, Lorg/xwalk/core/XWalkEnvironment;->sXWalkApkUrl:Ljava/lang/String;

    .line 75
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crosswalk APK download URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/xwalk/core/XWalkEnvironment;->sXWalkApkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
