.class public Lcom/github/sahasbhop/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:F = 1000.0f


# instance fields
.field private final b:Landroid/net/Uri;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lar/com/hjg/pngj/chunks/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/nostra13/universalimageloader/core/c;

.field private f:Lcom/github/sahasbhop/a/a/g;

.field private g:Landroid/graphics/Paint;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:Ljava/io/File;

.field private t:Lcom/github/sahasbhop/a/a/e;

.field private u:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    .line 57
    iput-boolean v4, p0, Lcom/github/sahasbhop/a/a;->i:Z

    .line 58
    iput-boolean v4, p0, Lcom/github/sahasbhop/a/a;->j:Z

    .line 77
    const/4 v1, -0x1

    iput v1, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 78
    iput v4, p0, Lcom/github/sahasbhop/a/a;->n:I

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v4, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->u:Landroid/graphics/PaintFlagsDrawFilter;

    .line 86
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    .line 87
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v1

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->e:Lcom/nostra13/universalimageloader/core/c;

    .line 91
    invoke-static {p1}, Lcom/github/sahasbhop/a/a/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "workingDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    .line 96
    invoke-static {}, Lcom/github/sahasbhop/a/a/g;->a()Lcom/github/sahasbhop/a/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    .line 98
    iput-object p2, p0, Lcom/github/sahasbhop/a/a;->d:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/github/sahasbhop/a/a;->k:I

    .line 100
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/github/sahasbhop/a/a;->l:I

    .line 102
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "Uri: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "Bitmap size: %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/github/sahasbhop/a/a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/github/sahasbhop/a/a;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_1
    return-void
.end method

.method private a(IIBLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "blendOp"    # B
    .param p4, "frameBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "baseBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 501
    :try_start_0
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "Create a new bitmap"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    :cond_0
    iget v4, p0, Lcom/github/sahasbhop/a/a;->k:I

    iget v5, p0, Lcom/github/sahasbhop/a/a;->l:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 504
    .local v2, "redrawnBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 506
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz p5, :cond_1

    .line 507
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, p5, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 509
    if-nez p3, :cond_1

    .line 510
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v0, p1, p2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 511
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 512
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/github/sahasbhop/a/a;->k:I

    iget v7, p0, Lcom/github/sahasbhop/a/a;->l:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 516
    :cond_1
    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v6, 0x0

    invoke-virtual {v0, p4, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "redrawnBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 524
    goto :goto_0
.end method

.method private a(ILjava/io/File;Lar/com/hjg/pngj/chunks/k;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "frameIndex"    # I
    .param p2, "baseFile"    # Ljava/io/File;
    .param p3, "previousChunk"    # Lar/com/hjg/pngj/chunks/k;

    .prologue
    .line 373
    const/4 v4, 0x0

    .line 375
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Lar/com/hjg/pngj/chunks/k;->r()B

    move-result v5

    .line 376
    .local v5, "disposeOp":B
    invoke-virtual/range {p3 .. p3}, Lar/com/hjg/pngj/chunks/k;->n()I

    move-result v8

    .line 377
    .local v8, "offsetX":I
    invoke-virtual/range {p3 .. p3}, Lar/com/hjg/pngj/chunks/k;->o()I

    move-result v9

    .line 384
    .local v9, "offsetY":I
    packed-switch v5, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-object v4

    .line 387
    :pswitch_0
    if-lez p1, :cond_1

    add-int/lit8 v17, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 388
    :goto_1
    goto :goto_0

    .line 387
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 392
    :pswitch_1
    if-lez p1, :cond_3

    add-int/lit8 v17, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 393
    :goto_2
    if-eqz v4, :cond_0

    .line 395
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, p1, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/github/sahasbhop/a/a/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 396
    .local v15, "tempPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->e:Lcom/nostra13/universalimageloader/core/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/github/sahasbhop/a/a/g;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 398
    .local v6, "frameBitmap":Landroid/graphics/Bitmap;
    sget-boolean v17, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v17, :cond_2

    const-string v17, "Create a new bitmap"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->k:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->l:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 400
    .local v10, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 401
    .local v11, "tempCanvas":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int v17, v17, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int v18, v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v8, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 404
    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 405
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->k:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->l:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 407
    move-object v4, v10

    .line 408
    goto/16 :goto_0

    .line 392
    .end local v6    # "frameBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "tempCanvas":Landroid/graphics/Canvas;
    .end local v15    # "tempPath":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 411
    :pswitch_2
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 414
    add-int/lit8 v7, p1, -0x2

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lar/com/hjg/pngj/chunks/k;

    .line 416
    .local v16, "tempPngChunk":Lar/com/hjg/pngj/chunks/k;
    invoke-virtual/range {v16 .. v16}, Lar/com/hjg/pngj/chunks/k;->r()B

    move-result v12

    .line 417
    .local v12, "tempDisposeOp":I
    invoke-virtual/range {v16 .. v16}, Lar/com/hjg/pngj/chunks/k;->n()I

    move-result v13

    .line 418
    .local v13, "tempOffsetX":I
    invoke-virtual/range {v16 .. v16}, Lar/com/hjg/pngj/chunks/k;->o()I

    move-result v14

    .line 420
    .local v14, "tempOffsetY":I
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/github/sahasbhop/a/a/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 421
    .restart local v15    # "tempPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->e:Lcom/nostra13/universalimageloader/core/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/github/sahasbhop/a/a/g;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 423
    .restart local v6    # "frameBitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    .line 425
    if-nez v12, :cond_4

    .line 426
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 427
    if-nez v4, :cond_0

    .line 428
    const-string v17, "Can\'t retrieve previous APNG_DISPOSE_OP_NONE frame: please try to increase memory cache size!"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 431
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_0

    .line 432
    sget-boolean v17, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v17, :cond_5

    const-string v17, "Create a new bitmap"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->k:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->l:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 434
    .restart local v10    # "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .restart local v11    # "tempCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 437
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int v17, v17, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int v18, v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v13, v14, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 438
    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 439
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->k:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/sahasbhop/a/a;->l:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 441
    move-object v4, v10

    goto/16 :goto_0

    .line 414
    .end local v10    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "tempCanvas":Landroid/graphics/Canvas;
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/view/View;)Lcom/github/sahasbhop/a/a;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 107
    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 110
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 108
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/github/sahasbhop/a/a;

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 110
    :cond_3
    check-cast v0, Lcom/github/sahasbhop/a/a;

    goto :goto_0
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "frameIndex"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 533
    if-nez p2, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 535
    .local v0, "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :goto_1
    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0, p1}, Lcom/github/sahasbhop/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .line 534
    .end local v0    # "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :cond_2
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    invoke-virtual {v1}, Lcom/github/sahasbhop/a/a/g;->d()Lcom/nostra13/universalimageloader/a/b/c;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 294
    iget v5, p0, Lcom/github/sahasbhop/a/a;->r:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_3

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 296
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 298
    .local v1, "height":I
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_0

    const-string v5, "Canvas: %dx%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/github/sahasbhop/a/a;->k:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 301
    .local v3, "scalingByWidth":F
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "scalingByWidth: %.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/github/sahasbhop/a/a;->l:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 304
    .local v2, "scalingByHeight":F
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "scalingByHeight: %.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_2
    cmpg-float v5, v3, v2

    if-gtz v5, :cond_4

    .end local v3    # "scalingByWidth":F
    :goto_0
    iput v3, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 307
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_3

    const-string v5, "mScaling: %.2f"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/github/sahasbhop/a/a;->r:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    .end local v1    # "height":I
    .end local v2    # "scalingByHeight":F
    .end local v4    # "width":I
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    iget v5, p0, Lcom/github/sahasbhop/a/a;->r:F

    iget v6, p0, Lcom/github/sahasbhop/a/a;->k:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/github/sahasbhop/a/a;->r:F

    iget v7, p0, Lcom/github/sahasbhop/a/a;->l:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-direct {v0, v10, v10, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 311
    .local v0, "dst":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/github/sahasbhop/a/a;->d:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 313
    iget-object v5, p0, Lcom/github/sahasbhop/a/a;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v5}, Lcom/github/sahasbhop/a/a;->a(ILandroid/graphics/Bitmap;)V

    .line 314
    return-void

    .end local v0    # "dst":Landroid/graphics/RectF;
    .restart local v1    # "height":I
    .restart local v2    # "scalingByHeight":F
    .restart local v3    # "scalingByWidth":F
    .restart local v4    # "width":I
    :cond_4
    move v3, v2

    .line 306
    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frameIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 317
    invoke-direct {p0, p2}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0, p2}, Lcom/github/sahasbhop/a/a;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    invoke-direct {p0, p2, v0}, Lcom/github/sahasbhop/a/a;->a(ILandroid/graphics/Bitmap;)V

    .line 323
    :cond_0
    if-nez v0, :cond_1

    .line 331
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 328
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 330
    .local v1, "dst":Landroid/graphics/RectF;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 9
    .param p1, "baseFile"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 267
    new-instance v3, Lar/com/hjg/pngj/aa;

    invoke-direct {v3, p1}, Lar/com/hjg/pngj/aa;-><init>(Ljava/io/File;)V

    .line 268
    .local v3, "reader":Lar/com/hjg/pngj/aa;
    invoke-virtual {v3}, Lar/com/hjg/pngj/aa;->i()V

    .line 270
    invoke-virtual {v3}, Lar/com/hjg/pngj/aa;->b()Lar/com/hjg/pngj/chunks/f;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/f;->a()Ljava/util/List;

    move-result-object v2

    .line 273
    .local v2, "pngChunks":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 274
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 276
    .local v0, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    instance-of v4, v0, Lar/com/hjg/pngj/chunks/h;

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 277
    check-cast v4, Lar/com/hjg/pngj/chunks/h;

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/h;->j()I

    move-result v4

    iput v4, p0, Lcom/github/sahasbhop/a/a;->o:I

    .line 278
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v4, :cond_0

    const-string v4, "numFrames: %d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/github/sahasbhop/a/a;->o:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_0
    iget v4, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v4, :cond_2

    .line 281
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v4, :cond_1

    const-string v4, "numPlays: %d (user defined)"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/github/sahasbhop/a/a;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .restart local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_2
    check-cast v0, Lar/com/hjg/pngj/chunks/h;

    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/h;->k()I

    move-result v4

    iput v4, p0, Lcom/github/sahasbhop/a/a;->p:I

    .line 284
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v4, :cond_1

    const-string v4, "numPlays: %d (media info)"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/github/sahasbhop/a/a;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 287
    .restart local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_3
    instance-of v4, v0, Lar/com/hjg/pngj/chunks/k;

    if-eqz v4, :cond_1

    .line 288
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    check-cast v0, Lar/com/hjg/pngj/chunks/k;

    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    :cond_4
    return-void
.end method

.method private b(I)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v11, 0x0

    .line 336
    :try_start_0
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ENTER"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    const/4 v5, 0x0

    .line 339
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/k;

    move-object v9, v0

    .line 341
    .local v9, "previousChunk":Lar/com/hjg/pngj/chunks/k;
    :goto_0
    if-eqz v9, :cond_1

    .line 342
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-direct {p0, p1, v0, v9}, Lcom/github/sahasbhop/a/a;->a(ILjava/io/File;Lar/com/hjg/pngj/chunks/k;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 345
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v12, p0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    iget-object v13, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-static {v13, p1}, Lcom/github/sahasbhop/a/a/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/github/sahasbhop/a/a;->e:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0, v12, v13}, Lcom/github/sahasbhop/a/a/g;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 348
    .local v4, "frameBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_4

    move-object v10, v11

    .line 368
    .end local v4    # "frameBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "previousChunk":Lar/com/hjg/pngj/chunks/k;
    :cond_2
    :goto_1
    return-object v10

    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object v9, v11

    .line 339
    goto :goto_0

    .line 352
    .restart local v4    # "frameBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "previousChunk":Lar/com/hjg/pngj/chunks/k;
    :cond_4
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lar/com/hjg/pngj/chunks/k;

    .line 354
    .local v6, "chunk":Lar/com/hjg/pngj/chunks/k;
    invoke-virtual {v6}, Lar/com/hjg/pngj/chunks/k;->s()B

    move-result v3

    .line 355
    .local v3, "blendOp":B
    invoke-virtual {v6}, Lar/com/hjg/pngj/chunks/k;->n()I

    move-result v1

    .line 356
    .local v1, "offsetX":I
    invoke-virtual {v6}, Lar/com/hjg/pngj/chunks/k;->o()I

    move-result v2

    .local v2, "offsetY":I
    move-object v0, p0

    .line 358
    invoke-direct/range {v0 .. v5}, Lcom/github/sahasbhop/a/a;->a(IIBLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 360
    .local v10, "redrawnBitmap":Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "EXIT"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 364
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    .end local v3    # "blendOp":B
    .end local v4    # "frameBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "chunk":Lar/com/hjg/pngj/chunks/k;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "previousChunk":Lar/com/hjg/pngj/chunks/k;
    .end local v10    # "redrawnBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 365
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v11

    .line 368
    goto :goto_1
.end method

.method private c(I)Ljava/lang/String;
    .locals 5
    .param p1, "frameIndex"    # I

    .prologue
    .line 528
    const-string v1, "%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "format":Ljava/lang/String;
    return-object v0
.end method

.method private d(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v2, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 541
    .local v0, "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :goto_0
    if-nez v0, :cond_1

    .line 542
    :goto_1
    return-object v1

    .line 540
    .end local v0    # "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :cond_0
    iget-object v2, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    invoke-virtual {v2}, Lcom/github/sahasbhop/a/a/g;->d()Lcom/nostra13/universalimageloader/a/b/c;

    move-result-object v0

    goto :goto_0

    .line 542
    .restart local v0    # "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :cond_1
    invoke-direct {p0, p1}, Lcom/github/sahasbhop/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 453
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "imagePath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    .line 457
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "Extracting PNGs.."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-static {v1}, Lcom/github/sahasbhop/a/a/a;->a(Ljava/io/File;)I

    .line 461
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_3

    const-string v1, "Extracting complete"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    :cond_3
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_4

    const-string v1, "Read APNG information.."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/github/sahasbhop/a/a;->a(Ljava/io/File;)V

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/sahasbhop/a/a;->i:Z

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 470
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 490
    :goto_0
    return-object v3

    .line 472
    :cond_0
    const/4 v3, 0x0

    .line 475
    .local v3, "imagePath":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 480
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v4, :cond_1

    const-string v4, "Copy file from %s to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 484
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 486
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/github/sahasbhop/a/a/e;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "numPlays"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/github/sahasbhop/a/a;->p:I

    .line 141
    return-void
.end method

.method public a(Lcom/github/sahasbhop/a/a/e;)V
    .locals 0
    .param p1, "apngListener"    # Lcom/github/sahasbhop/a/a/e;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    .line 126
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "showLastFrameOnStop"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/github/sahasbhop/a/a;->q:Z

    .line 163
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/github/sahasbhop/a/a;->p:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/github/sahasbhop/a/a;->o:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->q:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Current frame: %d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/github/sahasbhop/a/a;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->u:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 232
    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    if-gtz v0, :cond_4

    .line 233
    invoke-direct {p0, p1}, Lcom/github/sahasbhop/a/a;->a(Landroid/graphics/Canvas;)V

    .line 238
    :goto_0
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->q:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/github/sahasbhop/a/a;->n:I

    iget v1, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lt v0, v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->stop()V

    .line 242
    :cond_1
    iget v0, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    iget v1, p0, Lcom/github/sahasbhop/a/a;->o:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 243
    iget v0, p0, Lcom/github/sahasbhop/a/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/sahasbhop/a/a;->n:I

    .line 244
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    invoke-virtual {v0, p0}, Lcom/github/sahasbhop/a/a/e;->b(Lcom/github/sahasbhop/a/a;)V

    .line 245
    :cond_2
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "Loop count: %d/%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/github/sahasbhop/a/a;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/github/sahasbhop/a/a;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_3
    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 249
    return-void

    .line 235
    :cond_4
    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    invoke-direct {p0, p1, v0}, Lcom/github/sahasbhop/a/a;->a(Landroid/graphics/Canvas;I)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->j:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 204
    iget-boolean v4, p0, Lcom/github/sahasbhop/a/a;->q:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/github/sahasbhop/a/a;->n:I

    iget v5, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lt v4, v5, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->stop()V

    .line 224
    :goto_0
    return-void

    .line 209
    :cond_0
    iget v4, p0, Lcom/github/sahasbhop/a/a;->m:I

    if-gez v4, :cond_2

    .line 210
    iput v6, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 216
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    iget v5, p0, Lcom/github/sahasbhop/a/a;->m:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lar/com/hjg/pngj/chunks/k;

    .line 218
    .local v3, "pngChunk":Lar/com/hjg/pngj/chunks/k;
    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/k;->p()I

    move-result v2

    .line 219
    .local v2, "delayNum":I
    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/k;->q()I

    move-result v1

    .line 220
    .local v1, "delayDen":I
    int-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 222
    .local v0, "delay":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {p0, p0, v4, v5}, Lcom/github/sahasbhop/a/a;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 223
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->invalidateSelf()V

    goto :goto_0

    .line 212
    .end local v0    # "delay":I
    .end local v1    # "delayDen":I
    .end local v2    # "delayNum":I
    .end local v3    # "pngChunk":Lar/com/hjg/pngj/chunks/k;
    :cond_2
    iget v4, p0, Lcom/github/sahasbhop/a/a;->m:I

    iget-object v5, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_1

    .line 213
    iput v6, p0, Lcom/github/sahasbhop/a/a;->m:I

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 254
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 259
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/sahasbhop/a/a;->j:Z

    .line 169
    iput v2, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 171
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->i:Z

    if-nez v0, :cond_1

    .line 172
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Prepare"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a;->e()V

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->i:Z

    if-eqz v0, :cond_4

    .line 177
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "Run"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->run()V

    .line 179
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    invoke-virtual {v0, p0}, Lcom/github/sahasbhop/a/a/e;->a(Lcom/github/sahasbhop/a/a;)V

    .line 184
    :cond_3
    :goto_0
    return-void

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->stop()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iput v1, p0, Lcom/github/sahasbhop/a/a;->n:I

    .line 191
    invoke-virtual {p0, p0}, Lcom/github/sahasbhop/a/a;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 192
    iput-boolean v1, p0, Lcom/github/sahasbhop/a/a;->j:Z

    .line 193
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    invoke-virtual {v0, p0}, Lcom/github/sahasbhop/a/a/e;->c(Lcom/github/sahasbhop/a/a;)V

    .line 195
    :cond_0
    return-void
.end method
