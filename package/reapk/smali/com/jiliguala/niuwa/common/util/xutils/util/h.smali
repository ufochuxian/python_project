.class public Lcom/jiliguala/niuwa/common/util/xutils/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 20
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 21
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 24
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 25
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "buffer":[B
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "len":I
    :catch_0
    move-exception v4

    .line 28
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 30
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
