.class public Lorg/chromium/base/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/base/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/FileUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 50
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 51
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 52
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    const/16 v7, 0x2000

    :try_start_1
    new-array v0, v7, [B

    .line 54
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "c":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 55
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "buffer":[B
    .end local v1    # "c":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 61
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 63
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 69
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return v6

    .line 57
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "c":I
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 58
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 59
    const/4 v6, 0x1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 64
    .end local v0    # "buffer":[B
    .end local v1    # "c":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 70
    :catch_2
    move-exception v7

    goto :goto_3

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static recursivelyDeleteFile(Ljava/io/File;)V
    .locals 8
    .param p0, "currentFile"    # Ljava/io/File;

    .prologue
    .line 26
    sget-boolean v5, Lorg/chromium/base/FileUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 29
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 30
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 31
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lorg/chromium/base/FileUtils;->recursivelyDeleteFile(Ljava/io/File;)V

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_2
    return-void
.end method
