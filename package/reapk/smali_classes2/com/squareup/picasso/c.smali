.class Lcom/squareup/picasso/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final s:Ljava/lang/Object;

.field private static final t:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final v:Lcom/squareup/picasso/x;


# instance fields
.field final a:I

.field final b:Lcom/squareup/picasso/Picasso;

.field final c:Lcom/squareup/picasso/i;

.field final d:Lcom/squareup/picasso/d;

.field final e:Lcom/squareup/picasso/z;

.field final f:Ljava/lang/String;

.field final g:Lcom/squareup/picasso/v;

.field final h:Z

.field final i:Lcom/squareup/picasso/x;

.field j:Lcom/squareup/picasso/a;

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/graphics/Bitmap;

.field m:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field n:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field o:Ljava/lang/Exception;

.field p:I

.field q:I

.field r:Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->s:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/squareup/picasso/c$1;

    invoke-direct {v0}, Lcom/squareup/picasso/c$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->t:Ljava/lang/ThreadLocal;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v0, Lcom/squareup/picasso/c$2;

    invoke-direct {v0}, Lcom/squareup/picasso/c$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->v:Lcom/squareup/picasso/x;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;Lcom/squareup/picasso/a;Lcom/squareup/picasso/x;)V
    .locals 1
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "dispatcher"    # Lcom/squareup/picasso/i;
    .param p3, "cache"    # Lcom/squareup/picasso/d;
    .param p4, "stats"    # Lcom/squareup/picasso/z;
    .param p5, "action"    # Lcom/squareup/picasso/a;
    .param p6, "requestHandler"    # Lcom/squareup/picasso/x;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/squareup/picasso/c;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/c;->a:I

    .line 90
    iput-object p1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 91
    iput-object p2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    .line 92
    iput-object p3, p0, Lcom/squareup/picasso/c;->d:Lcom/squareup/picasso/d;

    .line 93
    iput-object p4, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/z;

    .line 94
    iput-object p5, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    .line 95
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    .line 96
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->c()Lcom/squareup/picasso/v;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    .line 97
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->i()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/c;->r:Lcom/squareup/picasso/Picasso$Priority;

    .line 98
    iget-boolean v0, p5, Lcom/squareup/picasso/a;->d:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/c;->h:Z

    .line 99
    iput-object p6, p0, Lcom/squareup/picasso/c;->i:Lcom/squareup/picasso/x;

    .line 100
    invoke-virtual {p6}, Lcom/squareup/picasso/x;->a()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/c;->q:I

    .line 101
    return-void
.end method

.method static a(Lcom/squareup/picasso/v;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "data"    # Lcom/squareup/picasso/v;
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "exifRotation"    # I

    .prologue
    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 424
    .local v11, "inWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 426
    .local v10, "inHeight":I
    const/4 v3, 0x0

    .line 427
    .local v3, "drawX":I
    const/4 v4, 0x0

    .line 428
    .local v4, "drawY":I
    move v5, v11

    .line 429
    .local v5, "drawWidth":I
    move v6, v10

    .line 431
    .local v6, "drawHeight":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 433
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/v;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/v;->h:I

    move/from16 v19, v0

    .line 435
    .local v19, "targetWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/v;->i:I

    move/from16 v17, v0

    .line 437
    .local v17, "targetHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/v;->l:F

    move/from16 v18, v0

    .line 438
    .local v18, "targetRotation":F
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/v;->o:Z

    if-eqz v2, :cond_4

    .line 440
    move-object/from16 v0, p0

    iget v2, v0, Lcom/squareup/picasso/v;->m:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/squareup/picasso/v;->n:F

    move/from16 v0, v18

    invoke-virtual {v7, v0, v2, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 446
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/v;->j:Z

    if-eqz v2, :cond_6

    .line 447
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v8, v11

    div-float v20, v2, v8

    .line 448
    .local v20, "widthRatio":F
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v8, v10

    div-float v9, v2, v8

    .line 450
    .local v9, "heightRatio":F
    cmpl-float v2, v20, v9

    if-lez v2, :cond_5

    .line 451
    move/from16 v14, v20

    .line 452
    .local v14, "scale":F
    int-to-float v2, v10

    div-float v8, v9, v20

    mul-float/2addr v2, v8

    float-to-double v0, v2

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v13, v0

    .line 453
    .local v13, "newSize":I
    sub-int v2, v10, v13

    div-int/lit8 v4, v2, 0x2

    .line 454
    move v6, v13

    .line 461
    :goto_1
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 480
    .end local v9    # "heightRatio":F
    .end local v13    # "newSize":I
    .end local v14    # "scale":F
    .end local v17    # "targetHeight":I
    .end local v18    # "targetRotation":F
    .end local v19    # "targetWidth":I
    .end local v20    # "widthRatio":F
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 481
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 484
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v2, p1

    .line 485
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 486
    .local v12, "newResult":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    if-eq v12, v0, :cond_3

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 488
    move-object/from16 p1, v12

    .line 491
    :cond_3
    return-object p1

    .line 442
    .end local v12    # "newResult":Landroid/graphics/Bitmap;
    .restart local v17    # "targetHeight":I
    .restart local v18    # "targetRotation":F
    .restart local v19    # "targetWidth":I
    :cond_4
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 456
    .restart local v9    # "heightRatio":F
    .restart local v20    # "widthRatio":F
    :cond_5
    move v14, v9

    .line 457
    .restart local v14    # "scale":F
    int-to-float v2, v11

    div-float v8, v20, v9

    mul-float/2addr v2, v8

    float-to-double v0, v2

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v13, v0

    .line 458
    .restart local v13    # "newSize":I
    sub-int v2, v11, v13

    div-int/lit8 v3, v2, 0x2

    .line 459
    move v5, v13

    goto :goto_1

    .line 462
    .end local v9    # "heightRatio":F
    .end local v13    # "newSize":I
    .end local v14    # "scale":F
    .end local v20    # "widthRatio":F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/v;->k:Z

    if-eqz v2, :cond_8

    .line 463
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v8, v11

    div-float v20, v2, v8

    .line 464
    .restart local v20    # "widthRatio":F
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v8, v10

    div-float v9, v2, v8

    .line 465
    .restart local v9    # "heightRatio":F
    cmpg-float v2, v20, v9

    if-gez v2, :cond_7

    move/from16 v14, v20

    .line 466
    .restart local v14    # "scale":F
    :goto_3
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2

    .end local v14    # "scale":F
    :cond_7
    move v14, v9

    .line 465
    goto :goto_3

    .line 467
    .end local v9    # "heightRatio":F
    .end local v20    # "widthRatio":F
    :cond_8
    if-nez v19, :cond_9

    if-eqz v17, :cond_1

    :cond_9
    move/from16 v0, v19

    if-ne v0, v11, :cond_a

    move/from16 v0, v17

    if-eq v0, v10, :cond_1

    .line 472
    :cond_a
    if-eqz v19, :cond_b

    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v8, v11

    div-float v15, v2, v8

    .line 474
    .local v15, "sx":F
    :goto_4
    if-eqz v17, :cond_c

    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v8, v10

    div-float v16, v2, v8

    .line 476
    .local v16, "sy":F
    :goto_5
    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2

    .line 472
    .end local v15    # "sx":F
    .end local v16    # "sy":F
    :cond_b
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v8, v10

    div-float v15, v2, v8

    goto :goto_4

    .line 474
    .restart local v15    # "sx":F
    :cond_c
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v8, v11

    div-float v16, v2, v8

    goto :goto_5
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/ad;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p0, "transformations":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/ad;>;"
    const/4 v7, 0x0

    .line 361
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 362
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/picasso/ad;

    .line 365
    .local v6, "transformation":Lcom/squareup/picasso/ad;
    :try_start_0
    invoke-interface {v6, p1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 376
    .local v4, "newResult":Landroid/graphics/Bitmap;
    if-nez v4, :cond_2

    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transformation "

    .line 378
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 379
    invoke-interface {v6}, Lcom/squareup/picasso/ad;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " returned null after "

    .line 380
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 381
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " previous transformation(s).\n\nTransformation list:\n"

    .line 382
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/picasso/ad;

    .line 384
    .local v5, "t":Lcom/squareup/picasso/ad;
    invoke-interface {v5}, Lcom/squareup/picasso/ad;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "newResult":Landroid/graphics/Bitmap;
    .end local v5    # "t":Lcom/squareup/picasso/ad;
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v8, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/c$3;

    invoke-direct {v9, v6, v2}, Lcom/squareup/picasso/c$3;-><init>(Lcom/squareup/picasso/ad;Ljava/lang/RuntimeException;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 419
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "transformation":Lcom/squareup/picasso/ad;
    .end local p1    # "result":Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    return-object p1

    .line 386
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "newResult":Landroid/graphics/Bitmap;
    .restart local v6    # "transformation":Lcom/squareup/picasso/ad;
    .restart local p1    # "result":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v8, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/c$4;

    invoke-direct {v9, v0}, Lcom/squareup/picasso/c$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 391
    goto :goto_2

    .line 394
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    if-ne v4, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 395
    sget-object v8, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/c$5;

    invoke-direct {v9, v6}, Lcom/squareup/picasso/c$5;-><init>(Lcom/squareup/picasso/ad;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 402
    goto :goto_2

    .line 406
    :cond_3
    if-eq v4, p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 407
    sget-object v8, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/c$6;

    invoke-direct {v9, v6}, Lcom/squareup/picasso/c$6;-><init>(Lcom/squareup/picasso/ad;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 414
    goto :goto_2

    .line 417
    :cond_4
    move-object p1, v4

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method static a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;Lcom/squareup/picasso/a;)Lcom/squareup/picasso/c;
    .locals 20
    .param p0, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p1, "dispatcher"    # Lcom/squareup/picasso/i;
    .param p2, "cache"    # Lcom/squareup/picasso/d;
    .param p3, "stats"    # Lcom/squareup/picasso/z;
    .param p4, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 345
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/picasso/a;->c()Lcom/squareup/picasso/v;

    move-result-object v18

    .line 346
    .local v18, "request":Lcom/squareup/picasso/v;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->f()Ljava/util/List;

    move-result-object v19

    .line 350
    .local v19, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/x;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "count":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 351
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/picasso/x;

    .line 352
    .local v8, "requestHandler":Lcom/squareup/picasso/x;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/squareup/picasso/x;->a(Lcom/squareup/picasso/v;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Lcom/squareup/picasso/c;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/squareup/picasso/c;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;Lcom/squareup/picasso/a;Lcom/squareup/picasso/x;)V

    .line 357
    .end local v8    # "requestHandler":Lcom/squareup/picasso/x;
    :goto_1
    return-object v2

    .line 350
    .restart local v8    # "requestHandler":Lcom/squareup/picasso/x;
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 357
    .end local v8    # "requestHandler":Lcom/squareup/picasso/x;
    :cond_1
    new-instance v9, Lcom/squareup/picasso/c;

    sget-object v15, Lcom/squareup/picasso/c;->v:Lcom/squareup/picasso/x;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v15}, Lcom/squareup/picasso/c;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;Lcom/squareup/picasso/a;Lcom/squareup/picasso/x;)V

    move-object v2, v9

    goto :goto_1
.end method

.method static a(Lcom/squareup/picasso/v;)V
    .locals 4
    .param p0, "data"    # Lcom/squareup/picasso/v;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/squareup/picasso/v;->c()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/squareup/picasso/c;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 337
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 338
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private o()Lcom/squareup/picasso/Picasso$Priority;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 242
    sget-object v5, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 244
    .local v5, "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    iget-object v9, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v7

    .line 245
    .local v2, "hasMultiple":Z
    :goto_0
    iget-object v9, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    if-nez v9, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    move v1, v7

    .line 248
    .local v1, "hasAny":Z
    :goto_1
    if-nez v1, :cond_3

    move-object v6, v5

    .line 266
    .end local v5    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    .local v6, "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    :goto_2
    return-object v6

    .end local v1    # "hasAny":Z
    .end local v2    # "hasMultiple":Z
    .end local v6    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    .restart local v5    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    :cond_1
    move v2, v8

    .line 244
    goto :goto_0

    .restart local v2    # "hasMultiple":Z
    :cond_2
    move v1, v8

    .line 245
    goto :goto_1

    .line 252
    .restart local v1    # "hasAny":Z
    :cond_3
    iget-object v7, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    if-eqz v7, :cond_4

    .line 253
    iget-object v7, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    invoke-virtual {v7}, Lcom/squareup/picasso/a;->i()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v5

    .line 256
    :cond_4
    if-eqz v2, :cond_6

    .line 258
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_3
    if-ge v3, v4, :cond_6

    .line 259
    iget-object v7, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/picasso/a;

    invoke-virtual {v7}, Lcom/squareup/picasso/a;->i()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 260
    .local v0, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v7

    invoke-virtual {v5}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v8

    if-le v7, v8, :cond_5

    .line 261
    move-object v5, v0

    .line 258
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_6
    move-object v6, v5

    .line 266
    .end local v5    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    .restart local v6    # "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    goto :goto_2
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Lcom/squareup/picasso/c;->h:Z

    if-nez v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/squareup/picasso/c;->d:Lcom/squareup/picasso/d;

    iget-object v4, p0, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/squareup/picasso/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    iget-object v3, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/z;

    invoke-virtual {v3}, Lcom/squareup/picasso/z;->a()V

    .line 144
    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v3, p0, Lcom/squareup/picasso/c;->n:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 145
    iget-object v3, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v3, :cond_0

    .line 146
    const-string v3, "Hunter"

    const-string v4, "decoded"

    iget-object v5, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v5}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from cache"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 186
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 152
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    iget v3, p0, Lcom/squareup/picasso/c;->q:I

    if-nez v3, :cond_9

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v4, Lcom/squareup/picasso/v;->c:Z

    .line 153
    iget-object v3, p0, Lcom/squareup/picasso/c;->i:Lcom/squareup/picasso/x;

    iget-object v4, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/x;->b(Lcom/squareup/picasso/v;)Lcom/squareup/picasso/x$a;

    move-result-object v2

    .line 154
    .local v2, "result":Lcom/squareup/picasso/x$a;
    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {v2}, Lcom/squareup/picasso/x$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    invoke-virtual {v2}, Lcom/squareup/picasso/x$a;->b()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/picasso/c;->n:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 157
    invoke-virtual {v2}, Lcom/squareup/picasso/x$a;->c()I

    move-result v3

    iput v3, p0, Lcom/squareup/picasso/c;->p:I

    .line 160
    :cond_2
    if-eqz v0, :cond_8

    .line 161
    iget-object v3, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v3, :cond_3

    .line 162
    const-string v3, "Hunter"

    const-string v4, "decoded"

    iget-object v5, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v5}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/z;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/z;->a(Landroid/graphics/Bitmap;)V

    .line 165
    iget-object v3, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->e()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/squareup/picasso/c;->p:I

    if-eqz v3, :cond_8

    .line 166
    :cond_4
    sget-object v4, Lcom/squareup/picasso/c;->s:Ljava/lang/Object;

    monitor-enter v4

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->f()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/squareup/picasso/c;->p:I

    if-eqz v3, :cond_6

    .line 168
    :cond_5
    iget-object v3, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    iget v5, p0, Lcom/squareup/picasso/c;->p:I

    invoke-static {v3, v0, v5}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/v;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    iget-object v3, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v3, :cond_6

    .line 170
    const-string v3, "Hunter"

    const-string v5, "transformed"

    iget-object v6, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v6}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_6
    iget-object v3, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->g()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 174
    iget-object v3, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    iget-object v3, v3, Lcom/squareup/picasso/v;->g:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/squareup/picasso/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    iget-object v3, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v3, :cond_7

    .line 176
    const-string v3, "Hunter"

    const-string v5, "transformed"

    iget-object v6, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-virtual {v6}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "from custom transformations"

    invoke-static {v3, v5, v6, v7}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    iget-object v3, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/z;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/z;->b(Landroid/graphics/Bitmap;)V

    :cond_8
    move-object v1, v0

    .line 186
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 152
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "result":Lcom/squareup/picasso/x$a;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 179
    .restart local v2    # "result":Lcom/squareup/picasso/x$a;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method a(Lcom/squareup/picasso/a;)V
    .locals 7
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 190
    iget-object v3, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v3, Lcom/squareup/picasso/Picasso;->l:Z

    .line 191
    .local v1, "loggingEnabled":Z
    iget-object v2, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    .line 193
    .local v2, "request":Lcom/squareup/picasso/v;
    iget-object v3, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    if-nez v3, :cond_3

    .line 194
    iput-object p1, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    .line 195
    if-eqz v1, :cond_1

    .line 196
    iget-object v3, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    :cond_0
    const-string v3, "Hunter"

    const-string v4, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "to empty hunter"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    const-string v3, "Hunter"

    const-string v4, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "to "

    invoke-static {p0, v6}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v3, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    if-nez v3, :cond_4

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    .line 209
    :cond_4
    iget-object v3, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    if-eqz v1, :cond_5

    .line 212
    const-string v3, "Hunter"

    const-string v4, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "to "

    invoke-static {p0, v6}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->i()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 216
    .local v0, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/squareup/picasso/c;->r:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v4}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 217
    iput-object v0, p0, Lcom/squareup/picasso/c;->r:Lcom/squareup/picasso/Picasso$Priority;

    goto :goto_0
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 3
    .param p1, "airplaneMode"    # Z
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x0

    .line 285
    iget v2, p0, Lcom/squareup/picasso/c;->q:I

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 286
    .local v0, "hasRetries":Z
    :goto_0
    if-nez v0, :cond_1

    .line 290
    :goto_1
    return v1

    .end local v0    # "hasRetries":Z
    :cond_0
    move v0, v1

    .line 285
    goto :goto_0

    .line 289
    .restart local v0    # "hasRetries":Z
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/c;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/picasso/c;->q:I

    .line 290
    iget-object v1, p0, Lcom/squareup/picasso/c;->i:Lcom/squareup/picasso/x;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/picasso/x;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v1

    goto :goto_1
.end method

.method b(Lcom/squareup/picasso/a;)V
    .locals 5
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "detached":Z
    iget-object v1, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    if-ne v1, p1, :cond_3

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    .line 225
    const/4 v0, 0x1

    .line 232
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->i()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/c;->r:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v1, v2, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/squareup/picasso/c;->o()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/c;->r:Lcom/squareup/picasso/Picasso$Priority;

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_2

    .line 237
    const-string v1, "Hunter"

    const-string v2, "removed"

    iget-object v3, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from "

    invoke-static {p0, v4}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    return-void

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 270
    iget-object v1, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    .line 271
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/c;->m:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/picasso/c;->m:Ljava/util/concurrent/Future;

    .line 273
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/squareup/picasso/c;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/c;->m:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/squareup/picasso/c;->h:Z

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/squareup/picasso/c;->i:Lcom/squareup/picasso/x;

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->b()Z

    move-result v0

    return v0
.end method

.method f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/squareup/picasso/c;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method h()Lcom/squareup/picasso/v;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    return-object v0
.end method

.method i()Lcom/squareup/picasso/a;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/a;

    return-object v0
.end method

.method j()Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/squareup/picasso/c;->k:Ljava/util/List;

    return-object v0
.end method

.method l()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/squareup/picasso/c;->o:Ljava/lang/Exception;

    return-object v0
.end method

.method m()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/squareup/picasso/c;->n:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method n()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/picasso/c;->r:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/v;

    invoke-static {v2}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/v;)V

    .line 107
    iget-object v2, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "Hunter"

    const-string v3, "executing"

    invoke-static {p0}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/c;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/picasso/c;->l:Landroid/graphics/Bitmap;

    .line 113
    iget-object v2, p0, Lcom/squareup/picasso/c;->l:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/c;)V
    :try_end_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 135
    :goto_1
    return-void

    .line 116
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;)V
    :try_end_1
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/squareup/picasso/Downloader$ResponseException;
    :try_start_2
    iput-object v0, p0, Lcom/squareup/picasso/c;->o:Ljava/lang/Exception;

    .line 120
    iget-object v2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v0    # "e":Lcom/squareup/picasso/Downloader$ResponseException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iput-object v0, p0, Lcom/squareup/picasso/c;->o:Ljava/lang/Exception;

    .line 123
    iget-object v2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/i;->b(Lcom/squareup/picasso/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 126
    .local v1, "writer":Ljava/io/StringWriter;
    iget-object v2, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/z;

    invoke-virtual {v2}, Lcom/squareup/picasso/z;->f()Lcom/squareup/picasso/aa;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/aa;->a(Ljava/io/PrintWriter;)V

    .line 127
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/squareup/picasso/c;->o:Ljava/lang/Exception;

    .line 128
    iget-object v2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_3
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iput-object v0, p0, Lcom/squareup/picasso/c;->o:Ljava/lang/Exception;

    .line 131
    iget-object v2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Picasso-Idle"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method
