.class public Lcom/github/sahasbhop/a/a/b;
.super Lcom/nostra13/universalimageloader/core/download/a;
.source "SourceFile"


# static fields
.field private static final j:I = 0x8000


# instance fields
.field private k:Landroid/content/Context;

.field private l:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/a;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/github/sahasbhop/a/a/b;->k:Landroid/content/Context;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/github/sahasbhop/a/a/b;->l:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/github/sahasbhop/a/a/b;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/github/sahasbhop/a/a/b;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/github/sahasbhop/a/a/b;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 13
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "imageStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 115
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p2

    .line 161
    .end local p2    # "imageStream":Ljava/io/InputStream;
    .local v2, "imageStream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 119
    .end local v2    # "imageStream":Ljava/io/InputStream;
    .restart local p2    # "imageStream":Ljava/io/InputStream;
    :cond_1
    const/4 v4, 0x0

    .line 122
    .local v4, "isPng":Z
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 123
    .local v7, "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v10, ".png"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v10

    if-eqz v10, :cond_2

    move v4, v8

    .line 129
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "url":Landroid/net/Uri;
    :goto_1
    if-nez v4, :cond_3

    move-object v2, p2

    .end local p2    # "imageStream":Ljava/io/InputStream;
    .restart local v2    # "imageStream":Ljava/io/InputStream;
    goto :goto_0

    .end local v2    # "imageStream":Ljava/io/InputStream;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "url":Landroid/net/Uri;
    .restart local p2    # "imageStream":Ljava/io/InputStream;
    :cond_2
    move v4, v9

    .line 125
    goto :goto_1

    .line 131
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "url":Landroid/net/Uri;
    :cond_3
    iget-object v10, p0, Lcom/github/sahasbhop/a/a/b;->k:Landroid/content/Context;

    invoke-static {v10}, Lcom/github/sahasbhop/a/a/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 132
    .local v0, "cacheDir":Ljava/io/File;
    const-wide/16 v10, 0x0

    invoke-static {v0, v10, v11}, Lcom/github/sahasbhop/a/a/f;->a(Ljava/io/File;J)V

    .line 134
    iget-object v10, p0, Lcom/github/sahasbhop/a/a/b;->k:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/github/sahasbhop/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 136
    .local v6, "targetFile":Ljava/io/File;
    if-nez v6, :cond_5

    .line 137
    sget-boolean v10, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v10, :cond_4

    const-string v10, "Can\'t copy a file!!! %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v10, v8}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    move-object v2, p2

    .line 161
    .end local p2    # "imageStream":Ljava/io/InputStream;
    .restart local v2    # "imageStream":Ljava/io/InputStream;
    goto :goto_0

    .line 139
    .end local v2    # "imageStream":Ljava/io/InputStream;
    .restart local p2    # "imageStream":Ljava/io/InputStream;
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 140
    sget-boolean v10, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v10, :cond_6

    const-string v10, "Copy\nfrom: %s\nto: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v9

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_6
    :try_start_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .local v7, "url":Ljava/net/URL;
    invoke-static {v7, v6}, Lorg/apache/commons/io/FileUtils;->copyURLToFile(Ljava/net/URL;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .end local v7    # "url":Ljava/net/URL;
    :goto_3
    :try_start_2
    sget-boolean v10, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v10, :cond_7

    const-string v10, "Copy finished"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v3, "input":Ljava/io/FileInputStream;
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/a;

    new-instance v10, Ljava/io/BufferedInputStream;

    const v11, 0x8000

    invoke-direct {v10, v3, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-direct {v2, v10, v11}, Lcom/nostra13/universalimageloader/core/assist/a;-><init>(Ljava/io/InputStream;I)V

    .end local p2    # "imageStream":Ljava/io/InputStream;
    .restart local v2    # "imageStream":Ljava/io/InputStream;
    move-object p2, v2

    .line 158
    .end local v2    # "imageStream":Ljava/io/InputStream;
    .restart local p2    # "imageStream":Ljava/io/InputStream;
    goto :goto_2

    .line 147
    .end local v3    # "input":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-static {p2, v6}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 156
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v10, :cond_4

    const-string v10, "Error: %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v10, v8}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 127
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "targetFile":Ljava/io/File;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method


# virtual methods
.method protected a_(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 9
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/a;->a_(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    .line 52
    .local v3, "imageStream":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/github/sahasbhop/a/a/b;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/github/sahasbhop/a/a/b$1;

    invoke-direct {v6, p0, p1, v3}, Lcom/github/sahasbhop/a/a/b$1;-><init>(Lcom/github/sahasbhop/a/a/b;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 59
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    const/4 v4, 0x0

    .line 62
    .local v4, "result":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-object v4

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "Error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 9
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    .line 74
    .local v3, "imageStream":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/github/sahasbhop/a/a/b;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/github/sahasbhop/a/a/b$2;

    invoke-direct {v6, p0, p1, v3}, Lcom/github/sahasbhop/a/a/b$2;-><init>(Lcom/github/sahasbhop/a/a/b;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 81
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    const/4 v4, 0x0

    .line 84
    .local v4, "result":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-object v4

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "Error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 9
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/a;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    .line 96
    .local v3, "imageStream":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/github/sahasbhop/a/a/b;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/github/sahasbhop/a/a/b$3;

    invoke-direct {v6, p0, p1, v3}, Lcom/github/sahasbhop/a/a/b$3;-><init>(Lcom/github/sahasbhop/a/a/b;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 103
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    const/4 v4, 0x0

    .line 106
    .local v4, "result":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-object v4

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "Error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
