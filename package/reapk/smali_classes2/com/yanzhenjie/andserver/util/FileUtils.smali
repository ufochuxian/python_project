.class public Lcom/yanzhenjie/andserver/util/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTERACT_RES_STOREAGE_PATH:Ljava/lang/String; = "/storage/emulated/0/com.jiliguala.niuwa/interact"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yanzhenjie/andserver/util/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/andserver/util/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final canFileOpen(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 63
    const/4 v3, 0x1

    .line 68
    if-eqz v2, :cond_0

    .line 69
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :cond_0
    move-object v1, v2

    .line 72
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return v3

    .line 68
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_2
    if-eqz v2, :cond_3

    .line 69
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :cond_3
    move-object v1, v2

    .line 72
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_1

    .line 69
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 69
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 71
    :cond_4
    throw v3
.end method

.method public static final canFileOpen(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yanzhenjie/andserver/util/FileUtils;->canFileOpen(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static final checkAndCreateFile(Ljava/io/File;Z)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "isDirectory"    # Z

    .prologue
    const/4 v2, 0x0

    .line 101
    if-nez p0, :cond_1

    .line 102
    sget-object v3, Lcom/yanzhenjie/andserver/util/FileUtils;->TAG:Ljava/lang/String;

    const-string v4, "checkAndCreateFile... file = null"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/yanzhenjie/andserver/util/FileUtils;->isFileExist(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 107
    .local v1, "parent":Ljava/io/File;
    invoke-static {v1}, Lcom/yanzhenjie/andserver/util/FileUtils;->isFileExist(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_2
    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v2

    goto :goto_0

    .line 114
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/yanzhenjie/andserver/util/FileUtils;->TAG:Ljava/lang/String;

    const-string v4, "checkAndCreateFile error occurred."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/jiliguala/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final checkAndCreateFile(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "fileAbsolutePath"    # Ljava/lang/String;
    .param p1, "isDirectory"    # Z

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-object v2, Lcom/yanzhenjie/andserver/util/FileUtils;->TAG:Ljava/lang/String;

    const-string v3, "checkAndCreateFile... fileAbsolutePath = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/jiliguala/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    :goto_0
    return v1

    .line 88
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/yanzhenjie/andserver/util/FileUtils;->checkAndCreateFile(Ljava/io/File;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 6
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 175
    if-nez p0, :cond_0

    .line 192
    :goto_0
    return v2

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage/emulated/0/com.jiliguala.niuwa/interact"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 179
    sget-object v3, Lcom/yanzhenjie/andserver/util/FileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDirectory for path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/jiliguala/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 184
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 185
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/yanzhenjie/andserver/util/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    .line 184
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 192
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v1, ""

    .line 198
    .local v1, "extension":Ljava/lang/String;
    :try_start_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 227
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method public static getListFiles(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "directory":Ljava/io/File;
    instance-of v5, p0, Ljava/io/File;

    if-eqz v5, :cond_1

    move-object v0, p0

    .line 253
    check-cast v0, Ljava/io/File;

    .line 257
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    return-object v3

    .line 255
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "directory":Ljava/io/File;
    goto :goto_0

    .line 261
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 263
    .local v1, "fileArr":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 264
    aget-object v2, v1, v4

    .line 265
    .local v2, "fileOne":Ljava/io/File;
    invoke-static {v2}, Lcom/yanzhenjie/andserver/util/FileUtils;->getListFiles(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getListFilesInString(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "directory":Ljava/io/File;
    instance-of v5, p0, Ljava/io/File;

    if-eqz v5, :cond_1

    move-object v0, p0

    .line 274
    check-cast v0, Ljava/io/File;

    .line 278
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    return-object v3

    .line 276
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "directory":Ljava/io/File;
    goto :goto_0

    .line 282
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 284
    .local v1, "fileArr":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 285
    aget-object v2, v1, v4

    .line 286
    .local v2, "fileOne":Ljava/io/File;
    invoke-static {v2}, Lcom/yanzhenjie/andserver/util/FileUtils;->getListFilesInString(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static final isFileExist(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static final isFileExist(Ljava/lang/String;)Z
    .locals 5
    .param p0, "fileAbsolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    sget-object v2, Lcom/yanzhenjie/andserver/util/FileUtils;->TAG:Ljava/lang/String;

    const-string v3, "fileAbsolutePath = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/jiliguala/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :goto_0
    return v1

    .line 37
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/yanzhenjie/andserver/util/FileUtils;->isFileExist(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "saveUrl"    # Ljava/lang/String;
    .param p2, "fileNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 236
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 240
    .local v4, "fos":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 241
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 242
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final splitFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "slash_index":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 138
    .local v2, "str":[Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "dot_index":I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 141
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_0

    .line 144
    .end local v0    # "dot_index":I
    :cond_2
    aput-object p0, v2, v4

    .line 145
    const-string v3, ""

    aput-object v3, v2, v5

    goto :goto_0
.end method

.method public static final splitUrlFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-object v1

    .line 155
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, "slash_index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 160
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    .local v1, "fileName":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/yanzhenjie/andserver/util/FileUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/jiliguala/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
