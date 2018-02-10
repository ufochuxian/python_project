.class public Lcom/yanzhenjie/andserver/website/AssetsWebsite;
.super Lcom/yanzhenjie/andserver/website/BasicWebsite;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ServerStatusReceiver"


# instance fields
.field private mAssetsWrapper:Lcom/yanzhenjie/andserver/util/AssetsWrapper;

.field private mRootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "rootPath"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p2}, Lcom/yanzhenjie/andserver/website/BasicWebsite;-><init>(Ljava/lang/String;)V

    .line 71
    if-nez p2, :cond_0

    const-string p2, ""

    .line 72
    :cond_0
    invoke-static {p2}, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->trimSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->mRootPath:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/yanzhenjie/andserver/util/AssetsWrapper;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/andserver/util/AssetsWrapper;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->mAssetsWrapper:Lcom/yanzhenjie/andserver/util/AssetsWrapper;

    .line 74
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
    const/4 v10, 0x0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "/com.jiliguala.niuwa/interact/L1PH01L1PH01/web-mobile"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "absolutePath":Ljava/lang/String;
    const-string v6, "listWebMobile"

    const-string v7, "listWebMobile begin"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget-object v6, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    sget-object v7, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v3, v6, v7}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v4

    .line 107
    .local v4, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 108
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "path":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    const-string v6, "listWebMobile"

    const-string v7, "listWebMobile end,file size:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-object v1
.end method

.method public onRegister(Ljava/util/Map;)V
    .locals 7
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
    .local p1, "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    const/4 v6, 0x0

    .line 78
    const-string v3, "ServerStatusReceiver"

    const-string v4, " AssetsWebsite onRegister method inner start..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    new-instance v0, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;

    iget-object v3, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->mAssetsWrapper:Lcom/yanzhenjie/andserver/util/AssetsWrapper;

    iget-object v4, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->INDEX_HTML:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;-><init>(Lcom/yanzhenjie/andserver/util/AssetsWrapper;Ljava/lang/String;)V

    .line 80
    .local v0, "indexHandler":Lcom/yanzhenjie/andserver/RequestHandler;
    const-string v3, ""

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v3, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->mRootPath:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->mRootPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->mRootPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->INDEX_HTML:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v3, "ServerStatusReceiver"

    const-string v4, " AssetsWebsite onRegister method scanFile start..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->listWebMobile()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ServerStatusReceiver"

    const-string v4, " AssetsWebsite onRegister method scanFile end..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;

    iget-object v5, p0, Lcom/yanzhenjie/andserver/website/AssetsWebsite;->mAssetsWrapper:Lcom/yanzhenjie/andserver/util/AssetsWrapper;

    invoke-direct {v4, v5, v1}, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;-><init>(Lcom/yanzhenjie/andserver/util/AssetsWrapper;Ljava/lang/String;)V

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    const-string v3, "ServerStatusReceiver"

    const-string v4, " AssetsWebsite onRegister method inner end..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method
