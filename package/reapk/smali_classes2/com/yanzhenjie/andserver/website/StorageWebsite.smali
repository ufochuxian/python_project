.class public Lcom/yanzhenjie/andserver/website/StorageWebsite;
.super Lcom/yanzhenjie/andserver/website/BasicWebsite;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRootPath:Ljava/lang/String;

.field private mStorageWrapper:Lcom/yanzhenjie/andserver/util/StorageWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yanzhenjie/andserver/website/BasicWebsite;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The RootPath can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/yanzhenjie/andserver/website/StorageWebsite;->trimSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->mRootPath:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/yanzhenjie/andserver/util/StorageWrapper;

    invoke-direct {v0}, Lcom/yanzhenjie/andserver/util/StorageWrapper;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->mStorageWrapper:Lcom/yanzhenjie/andserver/util/StorageWrapper;

    .line 66
    return-void
.end method


# virtual methods
.method public listWebMobile()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/yanzhenjie/andserver/util/StorageUtils;->getGameRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 88
    .local v2, "file":Ljava/io/File;
    const-string v5, "listWebMobile"

    const-string v6, "StorageUtils.getGameRootDir:%s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const-string v5, "listWebMobile"

    const-string v6, "listWebMobile begin"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-object v5, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    sget-object v6, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v2, v5, v6}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v3

    .line 92
    .local v3, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 93
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "path":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    const-string v5, "listWebMobile"

    const-string v6, "listWebMobile end,file size:%s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRegister(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/RequestHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    new-instance v0, Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;

    iget-object v4, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->INDEX_HTML:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "indexHandler":Lcom/yanzhenjie/andserver/RequestHandler;
    const-string v4, ""

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->mRootPath:Ljava/lang/String;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->mRootPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->mRootPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yanzhenjie/andserver/website/StorageWebsite;->INDEX_HTML:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/website/StorageWebsite;->listWebMobile()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;

    invoke-direct {v3, v1}, Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "requestHandler":Lcom/yanzhenjie/andserver/RequestHandler;
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "requestHandler":Lcom/yanzhenjie/andserver/RequestHandler;
    :cond_0
    return-void
.end method
