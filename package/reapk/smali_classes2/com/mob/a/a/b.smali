.class public final Lcom/mob/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/io/File;
    .locals 2

    .prologue
    .line 44
    const-string v0, "comm/dbs/.duid"

    invoke-static {v0}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/mob/a/a/b;)Ljava/io/File;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mob/a/a/b;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/a/a/b;Lcom/mob/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mob/a/a/b;->b(Lcom/mob/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/mob/a/b;Ljava/util/HashMap;Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/a/b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 301
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 302
    const/4 v0, -0x1

    .line 304
    :try_start_1
    invoke-virtual {v1}, Lcom/mob/tools/c/e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/c/l;->g(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v7, v0

    .line 306
    :goto_0
    :try_start_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v0, "phoneno"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "simserialno"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "adsid"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "imei"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "serialno"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "androidid"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "mac"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "model"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "factory"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "carrier"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "screensize"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, "sysver"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "plat"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v9, Lcom/mob/tools/c/g;

    invoke-direct {v9}, Lcom/mob/tools/c/g;-><init>()V

    .line 321
    invoke-virtual {v9, v8}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-direct {p0}, Lcom/mob/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/c/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 323
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "m"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v5, Lcom/mob/tools/a/n$a;

    invoke-direct {v5}, Lcom/mob/tools/a/n$a;-><init>()V

    .line 329
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/a/n$a;->a:I

    .line 330
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/a/n$a;->b:I

    .line 332
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    .line 333
    const-string v1, "http://devs.data.mob.com:80/dinfo"

    .line 334
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {v9, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 336
    if-nez v0, :cond_1

    move-object v0, v6

    .line 372
    :cond_0
    :goto_1
    return-object v0

    .line 305
    :catch_0
    move-exception v2

    move v7, v0

    goto/16 :goto_0

    .line 340
    :cond_1
    const-string v1, "duid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    move-object v0, v6

    .line 342
    goto :goto_1

    .line 345
    :cond_3
    const-string v1, "duid"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "carrier"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "deviceInfo"

    invoke-virtual {p2, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 349
    if-eqz p3, :cond_0

    .line 352
    :try_start_3
    invoke-direct {p0}, Lcom/mob/a/a/b;->a()Ljava/io/File;

    move-result-object v1

    .line 353
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 354
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    :try_start_4
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    if-eqz v2, :cond_0

    .line 361
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 362
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 363
    :catch_1
    move-exception v1

    goto :goto_1

    .line 356
    :catch_2
    move-exception v1

    move-object v2, v6

    .line 357
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 359
    if-eqz v2, :cond_0

    .line 361
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 362
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 363
    :catch_3
    move-exception v1

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_4

    .line 361
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 362
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 363
    :cond_4
    :goto_4
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 369
    :catch_4
    move-exception v0

    .line 370
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 372
    goto :goto_1

    .line 363
    :catch_5
    move-exception v1

    goto :goto_4

    .line 359
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 356
    :catch_6
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/mob/a/a/b;Z)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mob/a/a/b;->b(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/mob/a/b;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/a/b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 378
    :try_start_0
    const-string v0, "duid"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v7

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "product"

    invoke-interface {p1}, Lcom/mob/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "appkey"

    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "duid"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "apppkg"

    invoke-virtual {v7}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "appver"

    invoke-virtual {v7}, Lcom/mob/tools/c/e;->I()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "sdkver"

    invoke-interface {p1}, Lcom/mob/a/b;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "network"

    invoke-virtual {v7}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v5, Lcom/mob/tools/a/n$a;

    invoke-direct {v5}, Lcom/mob/tools/a/n$a;-><init>()V

    .line 391
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/a/n$a;->a:I

    .line 392
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/a/n$a;->b:I

    .line 394
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    .line 395
    const-string v1, "http://devs.data.mob.com:80/dsign"

    .line 396
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 398
    const-string v1, "true"

    const-string v2, "reup"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/mob/a/a/b;->a(Lcom/mob/a/b;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_0

    .line 405
    :cond_0
    const-string v1, "200"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const-string v0, "appInfo"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 407
    invoke-virtual {v7}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 409
    invoke-interface {p1}, Lcom/mob/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 413
    :try_start_1
    invoke-direct {p0}, Lcom/mob/a/a/b;->a()Ljava/io/File;

    move-result-object v0

    .line 414
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 415
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 420
    if-eqz v1, :cond_1

    .line 422
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 423
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 418
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 420
    if-eqz v1, :cond_1

    .line 422
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 423
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 424
    :catch_1
    move-exception v0

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_2

    .line 422
    :try_start_6
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 423
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 424
    :cond_2
    :goto_3
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 428
    :catch_2
    move-exception v0

    .line 429
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 424
    :catch_3
    move-exception v1

    goto :goto_3

    .line 420
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 417
    :catch_4
    move-exception v0

    goto :goto_1

    .line 424
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private final a(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 137
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v2

    .line 142
    const-string v1, "adsid"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    const/4 v1, 0x0

    .line 145
    :try_start_0
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->Q()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    if-nez v1, :cond_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :cond_3
    const-string v1, "phoneno"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->w()Ljava/lang/String;

    move-result-object v3

    .line 155
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "simserialno"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->v()Ljava/lang/String;

    move-result-object v3

    .line 161
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "imei"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->h()Ljava/lang/String;

    move-result-object v3

    .line 167
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "serialno"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 172
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->i()Ljava/lang/String;

    move-result-object v3

    .line 173
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "mac"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v3

    .line 179
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-string v1, "model"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v3

    .line 185
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "factory"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v3

    .line 191
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "androidid"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 196
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->P()Ljava/lang/String;

    move-result-object v3

    .line 197
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "sysver"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->m()Ljava/lang/String;

    move-result-object v2

    .line 203
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v4

    .line 147
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "k."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, "co"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ".s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, "dk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final b(Lcom/mob/a/b;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 57
    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/mob/a/a/b;->a()Ljava/io/File;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    if-eqz v1, :cond_0

    .line 72
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 80
    :cond_0
    :goto_0
    if-nez v0, :cond_a

    .line 81
    invoke-direct {p0}, Lcom/mob/a/a/b;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 82
    if-nez v0, :cond_a

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mob/a/a/b;->b(Z)Ljava/util/HashMap;

    move-result-object v0

    move-object v4, v0

    .line 89
    :goto_1
    if-eqz v4, :cond_9

    .line 90
    const-string v0, "duid"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    if-eqz v0, :cond_4

    .line 94
    :try_start_4
    const-string v1, "deviceInfo"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 95
    invoke-direct {p0, v1}, Lcom/mob/a/a/b;->a(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 96
    const/4 v1, 0x1

    invoke-direct {p0, p1, v4, v1}, Lcom/mob/a/a/b;->a(Lcom/mob/a/b;Ljava/util/HashMap;Z)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v3

    .line 97
    if-eqz v3, :cond_8

    .line 103
    :goto_2
    :try_start_5
    const-string v0, "appInfo"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 104
    if-nez v0, :cond_7

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v1, "appInfo"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v0

    .line 111
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v2

    .line 115
    :goto_4
    :try_start_7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 116
    if-nez v0, :cond_1

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    invoke-interface {p1}, Lcom/mob/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 124
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/mob/a/a/b;->a(Lcom/mob/a/b;Ljava/util/HashMap;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    move-object v0, v3

    .line 133
    :cond_4
    :goto_5
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 68
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 70
    if-eqz v1, :cond_6

    .line 72
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v2

    .line 73
    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    goto/16 :goto_0

    .line 70
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_5

    .line 72
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 73
    :cond_5
    :goto_8
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 77
    :catch_2
    move-exception v0

    .line 78
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    :cond_6
    move-object v0, v2

    goto/16 :goto_0

    .line 112
    :catch_3
    move-exception v0

    .line 113
    :try_start_c
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    .line 127
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .line 128
    :goto_9
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 73
    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto :goto_8

    .line 127
    :catch_7
    move-exception v1

    goto :goto_9

    .line 70
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 67
    :catch_8
    move-exception v0

    goto :goto_6

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    move-object v3, v0

    goto/16 :goto_2

    :cond_9
    move-object v0, v2

    goto :goto_5

    :cond_a
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private b(Z)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 480
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v5

    .line 482
    :try_start_0
    invoke-virtual {v5}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 483
    if-nez v0, :cond_2

    const-string v0, ""

    move-object v3, v0

    .line 484
    :goto_0
    invoke-virtual {v5}, Lcom/mob/tools/c/e;->h()Ljava/lang/String;

    move-result-object v0

    .line 485
    if-nez v0, :cond_3

    const-string v0, ""

    move-object v2, v0

    .line 486
    :goto_1
    invoke-virtual {v5}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 487
    if-nez v0, :cond_4

    const-string v0, ""

    move-object v1, v0

    .line 488
    :goto_2
    invoke-virtual {v5}, Lcom/mob/tools/c/e;->i()Ljava/lang/String;

    move-result-object v0

    .line 489
    if-nez v0, :cond_0

    const-string v0, ""

    .line 490
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 491
    const-string v1, "duid"

    invoke-static {v0}, Lcom/mob/tools/c/d;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_3
    const/4 v2, 0x0

    .line 498
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 499
    const-string v1, "phoneno"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v1, "simserialno"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v1, "adsid"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v1, "imei"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v1, "serialno"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v1, "androidid"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "mac"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v1, "model"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v1, "factory"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v1, "carrier"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v1, "screensize"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v1, "sysver"

    invoke-virtual {v5}, Lcom/mob/tools/c/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v1, "plat"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v1, "deviceInfo"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    if-eqz p1, :cond_6

    .line 515
    invoke-direct {p0}, Lcom/mob/a/a/b;->a()Ljava/io/File;

    move-result-object v0

    .line 516
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 517
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    :goto_4
    if-eqz v1, :cond_1

    .line 525
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 526
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 531
    :cond_1
    :goto_5
    return-object v4

    :cond_2
    move-object v3, v0

    .line 483
    goto/16 :goto_0

    :cond_3
    move-object v2, v0

    .line 485
    goto/16 :goto_1

    :cond_4
    move-object v1, v0

    .line 487
    goto/16 :goto_2

    .line 492
    :catch_0
    move-exception v0

    .line 493
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 520
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 521
    :goto_6
    :try_start_4
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 523
    if-eqz v1, :cond_1

    .line 525
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 526
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 527
    :catch_2
    move-exception v0

    goto :goto_5

    .line 523
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v2, :cond_5

    .line 525
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 526
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 527
    :cond_5
    :goto_8
    throw v0

    :catch_3
    move-exception v1

    goto :goto_8

    .line 523
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    .line 520
    :catch_4
    move-exception v0

    goto :goto_6

    .line 527
    :catch_5
    move-exception v0

    goto :goto_5

    :cond_6
    move-object v1, v2

    goto :goto_4
.end method

.method private final c()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 225
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 226
    const/4 v0, -0x1

    .line 228
    :try_start_1
    invoke-virtual {v1}, Lcom/mob/tools/c/e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/c/l;->g(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v7, v0

    .line 230
    :goto_0
    :try_start_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 231
    const-string v0, "phoneno"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "simserialno"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "adsid"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "imei"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "serialno"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "androidid"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "mac"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "model"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "factory"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "carrier"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "screensize"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "sysver"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "plat"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v9, Lcom/mob/tools/c/g;

    invoke-direct {v9}, Lcom/mob/tools/c/g;-><init>()V

    .line 245
    invoke-virtual {v9, v8}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-direct {p0}, Lcom/mob/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/c/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 247
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v3, "m"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v5, Lcom/mob/tools/a/n$a;

    invoke-direct {v5}, Lcom/mob/tools/a/n$a;-><init>()V

    .line 253
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/a/n$a;->a:I

    .line 254
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/a/n$a;->b:I

    .line 256
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    .line 257
    const-string v1, "http://devs.data.mob.com:80/dinfo"

    .line 258
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v9, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    move-object v0, v6

    .line 295
    :goto_1
    return-object v0

    .line 229
    :catch_0
    move-exception v2

    move v7, v0

    goto/16 :goto_0

    .line 264
    :cond_0
    const-string v1, "duid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    move-object v0, v6

    .line 266
    goto :goto_1

    .line 270
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 272
    :try_start_3
    const-string v2, "duid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "carrier"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "deviceInfo"

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-direct {p0}, Lcom/mob/a/a/b;->a()Ljava/io/File;

    move-result-object v0

    .line 277
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 278
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 283
    if-eqz v2, :cond_3

    .line 285
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 286
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_2
    move-object v0, v1

    .line 291
    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    move-object v2, v6

    .line 281
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 283
    if-eqz v2, :cond_3

    .line 285
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 286
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 287
    :catch_2
    move-exception v0

    goto :goto_2

    .line 283
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_4
    if-eqz v2, :cond_4

    .line 285
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 286
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 287
    :cond_4
    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 292
    :catch_3
    move-exception v0

    .line 293
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 295
    goto :goto_1

    .line 287
    :catch_4
    move-exception v1

    goto :goto_5

    .line 283
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 280
    :catch_5
    move-exception v0

    goto :goto_3

    .line 287
    :catch_6
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/mob/a/b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string v1, "comm/locks/.globalLock"

    invoke-static {v1}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/mob/a/a/b$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/mob/a/a/b$1;-><init>(Lcom/mob/a/a/b;[Ljava/lang/String;Lcom/mob/a/b;)V

    invoke-static {v1, v2}, Lcom/mob/a/h;->a(Ljava/io/File;Lcom/mob/a/a;)V

    .line 40
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 436
    const-string v1, "comm/locks/.globalLock"

    invoke-static {v1}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 437
    new-instance v2, Lcom/mob/a/a/b$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/mob/a/a/b$2;-><init>(Lcom/mob/a/a/b;Z[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/mob/a/h;->a(Ljava/io/File;Lcom/mob/a/a;)V

    .line 474
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
