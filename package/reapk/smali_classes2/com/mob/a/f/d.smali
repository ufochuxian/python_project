.class public Lcom/mob/a/f/d;
.super Lcom/mob/tools/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/mob/a/f/d;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mob/tools/a/n;

.field private e:Lcom/mob/a/f/e;

.field private f:Ljava/io/File;

.field private g:Lcom/mob/tools/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "http://api.exc.mob.com:80"

    sput-object v0, Lcom/mob/a/f/d;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mob/tools/d;-><init>()V

    .line 50
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    iput-object v0, p0, Lcom/mob/a/f/d;->d:Lcom/mob/tools/a/n;

    .line 51
    invoke-static {}, Lcom/mob/a/f/e;->a()Lcom/mob/a/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/a/f/d;->c:Ljava/util/HashMap;

    .line 53
    new-instance v0, Lcom/mob/tools/c/f;

    invoke-direct {v0}, Lcom/mob/tools/c/f;-><init>()V

    iput-object v0, p0, Lcom/mob/a/f/d;->g:Lcom/mob/tools/c/f;

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/a/f/d;->f:Ljava/io/File;

    .line 55
    iget-object v0, p0, Lcom/mob/a/f/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/mob/a/f/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/log/d;->setContext(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lcom/mob/a/f/d;->startThread()V

    .line 65
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/mob/a/f/d;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/mob/a/f/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a/f/d;->a:Lcom/mob/a/f/d;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/mob/a/f/d;

    invoke-direct {v0}, Lcom/mob/a/f/d;-><init>()V

    sput-object v0, Lcom/mob/a/f/d;->a:Lcom/mob/a/f/d;

    .line 71
    :cond_0
    sget-object v0, Lcom/mob/a/f/d;->a:Lcom/mob/a/f/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x0

    .line 380
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 381
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 386
    new-array v3, v7, [B

    .line 387
    :goto_0
    invoke-virtual {v0, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 388
    invoke-virtual {v2, v3, v6, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 394
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 396
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 397
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 398
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 400
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-virtual {v0}, Lcom/mob/a/f/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "network is disconnected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->i(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 339
    :cond_2
    :try_start_1
    invoke-static {p3}, Lcom/mob/a/f/g;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 341
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 343
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/a/f/f;

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/mob/a/f/d;->c(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 345
    const-string v4, "errmsg"

    iget-object v5, v0, Lcom/mob/a/f/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v4, Lcom/mob/tools/c/g;

    invoke-direct {v4}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mob/a/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/mob/a/f/d;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 347
    if-eqz v3, :cond_3

    .line 349
    iget-object v0, v0, Lcom/mob/a/f/f;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/mob/a/f/g;->a(Ljava/util/ArrayList;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mob/a/f/d;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "network is disconnected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->i(Ljava/lang/Throwable;)I

    .line 428
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    .line 416
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "m"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v5, Lcom/mob/tools/a/n$a;

    invoke-direct {v5}, Lcom/mob/tools/a/n$a;-><init>()V

    .line 421
    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/n$a;->a:I

    .line 422
    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/n$a;->b:I

    .line 425
    iget-object v0, p0, Lcom/mob/a/f/d;->d:Lcom/mob/tools/a/n;

    invoke-direct {p0}, Lcom/mob/a/f/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/a/f/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errconf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "key"

    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "sdk"

    invoke-direct {v1, v3, p2}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "apppkg"

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "appver"

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->I()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "sdkver"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "plat"

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :try_start_0
    new-instance v5, Lcom/mob/tools/a/n$a;

    invoke-direct {v5}, Lcom/mob/tools/a/n$a;-><init>()V

    .line 245
    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/n$a;->a:I

    .line 246
    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/n$a;->b:I

    .line 247
    iget-object v0, p0, Lcom/mob/a/f/d;->d:Lcom/mob/tools/a/n;

    invoke-direct {p0}, Lcom/mob/a/f/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "get server config == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 251
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 253
    const-string v1, "-200"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v1, "error log server config response fail !!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 264
    check-cast v0, Ljava/util/HashMap;

    .line 266
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    :try_start_1
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/l;->h(Ljava/lang/String;)J

    move-result-wide v2

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 270
    iget-object v1, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-virtual {v1, v2, v3}, Lcom/mob/a/f/e;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    :cond_2
    :goto_1
    :try_start_2
    const-string v1, "1"

    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    iget-object v1, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mob/a/f/e;->a(Z)V

    .line 284
    :goto_2
    const-string v1, "upconf"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_3

    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 287
    check-cast v1, Ljava/util/HashMap;

    .line 288
    const-string v2, "crash"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v3, "sdkerr"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 290
    const-string v4, "apperr"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v4, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mob/a/f/e;->a(I)V

    .line 293
    iget-object v2, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mob/a/f/e;->b(I)V

    .line 294
    iget-object v2, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mob/a/f/e;->c(I)V

    .line 298
    :cond_3
    const-string v1, "requesthost"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "requestport"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 299
    const-string v1, "requesthost"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    const-string v2, "requestport"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mob/a/f/d;->b:Ljava/lang/String;

    .line 307
    :cond_4
    const-string v1, "filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 310
    check-cast v0, Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 312
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    const-string v2, "fakelist"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    new-instance v2, Lcom/mob/tools/c/g;

    invoke-direct {v2}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/a/f/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 271
    :catch_1
    move-exception v1

    .line 272
    :try_start_3
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 280
    :cond_5
    iget-object v1, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mob/a/f/e;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 137
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-direct {p0, v1, v0}, Lcom/mob/a/f/d;->b(ILjava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/mob/a/f/d;->a(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/a/f/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errlog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v1

    .line 362
    const-string v2, "key"

    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v2, "plat"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->C()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "sdk"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "sdkver"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v2, "appname"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v2, "apppkg"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v2, "appver"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->I()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v2, "deviceid"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v2, "model"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "mac"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v2, "udid"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v2, "sysver"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->l()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v2, "networktype"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 12

    .prologue
    .line 149
    :try_start_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 151
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    .line 152
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 153
    const/4 v2, 0x1

    .line 154
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_2

    .line 155
    const/4 v2, 0x2

    move v3, v2

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-virtual {v2}, Lcom/mob/a/f/e;->g()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 163
    new-instance v5, Lcom/mob/tools/c/g;

    invoke-direct {v5}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v5, v2}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 165
    const-string v5, "fakelist"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 166
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    :cond_1
    :goto_1
    return-void

    .line 156
    :cond_2
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    .line 157
    const/4 v2, 0x1

    move v3, v2

    goto :goto_0

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-virtual {v2}, Lcom/mob/a/f/e;->d()I

    move-result v2

    .line 176
    iget-object v5, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-virtual {v5}, Lcom/mob/a/f/e;->e()I

    move-result v5

    .line 177
    iget-object v6, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-virtual {v6}, Lcom/mob/a/f/e;->f()I

    move-result v6

    .line 178
    const/4 v7, 0x3

    if-ne v7, v3, :cond_4

    const/4 v7, -0x1

    if-eq v7, v6, :cond_1

    .line 180
    :cond_4
    const/4 v7, 0x1

    if-ne v7, v3, :cond_5

    const/4 v7, -0x1

    if-eq v7, v2, :cond_1

    .line 184
    :cond_5
    const/4 v7, 0x2

    if-ne v7, v3, :cond_6

    const/4 v7, -0x1

    if-eq v7, v5, :cond_1

    .line 189
    :cond_6
    invoke-static {v0}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 191
    :try_start_1
    iget-object v8, p0, Lcom/mob/a/f/d;->g:Lcom/mob/tools/c/f;

    iget-object v9, p0, Lcom/mob/a/f/d;->f:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mob/tools/c/f;->a(Ljava/lang/String;)V

    .line 192
    iget-object v8, p0, Lcom/mob/a/f/d;->g:Lcom/mob/tools/c/f;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/mob/tools/c/f;->a(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/mob/a/f/d;->e:Lcom/mob/a/f/e;

    invoke-virtual {v10}, Lcom/mob/a/f/e;->b()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 195
    invoke-static {v8, v9, v0, v3, v7}, Lcom/mob/a/f/g;->a(JLjava/lang/String;ILjava/lang/String;)J

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/mob/a/f/d;->g:Lcom/mob/tools/c/f;

    invoke-virtual {v0}, Lcom/mob/tools/c/f;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :try_start_2
    iget-object v0, p0, Lcom/mob/a/f/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v0, 0x3

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    if-ne v0, v6, :cond_a

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {p0, v4, v1, v0}, Lcom/mob/a/f/d;->a(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 200
    :try_start_3
    iget-object v0, p0, Lcom/mob/a/f/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mob/a/f/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 202
    iget-object v2, p0, Lcom/mob/a/f/d;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v2, 0x3

    if-ge v0, v2, :cond_9

    .line 204
    invoke-direct {p0, p1}, Lcom/mob/a/f/d;->a(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 200
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 206
    :cond_9
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 215
    :cond_a
    const/4 v0, 0x1

    if-ne v0, v3, :cond_b

    const/4 v0, 0x1

    if-ne v0, v2, :cond_b

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {p0, v4, v1, v0}, Lcom/mob/a/f/d;->a(ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :cond_b
    const/4 v0, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    if-ne v0, v5, :cond_1

    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {p0, v4, v1, v0}, Lcom/mob/a/f/d;->a(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_c
    move v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 96
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 97
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 98
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/mob/a/f/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 81
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 83
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/mob/a/f/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method public b(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/a/f/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/mob/a/f/d;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mob/a/f/d;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mob/a/f/d;->c(Landroid/os/Message;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
