.class public Lcom/jiliguala/niuwa/services/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/services/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x7530

.field public static final b:I = 0x2710

.field public static final c:I = 0x140000

.field public static final d:I = -0x1

.field public static final e:I = -0x1

.field private static final f:I = 0x2000

.field private static final g:Ljava/lang/String; = "DownloadTask"

.field private static final h:Z = true

.field private static final i:Ljava/lang/String; = ".download"

.field private static final j:I = 0x3

.field private static k:I


# instance fields
.field private A:Z

.field private B:Landroid/net/http/AndroidHttpClient;

.field private C:Lorg/apache/http/client/methods/HttpGet;

.field private D:Lorg/apache/http/HttpResponse;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:Z

.field private K:I

.field private L:I

.field private l:Ljava/io/File;

.field private m:Ljava/io/File;

.field private n:Ljava/lang/String;

.field private o:Ljava/io/RandomAccessFile;

.field private p:Lcom/jiliguala/niuwa/services/d;

.field private q:Landroid/content/Context;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x64

    sput v0, Lcom/jiliguala/niuwa/services/c;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/services/d;ILjava/lang/String;IZII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/jiliguala/niuwa/services/d;
    .param p6, "download_type"    # I
    .param p7, "fileName"    # Ljava/lang/String;
    .param p8, "maxRetryCount"    # I
    .param p9, "needCheckDownloadSpeed"    # Z
    .param p10, "connectionTimeOut"    # I
    .param p11, "socketTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    .line 65
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/services/c;->A:Z

    .line 76
    iput v1, p0, Lcom/jiliguala/niuwa/services/c;->H:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/services/c;->I:I

    .line 89
    iput-object p2, p0, Lcom/jiliguala/niuwa/services/c;->G:Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lcom/jiliguala/niuwa/services/c;->F:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/jiliguala/niuwa/services/c;->n:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    .line 97
    iput-object p4, p0, Lcom/jiliguala/niuwa/services/c;->r:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4, p7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/c;->l:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/c;->q:Landroid/content/Context;

    .line 101
    iput p6, p0, Lcom/jiliguala/niuwa/services/c;->E:I

    .line 102
    iput-boolean p9, p0, Lcom/jiliguala/niuwa/services/c;->J:Z

    .line 103
    iput p10, p0, Lcom/jiliguala/niuwa/services/c;->K:I

    .line 104
    iput p11, p0, Lcom/jiliguala/niuwa/services/c;->L:I

    .line 105
    sput p8, Lcom/jiliguala/niuwa/services/c;->k:I

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/c;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/c;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/services/c;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jiliguala/niuwa/logic/download/error/ResourceNotExistException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x1f4

    const/16 v8, 0x190

    const/16 v7, 0x12c

    .line 305
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    .line 306
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    iget-object v6, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    .line 307
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 308
    .local v3, "statusCode":I
    move-object v2, p1

    .line 309
    .local v2, "newUri":Ljava/lang/String;
    if-lt v3, v8, :cond_0

    if-ge v3, v9, :cond_0

    .line 310
    new-instance v4, Lcom/jiliguala/niuwa/logic/download/error/ResourceNotExistException;

    const-string v5, "Resource not exist"

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/logic/download/error/ResourceNotExistException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :cond_0
    if-lt v3, v9, :cond_2

    move-object p1, v4

    .line 335
    .end local p1    # "uri":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 313
    .restart local p1    # "uri":Ljava/lang/String;
    :cond_2
    if-lt v3, v7, :cond_5

    if-ge v3, v8, :cond_5

    .line 314
    iget v4, p0, Lcom/jiliguala/niuwa/services/c;->H:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/services/c;->H:I

    .line 315
    iget v4, p0, Lcom/jiliguala/niuwa/services/c;->H:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    move-object p1, v2

    .line 317
    goto :goto_0

    .line 320
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    const-string v5, "Location"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 321
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_4

    .line 325
    :cond_4
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 330
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/services/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/net/URISyntaxException;
    move-object p1, v2

    .line 328
    goto :goto_0

    .line 331
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_5
    const/16 v5, 0xc8

    if-lt v3, v5, :cond_6

    if-lt v3, v7, :cond_1

    :cond_6
    move-object p1, v4

    .line 335
    goto :goto_0
.end method

.method private n()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Ljava/io/IOException;,
            Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException;,
            Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;,
            Lcom/jiliguala/niuwa/logic/download/error/DownloadException;,
            Lcom/jiliguala/niuwa/logic/download/error/ContentLengthException;,
            Lcom/jiliguala/niuwa/logic/download/error/ResourceNotExistException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v8

    if-nez v8, :cond_0

    .line 349
    new-instance v8, Landroid/accounts/NetworkErrorException;

    const-string v9, "Network blocked."

    invoke-direct {v8, v9}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 355
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    .line 357
    iget v8, p0, Lcom/jiliguala/niuwa/services/c;->K:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 358
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.connection.timeout"

    iget v10, p0, Lcom/jiliguala/niuwa/services/c;->K:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 360
    :cond_1
    iget v8, p0, Lcom/jiliguala/niuwa/services/c;->L:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 361
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.socket.timeout"

    iget v10, p0, Lcom/jiliguala/niuwa/services/c;->L:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 366
    :cond_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->l:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 372
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->l:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 376
    :cond_3
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 378
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 381
    :cond_4
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->n:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/services/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "newUri":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    .line 384
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    iget-object v9, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    .line 386
    :goto_0
    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 387
    :cond_5
    iget v8, p0, Lcom/jiliguala/niuwa/services/c;->I:I

    sget v9, Lcom/jiliguala/niuwa/services/c;->k:I

    if-le v8, v9, :cond_6

    .line 388
    new-instance v8, Lcom/jiliguala/niuwa/logic/download/error/ContentLengthException;

    const-string v9, "Cannot read content-length, which is -1."

    invoke-direct {v8, v9}, Lcom/jiliguala/niuwa/logic/download/error/ContentLengthException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 391
    :cond_6
    :try_start_0
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 392
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_1
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    .line 397
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    .line 398
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    iget-object v9, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    .line 399
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    .line 401
    iget v8, p0, Lcom/jiliguala/niuwa/services/c;->I:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/jiliguala/niuwa/services/c;->I:I

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 404
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 405
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    const-string v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    const-string v9, "accept"

    const-string v10, "*/*"

    invoke-virtual {v8, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->t:J

    .line 409
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 410
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    .line 411
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    iget-object v9, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    .line 422
    :cond_8
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d/a;->e()J

    move-result-wide v6

    .line 428
    .local v6, "storage":J
    iget v8, p0, Lcom/jiliguala/niuwa/services/c;->E:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    long-to-double v8, v8

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double/2addr v8, v10

    double-to-long v2, v8

    .line 431
    .local v2, "checkSize":J
    :goto_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long v8, v2, v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_a

    .line 432
    new-instance v8, Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;

    const-string v9, "SD card no memory."

    invoke-direct {v8, v9}, Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 428
    .end local v2    # "checkSize":J
    :cond_9
    iget-wide v2, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    goto :goto_2

    .line 438
    .restart local v2    # "checkSize":J
    :cond_a
    new-instance v8, Lcom/jiliguala/niuwa/services/c$a;

    iget-object v9, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v8, p0, v9, v10}, Lcom/jiliguala/niuwa/services/c$a;-><init>(Lcom/jiliguala/niuwa/services/c;Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->o:Ljava/io/RandomAccessFile;

    .line 442
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->D:Lorg/apache/http/HttpResponse;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 443
    .local v4, "input":Ljava/io/InputStream;
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v4, v8}, Lcom/jiliguala/niuwa/services/c;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 445
    .local v0, "bytesCopied":I
    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->t:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/jiliguala/niuwa/services/c;->A:Z

    if-nez v8, :cond_b

    .line 446
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download incomplete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 453
    :cond_b
    int-to-long v8, v0

    return-wide v8
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/NetworkErrorException;,
            Lcom/jiliguala/niuwa/logic/download/error/DownloadSpeedException;
        }
    .end annotation

    .prologue
    .line 459
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 460
    :cond_0
    const/4 v1, -0x1

    .line 524
    :goto_0
    return v1

    .line 463
    :cond_1
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 465
    .local v0, "buffer":[B
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v6, p1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 470
    .local v6, "in":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v7, 0x0

    .line 471
    .local v7, "n":I
    const-wide/16 v2, -0x1

    .local v2, "errorBlockTimePreviousTime":J
    const-wide/16 v4, 0x0

    .line 475
    .local v4, "expireTime":J
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 477
    :cond_2
    iget-boolean v8, p0, Lcom/jiliguala/niuwa/services/c;->A:Z

    if-nez v8, :cond_3

    .line 478
    const/4 v8, 0x0

    const/16 v9, 0x2000

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 479
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 518
    :cond_3
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 519
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    .line 520
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 521
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 522
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 482
    :cond_4
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p2, v0, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 483
    add-int/2addr v1, v7

    .line 488
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v8

    if-nez v8, :cond_5

    .line 489
    new-instance v8, Landroid/accounts/NetworkErrorException;

    const-string v9, "Network blocked."

    invoke-direct {v8, v9}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 519
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    .line 520
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 521
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 522
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 523
    throw v8

    .line 492
    :cond_5
    :try_start_2
    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->w:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 493
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_6

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 495
    const-wide/16 v8, 0x7530

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    .line 496
    new-instance v8, Lorg/apache/http/conn/ConnectTimeoutException;

    const-string v9, "connection time out."

    invoke-direct {v8, v9}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 499
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 506
    :cond_7
    :goto_1
    iget-boolean v8, p0, Lcom/jiliguala/niuwa/services/c;->J:Z

    if-eqz v8, :cond_2

    .line 508
    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->y:J

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 509
    iget-wide v8, p0, Lcom/jiliguala/niuwa/services/c;->s:J

    const-wide/32 v10, 0x140000

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 512
    new-instance v8, Lcom/jiliguala/niuwa/logic/download/error/DownloadSpeedException;

    const-string v9, "\u4e0b\u8f7d\u901f\u5ea6\u8f83\u6162,\u5207\u6362url!"

    invoke-direct {v8, v9}, Lcom/jiliguala/niuwa/logic/download/error/DownloadSpeedException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    :cond_8
    const-wide/16 v4, 0x0

    .line 503
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 190
    const-wide/16 v2, -0x1

    .line 192
    .local v2, "result":J
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/services/c;->n()J
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/jiliguala/niuwa/logic/download/error/DownloadSpeedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/jiliguala/niuwa/logic/download/error/DownloadException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/jiliguala/niuwa/logic/download/error/ContentLengthException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/jiliguala/niuwa/logic/download/error/ResourceNotExistException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 246
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Landroid/accounts/NetworkErrorException;
    :try_start_1
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    .line 195
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/services/c;->cancel(Z)Z

    .line 196
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v4, :cond_2

    .line 197
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    const/4 v6, 0x1

    invoke-interface {v4, p0, v5, v6}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;Ljava/lang/Throwable;I)V

    .line 198
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/jiliguala/niuwa/services/c;->a(J)V

    .line 199
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    invoke-interface {v4, p0}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_3

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0

    .line 201
    .end local v1    # "e":Landroid/accounts/NetworkErrorException;
    :catch_1
    move-exception v1

    .line 202
    .local v1, "e":Lcom/jiliguala/niuwa/logic/download/error/DownloadSpeedException;
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/services/c;->cancel(Z)Z

    .line 203
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v4, :cond_4

    .line 204
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    const/4 v6, 0x5

    invoke-interface {v4, p0, v5, v6}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;Ljava/lang/Throwable;I)V

    .line 205
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/jiliguala/niuwa/services/c;->a(J)V

    .line 206
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    invoke-interface {v4, p0}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :cond_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_5

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_5
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0

    .line 209
    .end local v1    # "e":Lcom/jiliguala/niuwa/logic/download/error/DownloadSpeedException;
    :catch_2
    move-exception v1

    .line 210
    .local v1, "e":Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException;
    :try_start_3
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_6

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_6
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 211
    .end local v1    # "e":Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException;
    :catch_3
    move-exception v1

    .line 212
    .local v1, "e":Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;
    :try_start_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v4, :cond_7

    .line 213
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    const/4 v5, 0x3

    invoke-interface {v4, p0, v1, v5}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;Ljava/lang/Throwable;I)V

    .line 215
    :cond_7
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_8

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_8
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 216
    .end local v1    # "e":Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;
    :catch_4
    move-exception v1

    .line 217
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_9

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_9
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 219
    .local v1, "e":Lcom/jiliguala/niuwa/logic/download/error/DownloadException;
    :try_start_6
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_a

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_a
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Lcom/jiliguala/niuwa/logic/download/error/DownloadException;
    :catch_6
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "id:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->G:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v4, "url:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v4, "path:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v4, "downloadType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/jiliguala/niuwa/services/c;->E:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 227
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 228
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_b

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_b
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 229
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v1

    .line 230
    .local v1, "e":Lcom/jiliguala/niuwa/logic/download/error/ContentLengthException;
    :try_start_8
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_c

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_c
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 231
    .end local v1    # "e":Lcom/jiliguala/niuwa/logic/download/error/ContentLengthException;
    :catch_8
    move-exception v1

    .line 232
    .local v1, "e":Lcom/jiliguala/niuwa/logic/download/error/ResourceNotExistException;
    :try_start_9
    const-string v4, "\u6240\u8bf7\u6c42\u8d44\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_d

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_d
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 233
    .end local v1    # "e":Lcom/jiliguala/niuwa/logic/download/error/ResourceNotExistException;
    :catch_9
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 235
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_e

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_e
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 238
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    if-eqz v5, :cond_f

    .line 239
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->B:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    :cond_f
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v5

    if-nez v5, :cond_10

    .line 242
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/c;->C:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 244
    :cond_10
    throw v4
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->F:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "downloadPercent"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/jiliguala/niuwa/services/c;->v:J

    .line 152
    return-void
.end method

.method protected a(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/services/c;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 281
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/services/c;->E:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;

    if-eqz v0, :cond_3

    .line 295
    :cond_2
    :goto_0
    return-void

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->m:Ljava/io/File;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/c;->l:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/services/d;->c(Lcom/jiliguala/niuwa/services/c;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/c;->r:Ljava/lang/String;

    .line 133
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 252
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 253
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    .line 254
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/c;->z:Ljava/lang/Throwable;

    invoke-interface {v0, p0, v1, v4}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;Ljava/lang/Throwable;I)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jiliguala/niuwa/services/c;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->y:J

    .line 262
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->s:J

    .line 263
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->s:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/services/c;->t:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->v:J

    .line 264
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->s:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/services/c;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->w:J

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/services/d;->a(Lcom/jiliguala/niuwa/services/c;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->G:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->l:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/jiliguala/niuwa/services/c;->E:I

    return v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/services/c;->a([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/services/c;->A:Z

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->v:J

    return-wide v0
.end method

.method public i()J
    .locals 4

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->s:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/services/c;->t:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->u:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->w:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->y:J

    return-wide v0
.end method

.method public m()Lcom/jiliguala/niuwa/services/d;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    return-object v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/services/c;->A:Z

    .line 302
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/services/c;->a(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/c;->x:J

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/c;->p:Lcom/jiliguala/niuwa/services/d;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/services/d;->b(Lcom/jiliguala/niuwa/services/c;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/services/c;->a([Ljava/lang/Integer;)V

    return-void
.end method
