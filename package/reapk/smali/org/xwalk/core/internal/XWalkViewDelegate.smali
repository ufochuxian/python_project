.class Lorg/xwalk/core/internal/XWalkViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field private static final COMMAND_LINE_FILE:Ljava/lang/String; = "xwalk-command-line"

.field private static final MANDATORY_LIBRARIES:[Ljava/lang/String;

.field private static final MANDATORY_PAKS:[Ljava/lang/String;

.field private static final META_XWALK_DOWNLOAD_MODE:Ljava/lang/String; = "xwalk_download_mode"

.field private static final META_XWALK_ENABLE_DOWNLOAD_MODE:Ljava/lang/String; = "xwalk_enable_download_mode"

.field private static final PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "xwalkcore"

.field private static final TAG:Ljava/lang/String; = "XWalkLib"

.field private static final XWALK_CORE_EXTRACTED_DIR:Ljava/lang/String; = "extracted_xwalkcore"

.field private static final XWALK_PAK_NAME:Ljava/lang/String; = "xwalk.pak"

.field private static final XWALK_RESOURCES_LIST_RES_NAME:Ljava/lang/String; = "xwalk_resources_list"

.field private static sDeviceAbi:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sLibraryLoaded:Z

.field private static sLoadedByHoudini:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    sput-boolean v3, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    .line 47
    sput-boolean v3, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    .line 48
    sput-boolean v3, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLoadedByHoudini:Z

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xwalk.pak"

    aput-object v1, v0, v3

    const-string v1, "icudtl.dat"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "xwalk_100_percent.pak"

    aput-object v2, v0, v1

    sput-object v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_PAKS:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "xwalkcore"

    aput-object v1, v0, v3

    sput-object v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewDelegate;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getApplicationMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 321
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 323
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 325
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static getDeviceAbi()Ljava/lang/String;
    .locals 8

    .prologue
    .line 335
    sget-object v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sDeviceAbi:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 337
    :try_start_0
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sDeviceAbi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
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

    sget-object v7, Lorg/xwalk/core/internal/XWalkViewDelegate;->sDeviceAbi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    sget-object v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sDeviceAbi:Ljava/lang/String;

    return-object v5

    .line 338
    .end local v0    # "e":Ljava/lang/NoSuchFieldError;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/NoSuchFieldError;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop ro.product.cpu.abi"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 341
    .restart local v4    # "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 342
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 343
    .restart local v2    # "input":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sDeviceAbi:Ljava/lang/String;

    .line 344
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 345
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 346
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 347
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Can not detect device\'s ABI"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 315
    :cond_0
    return v0
.end method

.method public static init(Landroid/content/Context;Landroid/content/Context;)V
    .locals 4
    .param p0, "libContext"    # Landroid/content/Context;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/xwalk/core/internal/XWalkViewDelegate;->loadXWalkLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load native library"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    sget-boolean v2, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    if-eqz v2, :cond_1

    .line 149
    .end local p1    # "appContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 112
    .restart local p1    # "appContext":Landroid/content/Context;
    :cond_1
    if-nez p0, :cond_4

    move-object v0, p1

    .line 115
    .local v0, "context":Landroid/content/Context;
    :goto_1
    const-string v2, "xwalkcore"

    invoke-static {v2, v0}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;Landroid/content/Context;)V

    .line 118
    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkInternalResources;->resetIds(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkViewDelegate;->readCommandLine(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 129
    :cond_2
    :try_start_0
    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->setupResourceInterceptor(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;

    .line 138
    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->startBrowserProcess(Landroid/content/Context;)V

    .line 140
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 141
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "appContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/ApplicationStatusManager;->init(Landroid/app/Application;)V

    .line 146
    :cond_3
    :goto_2
    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkPresentationHost;->createInstanceOnce(Landroid/content/Context;)Lorg/xwalk/core/internal/XWalkPresentationHost;

    .line 148
    const/4 v2, 0x1

    sput-boolean v2, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    goto :goto_0

    .line 112
    .end local v0    # "context":Landroid/content/Context;
    .restart local p1    # "appContext":Landroid/content/Context;
    :cond_4
    new-instance v0, Lorg/xwalk/core/internal/MixedContext;

    invoke-direct {v0, p0, p1}, Lorg/xwalk/core/internal/MixedContext;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    goto :goto_1

    .line 130
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    instance-of v2, p1, Landroid/app/Service;

    if-eqz v2, :cond_3

    .line 143
    check-cast p1, Landroid/app/Service;

    .end local p1    # "appContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/ApplicationStatusManager;->init(Landroid/app/Application;)V

    goto :goto_2
.end method

.method private static isIaDevice()Z
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDelegate;->getDeviceAbi()Ljava/lang/String;

    move-result-object v0

    .line 331
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

.method public static loadXWalkLibrary(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->loadXWalkLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadXWalkLibrary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 159
    sget-boolean v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    if-eqz v6, :cond_0

    .line 191
    :goto_0
    return v5

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    sget-boolean v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLoadedByHoudini:Z

    if-nez v6, :cond_1

    .line 162
    sget-object v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 163
    .local v3, "library":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "library":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 167
    .restart local v3    # "library":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    .end local v3    # "library":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v6}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v4

    .line 175
    .local v4, "libraryLoader":Lorg/chromium/base/library_loader/LibraryLoader;
    invoke-virtual {v4, p0}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v4    # "libraryLoader":Lorg/chromium/base/library_loader/LibraryLoader;
    :goto_3
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDelegate;->nativeIsLibraryBuiltForIA()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    const-string v6, "XWalkLib"

    const-string v7, "Native library is built for IA"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_3
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    goto :goto_0

    .line 182
    :cond_4
    const-string v6, "XWalkLib"

    const-string v7, "Native library is built for ARM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDelegate;->isIaDevice()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    const-string v6, "XWalkLib"

    const-string v7, "Crosswalk\'s native library does not support Houdini"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLoadedByHoudini:Z

    .line 186
    const/4 v5, 0x0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method private static native nativeIsLibraryBuiltForIA()Z
.end method

.method private static readCommandLine(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v5, 0x0

    .line 80
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "xwalk-command-line"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 83
    .local v3, "input":Ljava/io/InputStream;
    const/16 v7, 0x400

    .line 84
    .local v7, "size":I
    new-array v0, v7, [C

    .line 85
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v6, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :goto_0
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v0, v8, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    .local v4, "length":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 89
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 94
    .end local v4    # "length":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 95
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "size":I
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    const/4 v8, 0x0

    .line 98
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v8

    .line 92
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "size":I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/base/CommandLine;->tokenizeQuotedAruments([C)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 98
    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v5, v6

    .line 101
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 99
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XWalkLib"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 99
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "size":I
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    .line 100
    const-string v9, "XWalkLib"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 98
    :goto_4
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 101
    :cond_3
    :goto_5
    throw v8

    .line 99
    :catch_3
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XWalkLib"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "size":I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 94
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v7    # "size":I
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private static setupResourceInterceptor(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v3, 0x1

    .line 233
    .local v3, "isSharedMode":Z
    :goto_0
    const-string v1, "xwalk_download_mode"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->getApplicationMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "enable":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 235
    const-string v1, "xwalk_enable_download_mode"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->getApplicationMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 237
    :cond_0
    if-eqz v10, :cond_3

    const-string v1, "enable"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 244
    .local v6, "isDownloadMode":Z
    :goto_1
    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "xwalk.pak"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    .line 247
    .local v4, "isTestApk":Z
    :goto_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v14, "resourceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/ResourceExtractor$ResourceEntry;>;"
    :try_start_0
    const-string v1, "xwalk_resources_list"

    const-string v5, "array"

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lorg/xwalk/core/internal/XWalkViewDelegate;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 250
    .local v15, "resourceListId":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, "crosswalkResources":[Ljava/lang/String;
    move-object v7, v8

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v12, :cond_5

    aget-object v13, v7, v11

    .line 252
    .local v13, "resource":Ljava/lang/String;
    new-instance v1, Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    const/4 v5, 0x0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v1, v5, v0, v13}, Lorg/chromium/base/ResourceExtractor$ResourceEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 230
    .end local v3    # "isSharedMode":Z
    .end local v4    # "isTestApk":Z
    .end local v6    # "isDownloadMode":Z
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "crosswalkResources":[Ljava/lang/String;
    .end local v10    # "enable":Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "resource":Ljava/lang/String;
    .end local v14    # "resourceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/ResourceExtractor$ResourceEntry;>;"
    .end local v15    # "resourceListId":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 237
    .restart local v3    # "isSharedMode":Z
    .restart local v10    # "enable":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 244
    .restart local v6    # "isDownloadMode":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 254
    .restart local v4    # "isTestApk":Z
    .restart local v14    # "resourceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/ResourceExtractor$ResourceEntry;>;"
    :catch_0
    move-exception v9

    .line 255
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v7, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_PAKS:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v12, v7

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_4
    if-ge v11, v12, :cond_5

    aget-object v13, v7, v11

    .line 256
    .restart local v13    # "resource":Ljava/lang/String;
    new-instance v1, Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    const/4 v5, 0x0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v1, v5, v0, v13}, Lorg/chromium/base/ResourceExtractor$ResourceEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 259
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "resource":Ljava/lang/String;
    :cond_5
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v5, v5, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    invoke-static {v1}, Lorg/chromium/base/ResourceExtractor;->setResourcesToExtract([Lorg/chromium/base/ResourceExtractor$ResourceEntry;)V

    .line 263
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 267
    .local v2, "interceptableResources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lorg/xwalk/core/internal/XWalkViewDelegate$2;

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lorg/xwalk/core/internal/XWalkViewDelegate$2;-><init>(Ljava/util/HashSet;ZZLandroid/content/Context;Z)V

    invoke-static {v1}, Lorg/chromium/base/ResourceExtractor;->setResourceInterceptor(Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;)V

    .line 300
    return-void
.end method

.method private static startBrowserProcess(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    new-instance v0, Lorg/xwalk/core/internal/XWalkViewDelegate$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkViewDelegate$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method
