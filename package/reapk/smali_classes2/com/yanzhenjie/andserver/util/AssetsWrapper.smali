.class public Lcom/yanzhenjie/andserver/util/AssetsWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ServerStatusReceiver"


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->mAssetManager:Landroid/content/res/AssetManager;

    .line 50
    return-void
.end method


# virtual methods
.method public fileList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ignored":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ignored":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scanFile(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "inPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 100
    const-string v5, "ServerStatusReceiver"

    const-string v6, "AssetsWrapper scanFile method inner start,inPath:%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v7

    invoke-static {v5, v6, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v3, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "ServerStatusReceiver"

    const-string v6, "AssetsWrapper isNotFile start,inPath:%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v7

    invoke-static {v5, v6, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    const-string v5, "ServerStatusReceiver"

    const-string v6, "AssetsWrapper fileList start..."

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->fileList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "files":[Ljava/lang/String;
    const-string v5, "ServerStatusReceiver"

    const-string v6, "AssetsWrapper fileList end..."

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    if-eqz v2, :cond_3

    array-length v5, v2

    if-lez v5, :cond_3

    .line 111
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v1, v2, v6

    .line 112
    .local v1, "file":Ljava/lang/String;
    const-string v5, "ServerStatusReceiver"

    const-string v9, "[AssetsWrapper],file:%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v7

    invoke-static {v5, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "realPath":Ljava/lang/String;
    const-string v5, "ServerStatusReceiver"

    const-string v9, "[AssetsWrapper],realPath:%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v5, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0, v4}, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->isFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    const-string v5, "ServerStatusReceiver"

    const-string v9, "[AssetsWrapper],isFile branch,realPath:%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v5, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 113
    .end local v4    # "realPath":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 119
    .restart local v4    # "realPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->scanFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "ServerStatusReceiver"

    const-string v9, "[AssetsWrapper],isNotFile branch start,realPath:%s,childList size:%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v5, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 122
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    :cond_2
    const-string v5, "ServerStatusReceiver"

    const-string v9, "[AssetsWrapper],isNotFile branch end,realPath:%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v5, v9, v10}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 128
    .end local v0    # "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "file":Ljava/lang/String;
    .end local v4    # "realPath":Ljava/lang/String;
    :cond_3
    const-string v5, "ServerStatusReceiver"

    const-string v6, "AssetsWrapper isNotFile end,inPath:%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v7

    invoke-static {v5, v6, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-string v5, "ServerStatusReceiver"

    const-string v6, "AssetsWrapper scanFile method inner end,inPath:%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v7

    invoke-static {v5, v6, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-object v3
.end method
