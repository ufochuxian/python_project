.class Lcom/mob/tools/gui/a$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/mob/tools/gui/a$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/gui/a$1;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/mob/tools/gui/a$f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$f;Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$c;
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$f;
    .param p1, "x1"    # Lcom/mob/tools/gui/a$c;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    return-object p1
.end method

.method private a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v4, 0x0

    .line 243
    .local v4, "req":Lcom/mob/tools/gui/a$c;
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 244
    :try_start_0
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 245
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mob/tools/gui/a$c;

    move-object v4, v0

    .line 247
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    if-eqz v4, :cond_7

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->d(Lcom/mob/tools/gui/a$c;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v5

    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/gui/a;->d(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 253
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 255
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 256
    iput-object v4, p0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    .line 257
    iget-object v5, p0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v5, p0}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Lcom/mob/tools/gui/a$f;)Lcom/mob/tools/gui/a$f;

    .line 258
    invoke-static {v4, v2}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Landroid/graphics/Bitmap;)V

    .line 282
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 247
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 253
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object v2, v5

    goto :goto_0

    .line 260
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_3
    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->e(Lcom/mob/tools/gui/a$c;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/mob/tools/gui/a;->g()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/a;->g()Ljava/io/File;

    move-result-object v6

    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 261
    invoke-direct {p0, v4}, Lcom/mob/tools/gui/a$f;->a(Lcom/mob/tools/gui/a$c;)V

    goto :goto_1

    .line 264
    :cond_4
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 265
    :try_start_2
    invoke-static {}, Lcom/mob/tools/gui/a;->h()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v7, 0x64

    if-le v5, v7, :cond_6

    .line 266
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 267
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 268
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 270
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5

    .line 273
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 270
    :cond_5
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 271
    :try_start_6
    invoke-static {}, Lcom/mob/tools/gui/a;->h()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    :cond_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 274
    invoke-static {}, Lcom/mob/tools/gui/a;->h()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_7
    const-wide/16 v6, 0x1e

    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private a(Lcom/mob/tools/gui/a$c;)V
    .locals 17
    .param p1, "req"    # Lcom/mob/tools/gui/a$c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Lcom/mob/tools/gui/a$f;)Lcom/mob/tools/gui/a$f;

    .line 328
    const/4 v8, 0x0

    .line 329
    .local v8, "bm":Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 330
    .local v13, "md5":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/a;->g()Ljava/io/File;

    move-result-object v2

    invoke-direct {v9, v2, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v9, "cacheFile":Ljava/io/File;
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->e(Lcom/mob/tools/gui/a$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->f(Lcom/mob/tools/gui/a$c;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 334
    .local v14, "lastModified":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 335
    .local v10, "currentTime":J
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->f(Lcom/mob/tools/gui/a$c;)J

    move-result-wide v2

    add-long/2addr v2, v14

    cmp-long v2, v2, v10

    if-gez v2, :cond_0

    .line 337
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 340
    .end local v10    # "currentTime":J
    .end local v14    # "lastModified":J
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->e(Lcom/mob/tools/gui/a$c;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/mob/tools/gui/a;->g()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/mob/tools/gui/a$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/c/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 347
    :goto_0
    if-eqz v8, :cond_4

    .line 348
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->d(Lcom/mob/tools/gui/a$c;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/gui/a;->d(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Landroid/graphics/Bitmap;)V

    .line 355
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    .line 400
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v13    # "md5":Ljava/lang/String;
    :goto_2
    return-void

    .line 344
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "cacheFile":Ljava/io/File;
    .restart local v13    # "md5":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/a;->g()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v3

    iget v3, v3, Lcom/mob/tools/gui/a$b;->a:I

    .line 345
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v4

    iget v4, v4, Lcom/mob/tools/gui/a$b;->b:I

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v5

    iget v5, v5, Lcom/mob/tools/gui/a$b;->d:I

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v6

    iget-wide v6, v6, Lcom/mob/tools/gui/a$b;->c:J

    .line 344
    invoke-static/range {v2 .. v7}, Lcom/mob/tools/c/c;->a(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 353
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->g(Lcom/mob/tools/gui/a$c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 395
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v13    # "md5":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 396
    .local v16, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 397
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->g(Lcom/mob/tools/gui/a$c;)V

    .line 398
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    goto :goto_2

    .line 358
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "cacheFile":Ljava/io/File;
    .restart local v13    # "md5":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v12, Lcom/mob/tools/a/n;

    invoke-direct {v12}, Lcom/mob/tools/a/n;-><init>()V

    .line 359
    .local v12, "helper":Lcom/mob/tools/a/n;
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/gui/a$f$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v13, v1}, Lcom/mob/tools/gui/a$f$1;-><init>(Lcom/mob/tools/gui/a$f;Ljava/lang/String;Lcom/mob/tools/gui/a$c;)V

    .line 393
    invoke-static {}, Lcom/mob/tools/gui/a;->i()Lcom/mob/tools/a/n$a;

    move-result-object v4

    .line 359
    invoke-virtual {v12, v2, v3, v4}, Lcom/mob/tools/a/n;->rawGet(Ljava/lang/String;Lcom/mob/tools/a/q;Lcom/mob/tools/a/n$a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$f;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$f;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/gui/a$f;->a(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 408
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 411
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 412
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x100

    :try_start_1
    new-array v4, v5, [B

    .line 414
    .local v4, "tmp":[B
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 415
    .local v2, "len":I
    :goto_0
    if-lez v2, :cond_2

    .line 416
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 417
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 426
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 427
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 431
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "len":I
    .end local v4    # "tmp":[B
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 428
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "len":I
    .restart local v4    # "tmp":[B
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 430
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 420
    .end local v2    # "len":I
    .end local v4    # "tmp":[B
    :catch_1
    move-exception v3

    .line 421
    .local v3, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 422
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 427
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 428
    :catch_2
    move-exception v5

    goto :goto_1

    .line 425
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 426
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 427
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 429
    :goto_4
    throw v5

    .line 428
    :catch_3
    move-exception v6

    goto :goto_4

    .line 425
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 420
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$f;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$f;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/mob/tools/gui/a$f;->a:Z

    return p1
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v4, 0x0

    .line 288
    .local v4, "req":Lcom/mob/tools/gui/a$c;
    invoke-static {}, Lcom/mob/tools/gui/a;->h()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 289
    :try_start_0
    invoke-static {}, Lcom/mob/tools/gui/a;->h()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 290
    invoke-static {}, Lcom/mob/tools/gui/a;->h()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mob/tools/gui/a$c;

    move-object v4, v0

    .line 292
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-nez v4, :cond_2

    .line 296
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 297
    :try_start_1
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 298
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mob/tools/gui/a$c;

    move-object v4, v0

    .line 300
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    :cond_2
    if-eqz v4, :cond_6

    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->d(Lcom/mob/tools/gui/a$c;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 306
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v5

    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/gui/a;->d(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 307
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez v3, :cond_4

    const/4 v2, 0x0

    .line 309
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 310
    iput-object v4, p0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    .line 311
    iget-object v5, p0, Lcom/mob/tools/gui/a$f;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v5, p0}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Lcom/mob/tools/gui/a$f;)Lcom/mob/tools/gui/a$f;

    .line 312
    invoke-static {v4, v2}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Landroid/graphics/Bitmap;)V

    .line 321
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 292
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 300
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 307
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_4
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object v2, v5

    goto :goto_0

    .line 314
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_5
    invoke-direct {p0, v4}, Lcom/mob/tools/gui/a$f;->a(Lcom/mob/tools/gui/a$c;)V

    goto :goto_1

    .line 318
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_6
    const-wide/16 v6, 0x1e

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 435
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 227
    :goto_0
    invoke-static {}, Lcom/mob/tools/gui/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :try_start_0
    iget-boolean v1, p0, Lcom/mob/tools/gui/a$f;->a:Z

    if-eqz v1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/mob/tools/gui/a$f;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mob/tools/gui/a$f;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method
