.class public Lcom/jiliguala/niuwa/logic/download/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/download/c$a;
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

.field private static final b:Ljava/lang/String;

.field private static final c:I = 0x2000

.field private static final d:Z = true

.field private static final e:Ljava/lang/String; = ".download"


# instance fields
.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:Ljava/lang/String;

.field private i:Ljava/io/RandomAccessFile;

.field private j:Lcom/jiliguala/niuwa/logic/download/a;

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:Ljava/lang/Throwable;

.field private u:Z

.field private v:Landroid/net/http/AndroidHttpClient;

.field private w:Lorg/apache/http/client/methods/HttpGet;

.field private x:Lorg/apache/http/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/logic/download/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/download/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/download/a;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/jiliguala/niuwa/logic/download/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->u:Z

    .line 63
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/download/c;->h:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    .line 66
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "fileName":Ljava/lang/String;
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/download/c;->l:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    .line 69
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/download/c;->k:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/download/c;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/download/c;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/download/c;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private k()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Ljava/io/IOException;,
            Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException;,
            Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 220
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 221
    new-instance v4, Landroid/accounts/NetworkErrorException;

    const-string v5, "Network blocked."

    invoke-direct {v4, v5}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    :cond_0
    const-string v4, "DownloadTask"

    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    .line 228
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/download/c;->h:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->w:Lorg/apache/http/client/methods/HttpGet;

    .line 229
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/download/c;->w:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->x:Lorg/apache/http/HttpResponse;

    .line 230
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->x:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    .line 232
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    iput-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 287
    :goto_0
    return-wide v4

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->w:Lorg/apache/http/client/methods/HttpGet;

    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->w:Lorg/apache/http/client/methods/HttpGet;

    const-string v5, "accept"

    const-string v6, "*/*"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->n:J

    .line 247
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 248
    const-string v4, "DownloadTask"

    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    .line 249
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/download/c;->w:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->x:Lorg/apache/http/HttpResponse;

    .line 260
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d/a;->e()J

    move-result-wide v2

    .line 265
    .local v2, "storage":J
    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_3

    .line 266
    new-instance v4, Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;

    const-string v5, "SD card no memory."

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_3
    new-instance v4, Lcom/jiliguala/niuwa/logic/download/c$a;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v4, p0, v5, v6}, Lcom/jiliguala/niuwa/logic/download/c$a;-><init>(Lcom/jiliguala/niuwa/logic/download/c;Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->i:Ljava/io/RandomAccessFile;

    .line 274
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/logic/download/c;->publishProgress([Ljava/lang/Object;)V

    .line 276
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->x:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 277
    .local v1, "input":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v1, v4}, Lcom/jiliguala/niuwa/logic/download/c;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 279
    .local v0, "bytesCopied":I
    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->n:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->u:Z

    if-nez v4, :cond_4

    .line 280
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download incomplete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_4
    int-to-long v4, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 293
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 294
    :cond_0
    const/4 v1, -0x1

    .line 347
    :goto_0
    return v1

    .line 297
    :cond_1
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 299
    .local v0, "buffer":[B
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v6, p1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 304
    .local v6, "in":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v7, 0x0

    .line 305
    .local v7, "n":I
    const-wide/16 v2, -0x1

    .local v2, "errorBlockTimePreviousTime":J
    const-wide/16 v4, 0x0

    .line 309
    .local v4, "expireTime":J
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 311
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/jiliguala/niuwa/logic/download/c;->u:Z

    if-nez v8, :cond_3

    .line 312
    const/4 v8, 0x0

    const/16 v9, 0x2000

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 313
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 341
    :cond_3
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 342
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    .line 343
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 344
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 345
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 316
    :cond_4
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p2, v0, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 317
    add-int/2addr v1, v7

    .line 322
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v8

    if-nez v8, :cond_5

    .line 323
    new-instance v8, Landroid/accounts/NetworkErrorException;

    const-string v9, "Network blocked."

    invoke-direct {v8, v9}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 342
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    .line 343
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 344
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 345
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 346
    throw v8

    .line 326
    :cond_5
    :try_start_2
    iget-wide v8, p0, Lcom/jiliguala/niuwa/logic/download/c;->q:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 327
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_6

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 329
    const-wide/16 v8, 0x7530

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    .line 330
    new-instance v8, Lorg/apache/http/conn/ConnectTimeoutException;

    const-string v9, "connection time out."

    invoke-direct {v8, v9}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 333
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    goto :goto_1

    .line 336
    :cond_7
    const-wide/16 v4, 0x0

    .line 337
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 139
    const-wide/16 v2, -0x1

    .line 141
    .local v2, "result":J
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/download/c;->k()J
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 155
    :cond_0
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->g:Ljava/io/File;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 160
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/download/b;->a()Lcom/jiliguala/niuwa/logic/download/b;

    move-result-object v1

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/download/b;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/accounts/NetworkErrorException;
    :try_start_1
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Landroid/accounts/NetworkErrorException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException;
    :try_start_2
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Lcom/jiliguala/niuwa/logic/download/error/FileAlreadyExistException;
    :catch_2
    move-exception v0

    .line 147
    .local v0, "e":Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;
    :try_start_3
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;
    :catch_3
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_2

    .line 152
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/download/c;->v:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 154
    :cond_2
    throw v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;

    invoke-interface {v0, p0, v1}, Lcom/jiliguala/niuwa/logic/download/a;->a(Lcom/jiliguala/niuwa/logic/download/c;Ljava/lang/Throwable;)V

    .line 201
    :cond_2
    :goto_0
    return-void

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/logic/download/a;->b(Lcom/jiliguala/niuwa/logic/download/c;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/download/c;->l:Ljava/lang/String;

    .line 86
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x1

    .line 168
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 169
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    .line 170
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/c;->t:Ljava/lang/Throwable;

    invoke-interface {v0, p0, v1}, Lcom/jiliguala/niuwa/logic/download/a;->a(Lcom/jiliguala/niuwa/logic/download/c;Ljava/lang/Throwable;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/download/c;->r:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->s:J

    .line 178
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->m:J

    .line 179
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->m:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/download/c;->n:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->p:J

    .line 180
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->m:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/download/c;->s:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->q:J

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/logic/download/a;->a(Lcom/jiliguala/niuwa/logic/download/c;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->u:Z

    return v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/download/c;->a([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->p:J

    return-wide v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->m:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/download/c;->n:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->o:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->q:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->s:J

    return-wide v0
.end method

.method public j()Lcom/jiliguala/niuwa/logic/download/a;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    return-object v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->u:Z

    .line 208
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/download/c;->a(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->r:J

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/c;->j:Lcom/jiliguala/niuwa/logic/download/a;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/logic/download/a;->c(Lcom/jiliguala/niuwa/logic/download/c;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/download/c;->a([Ljava/lang/Integer;)V

    return-void
.end method
