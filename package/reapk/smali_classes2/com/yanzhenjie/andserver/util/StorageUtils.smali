.class public Lcom/yanzhenjie/andserver/util/StorageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APK_CACHE:Ljava/lang/String; = "apk"

.field public static final AUDIO_CACHE:Ljava/lang/String; = "audio"

.field public static final CAMERA_TAKEN_CACHE:Ljava/lang/String; = "cam"

.field public static final FLASH_CARD_CACHE:Ljava/lang/String; = "flash_card"

.field public static final GAME:Ljava/lang/String; = "game"

.field public static final HTTP_CACHE:Ljava/lang/String; = "http"

.field public static final IMG_CACHE:Ljava/lang/String; = "img"

.field public static final INTERACT:Ljava/lang/String; = "interact"

.field public static final LRC_CACHE:Ljava/lang/String; = "lrc"

.field public static final MSC:Ljava/lang/String; = "msc"

.field public static final PHOTO_CACHE:Ljava/lang/String; = "photo"

.field public static final QRURL:Ljava/lang/String; = "qrcode_url"

.field public static final RECORD_CACHE:Ljava/lang/String; = "rec"

.field private static final TAG:Ljava/lang/String;

.field public static final VIDEO_CACHE:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/yanzhenjie/andserver/util/StorageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 7
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 238
    const/4 v1, 0x1

    .line 239
    .local v1, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 242
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->delete(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v1, v6

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v1, v3

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v1, v3

    .line 249
    :cond_2
    if-nez v1, :cond_3

    .line 250
    sget-object v3, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v4, "Delete failed;"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/jiliguala/a/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v2, v1

    .line 255
    :goto_1
    return v2

    .line 254
    :cond_4
    sget-object v3, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v4, "File does not exist."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getApkDownloadCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const-string v0, "apk"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final getAppRootCacheDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/yanzhenjie/andserver/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yanzhenjie/andserver/util/FileUtils;->checkAndCreateFile(Ljava/lang/String;Z)Z

    .line 97
    :cond_0
    return-object v0
.end method

.method public static getAudioDownloadCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string v0, "audio"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSize(Landroid/os/StatFs;)J
    .locals 6
    .param p0, "statFs"    # Landroid/os/StatFs;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/yanzhenjie/andserver/util/VersionUtils;->hasJellyBeanMR2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 84
    .local v0, "availableBytes":J
    :goto_0
    return-wide v0

    .line 82
    .end local v0    # "availableBytes":J
    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v0, v2, v4

    .restart local v0    # "availableBytes":J
    goto :goto_0
.end method

.method public static getAvailableStorage()J
    .locals 10

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, "storageDirectory":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v8, v5

    mul-long v0, v6, v8

    .line 231
    .end local v3    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getCameraTakenDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const-string v0, "cam"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 175
    if-nez p0, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 206
    :cond_0
    :goto_0
    return-object v1

    .line 181
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 182
    .local v3, "outer_cache":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 183
    .local v2, "inner_cache":Ljava/io/File;
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, "getDiskCacheDir, outer_cache = %s, inner_cache = %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    aput-object v2, v6, v8

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, "cachePath":Ljava/lang/String;
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, " Environment.isExternalStorageRemovable() = %b"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const-string v4, "mounted"

    invoke-static {}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, " if cachePath = %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :goto_1
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, "cachePath=%s, uniqueName = %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object p1, v6, v8

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yanzhenjie/andserver/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/yanzhenjie/andserver/util/FileUtils;->checkAndCreateFile(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 196
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, " else cachePath = %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    const-string v1, ""

    .line 263
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getFlashCardDownloadCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v0, "flash_card"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getGameRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const-string v0, "game"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final getImageDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v0, "img"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getInteractLessonRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v0, "interact"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLrcDownloadCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string v0, "lrc"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v0, "photo"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getQrCodeUrl(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string v0, "qrcode_url"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRecCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string v0, "rec"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSpeakRecordDir(Landroid/content/Context;)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 149
    if-nez p0, :cond_1

    .line 150
    const/4 v1, 0x0

    .line 171
    :cond_0
    :goto_0
    return-object v1

    .line 152
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 153
    .local v3, "outer_cache":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 154
    .local v2, "inner_cache":Ljava/io/File;
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, "getDiskCacheDir, outer_cache = %s, inner_cache = %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    aput-object v2, v6, v8

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "cachePath":Ljava/lang/String;
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, " Environment.isExternalStorageRemovable() = %b"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-string v4, "mounted"

    invoke-static {}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, " if cachePath = %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_1
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, "cachePath=%s, uniqueName = %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v9

    const-string v7, "msc"

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yanzhenjie/andserver/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/yanzhenjie/andserver/util/FileUtils;->checkAndCreateFile(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 162
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    sget-object v4, Lcom/yanzhenjie/andserver/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v5, " else cachePath = %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lcom/jiliguala/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getTotalSize(Landroid/os/StatFs;)J
    .locals 6
    .param p0, "statFs"    # Landroid/os/StatFs;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/yanzhenjie/andserver/util/VersionUtils;->hasJellyBeanMR2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    .line 61
    .local v0, "availableBytes":J
    :goto_0
    return-wide v0

    .line 59
    .end local v0    # "availableBytes":J
    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v0, v2, v4

    .restart local v0    # "availableBytes":J
    goto :goto_0
.end method

.method public static getVideoDownloadCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-string v0, "video"

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 40
    const-string v0, "mounted"

    invoke-static {}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yanzhenjie/andserver/util/StorageUtils;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageSpaceEnough(J)Z
    .locals 4
    .param p0, "fileSize"    # J

    .prologue
    .line 71
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, "sdcard":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-static {v1}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getAvailableSize(Landroid/os/StatFs;)J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
