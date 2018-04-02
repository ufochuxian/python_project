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

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "originUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    .line 57
    iput-boolean v4, p0, Lcom/github/sahasbhop/a/a;->i:Z

    .line 58
    iput-boolean v4, p0, Lcom/github/sahasbhop/a/a;->j:Z

    .line 78
    iput-object p4, p0, Lcom/github/sahasbhop/a/a;->v:Ljava/lang/String;

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 81
    iput v4, p0, Lcom/github/sahasbhop/a/a;->n:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v4, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->u:Landroid/graphics/PaintFlagsDrawFilter;

    .line 89
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    .line 90
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v1

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->e:Lcom/nostra13/universalimageloader/core/c;

    .line 94
    invoke-static {p1}, Lcom/github/sahasbhop/a/a/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "workingDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    .line 99
    invoke-static {}, Lcom/github/sahasbhop/a/a/g;->a()Lcom/github/sahasbhop/a/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    .line 101
    iput-object p2, p0, Lcom/github/sahasbhop/a/a;->d:Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/github/sahasbhop/a/a;->k:I

    .line 103
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/github/sahasbhop/a/a;->l:I

    .line 105
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "Uri: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
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

    .line 107
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

    .line 504
    :try_start_0
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "Create a new bitmap"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :cond_0
    iget v4, p0, Lcom/github/sahasbhop/a/a;->k:I

    iget v5, p0, Lcom/github/sahasbhop/a/a;->l:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 507
    .local v2, "redrawnBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 509
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz p5, :cond_1

    .line 510
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, p5, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 512
    if-nez p3, :cond_1

    .line 513
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v0, p1, p2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 514
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 515
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/github/sahasbhop/a/a;->k:I

    iget v7, p0, Lcom/github/sahasbhop/a/a;->l:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 519
    :cond_1
    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v6, 0x0

    invoke-virtual {v0, p4, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "redrawnBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 527
    goto :goto_0
.end method

.method private a(ILjava/io/File;Lar/com/hjg/pngj/chunks/k;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "frameIndex"    # I
    .param p2, "baseFile"    # Ljava/io/File;
    .param p3, "previousChunk"    # Lar/com/hjg/pngj/chunks/k;

    .prologue
    .line 376
    const/4 v4, 0x0

    .line 378
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Lar/com/hjg/pngj/chunks/k;->r()B

    move-result v5

    .line 379
    .local v5, "disposeOp":B
    invoke-virtual/range {p3 .. p3}, Lar/com/hjg/pngj/chunks/k;->n()I

    move-result v8

    .line 380
    .local v8, "offsetX":I
    invoke-virtual/range {p3 .. p3}, Lar/com/hjg/pngj/chunks/k;->o()I

    move-result v9

    .line 387
    .local v9, "offsetY":I
    packed-switch v5, :pswitch_data_0

    .line 452
    :cond_0
    :goto_0
    return-object v4

    .line 390
    :pswitch_0
    if-lez p1, :cond_1

    add-int/lit8 v17, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 391
    :goto_1
    goto :goto_0

    .line 390
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 395
    :pswitch_1
    if-lez p1, :cond_3

    add-int/lit8 v17, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 396
    :goto_2
    if-eqz v4, :cond_0

    .line 398
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

    .line 399
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

    .line 401
    .local v6, "frameBitmap":Landroid/graphics/Bitmap;
    sget-boolean v17, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v17, :cond_2

    const-string v17, "Create a new bitmap"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
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

    .line 403
    .local v10, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 404
    .local v11, "tempCanvas":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 406
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int v17, v17, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int v18, v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v8, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 407
    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 408
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

    .line 410
    move-object v4, v10

    .line 411
    goto/16 :goto_0

    .line 395
    .end local v6    # "frameBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "tempCanvas":Landroid/graphics/Canvas;
    .end local v15    # "tempPath":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 414
    :pswitch_2
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 417
    add-int/lit8 v7, p1, -0x2

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lar/com/hjg/pngj/chunks/k;

    .line 419
    .local v16, "tempPngChunk":Lar/com/hjg/pngj/chunks/k;
    invoke-virtual/range {v16 .. v16}, Lar/com/hjg/pngj/chunks/k;->r()B

    move-result v12

    .line 420
    .local v12, "tempDisposeOp":I
    invoke-virtual/range {v16 .. v16}, Lar/com/hjg/pngj/chunks/k;->n()I

    move-result v13

    .line 421
    .local v13, "tempOffsetX":I
    invoke-virtual/range {v16 .. v16}, Lar/com/hjg/pngj/chunks/k;->o()I

    move-result v14

    .line 423
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

    .line 424
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

    .line 426
    .restart local v6    # "frameBitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    .line 428
    if-nez v12, :cond_4

    .line 429
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 430
    if-nez v4, :cond_0

    .line 431
    const-string v17, "Can\'t retrieve previous APNG_DISPOSE_OP_NONE frame: please try to increase memory cache size!"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 434
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_0

    .line 435
    sget-boolean v17, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v17, :cond_5

    const-string v17, "Create a new bitmap"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
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

    .line 437
    .restart local v10    # "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 438
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

    .line 440
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int v17, v17, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int v18, v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v13, v14, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 441
    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 442
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

    .line 444
    move-object v4, v10

    goto/16 :goto_0

    .line 417
    .end local v10    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "tempCanvas":Landroid/graphics/Canvas;
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 387
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

    .line 110
    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 113
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 111
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/github/sahasbhop/a/a;

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 113
    :cond_3
    check-cast v0, Lcom/github/sahasbhop/a/a;

    goto :goto_0
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "frameIndex"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 536
    if-nez p2, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 538
    .local v0, "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :goto_1
    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/github/sahasbhop/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .line 537
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

    .line 297
    iget v5, p0, Lcom/github/sahasbhop/a/a;->r:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_3

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 299
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 301
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

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/github/sahasbhop/a/a;->k:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 304
    .local v3, "scalingByWidth":F
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "scalingByWidth: %.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/github/sahasbhop/a/a;->l:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 307
    .local v2, "scalingByHeight":F
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "scalingByHeight: %.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_2
    cmpg-float v5, v3, v2

    if-gtz v5, :cond_4

    .end local v3    # "scalingByWidth":F
    :goto_0
    iput v3, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 310
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_3

    const-string v5, "mScaling: %.2f"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/github/sahasbhop/a/a;->r:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
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

    .line 314
    .local v0, "dst":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/github/sahasbhop/a/a;->d:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 316
    iget-object v5, p0, Lcom/github/sahasbhop/a/a;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v5}, Lcom/github/sahasbhop/a/a;->a(ILandroid/graphics/Bitmap;)V

    .line 317
    return-void

    .end local v0    # "dst":Landroid/graphics/RectF;
    .restart local v1    # "height":I
    .restart local v2    # "scalingByHeight":F
    .restart local v3    # "scalingByWidth":F
    .restart local v4    # "width":I
    :cond_4
    move v3, v2

    .line 309
    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frameIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 320
    invoke-direct {p0, p2}, Lcom/github/sahasbhop/a/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0, p2}, Lcom/github/sahasbhop/a/a;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    invoke-direct {p0, p2, v0}, Lcom/github/sahasbhop/a/a;->a(ILandroid/graphics/Bitmap;)V

    .line 326
    :cond_0
    if-nez v0, :cond_1

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 330
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/github/sahasbhop/a/a;->r:F

    .line 331
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 333
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

    .line 270
    new-instance v3, Lar/com/hjg/pngj/aa;

    invoke-direct {v3, p1}, Lar/com/hjg/pngj/aa;-><init>(Ljava/io/File;)V

    .line 271
    .local v3, "reader":Lar/com/hjg/pngj/aa;
    invoke-virtual {v3}, Lar/com/hjg/pngj/aa;->i()V

    .line 273
    invoke-virtual {v3}, Lar/com/hjg/pngj/aa;->b()Lar/com/hjg/pngj/chunks/f;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/f;->a()Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, "pngChunks":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 277
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 279
    .local v0, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    instance-of v4, v0, Lar/com/hjg/pngj/chunks/h;

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 280
    check-cast v4, Lar/com/hjg/pngj/chunks/h;

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/h;->j()I

    move-result v4

    iput v4, p0, Lcom/github/sahasbhop/a/a;->o:I

    .line 281
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v4, :cond_0

    const-string v4, "numFrames: %d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/github/sahasbhop/a/a;->o:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_0
    iget v4, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v4, :cond_2

    .line 284
    sget-boolean v4, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v4, :cond_1

    const-string v4, "numPlays: %d (user defined)"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/github/sahasbhop/a/a;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .restart local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_2
    check-cast v0, Lar/com/hjg/pngj/chunks/h;

    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/h;->k()I

    move-result v4

    iput v4, p0, Lcom/github/sahasbhop/a/a;->p:I

    .line 287
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

    .line 290
    .restart local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_3
    instance-of v4, v0, Lar/com/hjg/pngj/chunks/k;

    if-eqz v4, :cond_1

    .line 291
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    check-cast v0, Lar/com/hjg/pngj/chunks/k;

    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    :cond_4
    return-void
.end method

.method private b(I)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v11, 0x0

    .line 339
    :try_start_0
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ENTER"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_0
    const/4 v5, 0x0

    .line 342
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/k;

    move-object v9, v0

    .line 344
    .local v9, "previousChunk":Lar/com/hjg/pngj/chunks/k;
    :goto_0
    if-eqz v9, :cond_1

    .line 345
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-direct {p0, p1, v0, v9}, Lcom/github/sahasbhop/a/a;->a(ILjava/io/File;Lar/com/hjg/pngj/chunks/k;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 348
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v12, p0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    iget-object v13, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-static {v13, p1}, Lcom/github/sahasbhop/a/a/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 349
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

    .line 351
    .local v4, "frameBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_4

    move-object v10, v11

    .line 371
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

    .line 342
    goto :goto_0

    .line 355
    .restart local v4    # "frameBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "previousChunk":Lar/com/hjg/pngj/chunks/k;
    :cond_4
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lar/com/hjg/pngj/chunks/k;

    .line 357
    .local v6, "chunk":Lar/com/hjg/pngj/chunks/k;
    invoke-virtual {v6}, Lar/com/hjg/pngj/chunks/k;->s()B

    move-result v3

    .line 358
    .local v3, "blendOp":B
    invoke-virtual {v6}, Lar/com/hjg/pngj/chunks/k;->n()I

    move-result v1

    .line 359
    .local v1, "offsetX":I
    invoke-virtual {v6}, Lar/com/hjg/pngj/chunks/k;->o()I

    move-result v2

    .local v2, "offsetY":I
    move-object v0, p0

    .line 361
    invoke-direct/range {v0 .. v5}, Lcom/github/sahasbhop/a/a;->a(IIBLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 363
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

    .line 367
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

    .line 368
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v11

    .line 371
    goto :goto_1
.end method

.method private c(I)Ljava/lang/String;
    .locals 5
    .param p1, "frameIndex"    # I

    .prologue
    .line 531
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

    .line 532
    .local v0, "format":Ljava/lang/String;
    return-object v0
.end method

.method private d(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v2, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 544
    .local v0, "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :goto_0
    if-nez v0, :cond_1

    .line 545
    :goto_1
    return-object v1

    .line 543
    .end local v0    # "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :cond_0
    iget-object v2, p0, Lcom/github/sahasbhop/a/a;->f:Lcom/github/sahasbhop/a/a/g;

    invoke-virtual {v2}, Lcom/github/sahasbhop/a/a/g;->d()Lcom/nostra13/universalimageloader/a/b/c;

    move-result-object v0

    goto :goto_0

    .line 545
    .restart local v0    # "memoryCache":Lcom/nostra13/universalimageloader/a/b/c;
    :cond_1
    invoke-direct {p0, p1}, Lcom/github/sahasbhop/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "imagePath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    .line 460
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "Extracting PNGs.."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-static {v1}, Lcom/github/sahasbhop/a/a/a;->a(Ljava/io/File;)I

    .line 464
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_3

    const-string v1, "Extracting complete"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :cond_3
    sget-boolean v1, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v1, :cond_4

    const-string v1, "Read APNG information.."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/github/sahasbhop/flog/FLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/github/sahasbhop/a/a;->s:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/github/sahasbhop/a/a;->a(Ljava/io/File;)V

    .line 469
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/sahasbhop/a/a;->i:Z

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 473
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 493
    :goto_0
    return-object v3

    .line 475
    :cond_0
    const/4 v3, 0x0

    .line 478
    .local v3, "imagePath":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->h:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 483
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

    .line 484
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/github/sahasbhop/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 487
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 489
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 490
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
    .line 120
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "numPlays"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/github/sahasbhop/a/a;->p:I

    .line 144
    return-void
.end method

.method public a(Lcom/github/sahasbhop/a/a/e;)V
    .locals 0
    .param p1, "apngListener"    # Lcom/github/sahasbhop/a/a/e;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    .line 129
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "showLastFrameOnStop"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/github/sahasbhop/a/a;->q:Z

    .line 166
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/github/sahasbhop/a/a;->p:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/github/sahasbhop/a/a;->o:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->q:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Current frame: %d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/github/sahasbhop/a/a;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->u:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 235
    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    if-gtz v0, :cond_4

    .line 236
    invoke-direct {p0, p1}, Lcom/github/sahasbhop/a/a;->a(Landroid/graphics/Canvas;)V

    .line 241
    :goto_0
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->q:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/github/sahasbhop/a/a;->n:I

    iget v1, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lt v0, v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->stop()V

    .line 245
    :cond_1
    iget v0, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    iget v1, p0, Lcom/github/sahasbhop/a/a;->o:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 246
    iget v0, p0, Lcom/github/sahasbhop/a/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/sahasbhop/a/a;->n:I

    .line 247
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    invoke-virtual {v0, p0}, Lcom/github/sahasbhop/a/a/e;->b(Lcom/github/sahasbhop/a/a;)V

    .line 248
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

    .line 251
    :cond_3
    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 252
    return-void

    .line 238
    :cond_4
    iget v0, p0, Lcom/github/sahasbhop/a/a;->m:I

    invoke-direct {p0, p1, v0}, Lcom/github/sahasbhop/a/a;->a(Landroid/graphics/Canvas;I)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->j:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 207
    iget-boolean v4, p0, Lcom/github/sahasbhop/a/a;->q:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/github/sahasbhop/a/a;->n:I

    iget v5, p0, Lcom/github/sahasbhop/a/a;->p:I

    if-lt v4, v5, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->stop()V

    .line 227
    :goto_0
    return-void

    .line 212
    :cond_0
    iget v4, p0, Lcom/github/sahasbhop/a/a;->m:I

    if-gez v4, :cond_2

    .line 213
    iput v6, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 219
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/github/sahasbhop/a/a;->c:Ljava/util/ArrayList;

    iget v5, p0, Lcom/github/sahasbhop/a/a;->m:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lar/com/hjg/pngj/chunks/k;

    .line 221
    .local v3, "pngChunk":Lar/com/hjg/pngj/chunks/k;
    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/k;->p()I

    move-result v2

    .line 222
    .local v2, "delayNum":I
    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/k;->q()I

    move-result v1

    .line 223
    .local v1, "delayDen":I
    int-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 225
    .local v0, "delay":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {p0, p0, v4, v5}, Lcom/github/sahasbhop/a/a;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 226
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->invalidateSelf()V

    goto :goto_0

    .line 215
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

    .line 216
    iput v6, p0, Lcom/github/sahasbhop/a/a;->m:I

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 262
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/sahasbhop/a/a;->j:Z

    .line 172
    iput v2, p0, Lcom/github/sahasbhop/a/a;->m:I

    .line 174
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->i:Z

    if-nez v0, :cond_1

    .line 175
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Prepare"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a;->f()V

    .line 179
    :cond_1
    iget-boolean v0, p0, Lcom/github/sahasbhop/a/a;->i:Z

    if-eqz v0, :cond_4

    .line 180
    sget-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "Run"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->run()V

    .line 182
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    invoke-virtual {v0, p0}, Lcom/github/sahasbhop/a/a/e;->a(Lcom/github/sahasbhop/a/a;)V

    .line 187
    :cond_3
    :goto_0
    return-void

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->stop()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iput v1, p0, Lcom/github/sahasbhop/a/a;->n:I

    .line 194
    invoke-virtual {p0, p0}, Lcom/github/sahasbhop/a/a;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 195
    iput-boolean v1, p0, Lcom/github/sahasbhop/a/a;->j:Z

    .line 196
    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/sahasbhop/a/a;->t:Lcom/github/sahasbhop/a/a/e;

    invoke-virtual {v0, p0}, Lcom/github/sahasbhop/a/a/e;->c(Lcom/github/sahasbhop/a/a;)V

    .line 198
    :cond_0
    return-void
.end method
