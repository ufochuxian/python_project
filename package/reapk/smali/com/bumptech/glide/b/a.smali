.class public Lcom/bumptech/glide/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field private static final e:Ljava/lang/String;

.field private static final f:I = 0x1000

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = -0x1

.field private static final l:I = -0x1

.field private static final m:Landroid/graphics/Bitmap$Config;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Z

.field private C:I

.field private n:[I

.field private o:Ljava/nio/ByteBuffer;

.field private final p:[B

.field private q:Lcom/bumptech/glide/b/d;

.field private r:[S

.field private s:[B

.field private t:[B

.field private u:[B

.field private v:[I

.field private w:I

.field private x:[B

.field private y:Lcom/bumptech/glide/b/c;

.field private z:Lcom/bumptech/glide/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/b/a;->m:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;)V
    .locals 1
    .param p1, "provider"    # Lcom/bumptech/glide/b/a$a;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->p:[B

    .line 155
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->z:Lcom/bumptech/glide/b/a$a;

    .line 156
    new-instance v0, Lcom/bumptech/glide/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    .line 157
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "currentFrame"    # Lcom/bumptech/glide/b/b;
    .param p2, "previousFrame"    # Lcom/bumptech/glide/b/b;

    .prologue
    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v4, v3, Lcom/bumptech/glide/b/c;->f:I

    .line 428
    .local v4, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v8, v3, Lcom/bumptech/glide/b/c;->g:I

    .line 431
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->v:[I

    .line 434
    .local v2, "dest":[I
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget v3, v0, Lcom/bumptech/glide/b/b;->g:I

    if-lez v3, :cond_1

    .line 437
    move-object/from16 v0, p2

    iget v3, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 439
    const/4 v9, 0x0

    .line 440
    .local v9, "c":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/bumptech/glide/b/b;->f:Z

    if-nez v3, :cond_0

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v9, v3, Lcom/bumptech/glide/b/c;->l:I

    .line 443
    :cond_0
    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([II)V

    .line 451
    .end local v9    # "c":I
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;)V

    .line 454
    const/16 v18, 0x1

    .line 455
    .local v18, "pass":I
    const/16 v14, 0x8

    .line 456
    .local v14, "inc":I
    const/4 v13, 0x0

    .line 457
    .local v13, "iline":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->d:I

    if-ge v12, v3, :cond_8

    .line 458
    move/from16 v17, v12

    .line 459
    .local v17, "line":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/bumptech/glide/b/b;->e:Z

    if-eqz v3, :cond_3

    .line 460
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->d:I

    if-lt v13, v3, :cond_2

    .line 461
    add-int/lit8 v18, v18, 0x1

    .line 462
    packed-switch v18, :pswitch_data_0

    .line 478
    :cond_2
    :goto_2
    move/from16 v17, v13

    .line 479
    add-int/2addr v13, v14

    .line 481
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->b:I

    add-int v17, v17, v3

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->g:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->f:I

    mul-int v16, v17, v3

    .line 485
    .local v16, "k":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->a:I

    add-int v11, v16, v3

    .line 487
    .local v11, "dx":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->c:I

    add-int v10, v11, v3

    .line 488
    .local v10, "dlim":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->f:I

    add-int v3, v3, v16

    if-ge v3, v10, :cond_4

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->f:I

    add-int v10, v16, v3

    .line 493
    :cond_4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->c:I

    mul-int v19, v12, v3

    .local v19, "sx":I
    move/from16 v20, v19

    .line 494
    .end local v19    # "sx":I
    .local v20, "sx":I
    :goto_3
    if-ge v11, v10, :cond_7

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->u:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "sx":I
    .restart local v19    # "sx":I
    aget-byte v3, v3, v20

    and-int/lit16 v15, v3, 0xff

    .line 497
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->n:[I

    aget v9, v3, v15

    .line 498
    .restart local v9    # "c":I
    if-eqz v9, :cond_5

    .line 499
    aput v9, v2, v11

    .line 501
    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v19

    .line 502
    .end local v19    # "sx":I
    .restart local v20    # "sx":I
    goto :goto_3

    .line 444
    .end local v9    # "c":I
    .end local v10    # "dlim":I
    .end local v11    # "dx":I
    .end local v12    # "i":I
    .end local v13    # "iline":I
    .end local v14    # "inc":I
    .end local v15    # "index":I
    .end local v16    # "k":I
    .end local v17    # "line":I
    .end local v18    # "pass":I
    .end local v20    # "sx":I
    :cond_6
    move-object/from16 v0, p2

    iget v3, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_0

    .line 464
    .restart local v12    # "i":I
    .restart local v13    # "iline":I
    .restart local v14    # "inc":I
    .restart local v17    # "line":I
    .restart local v18    # "pass":I
    :pswitch_0
    const/4 v13, 0x4

    .line 465
    goto :goto_2

    .line 467
    :pswitch_1
    const/4 v13, 0x2

    .line 468
    const/4 v14, 0x4

    .line 469
    goto :goto_2

    .line 471
    :pswitch_2
    const/4 v13, 0x1

    .line 472
    const/4 v14, 0x2

    .line 473
    goto :goto_2

    .line 457
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 507
    .end local v17    # "line":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/bumptech/glide/b/a;->B:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->g:I

    if-eqz v3, :cond_9

    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b

    .line 509
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    if-nez v3, :cond_a

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->p()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    .line 512
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 516
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->p()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 517
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 518
    return-object v1

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 701
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 703
    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;)V
    .locals 24
    .param p1, "frame"    # Lcom/bumptech/glide/b/b;

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/b/b;->j:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 530
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/bumptech/glide/b/c;->f:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/bumptech/glide/b/c;->g:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    .line 534
    .local v16, "npix":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->u:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->u:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 536
    :cond_1
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b/a;->u:[B

    .line 538
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->r:[S

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 539
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [S

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b/a;->r:[S

    .line 541
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->s:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 542
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b/a;->s:[B

    .line 544
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->t:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 545
    const/16 v22, 0x1001

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b/a;->t:[B

    .line 549
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->n()I

    move-result v10

    .line 550
    .local v10, "dataSize":I
    const/16 v22, 0x1

    shl-int v5, v22, v10

    .line 551
    .local v5, "clear":I
    add-int/lit8 v12, v5, 0x1

    .line 552
    .local v12, "endOfInformation":I
    add-int/lit8 v2, v5, 0x2

    .line 553
    .local v2, "available":I
    const/16 v17, -0x1

    .line 554
    .local v17, "oldCode":I
    add-int/lit8 v8, v10, 0x1

    .line 555
    .local v8, "codeSize":I
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 556
    .local v7, "codeMask":I
    const/4 v6, 0x0

    .local v6, "code":I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->r:[S

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-short v23, v22, v6

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->s:[B

    move-object/from16 v22, v0

    int-to-byte v0, v6

    move/from16 v23, v0

    aput-byte v23, v22, v6

    .line 556
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 530
    .end local v2    # "available":I
    .end local v5    # "clear":I
    .end local v6    # "code":I
    .end local v7    # "codeMask":I
    .end local v8    # "codeSize":I
    .end local v10    # "dataSize":I
    .end local v12    # "endOfInformation":I
    .end local v16    # "npix":I
    .end local v17    # "oldCode":I
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/b/b;->c:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/b/b;->d:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    goto/16 :goto_0

    .line 563
    .restart local v2    # "available":I
    .restart local v5    # "clear":I
    .restart local v6    # "code":I
    .restart local v7    # "codeMask":I
    .restart local v8    # "codeSize":I
    .restart local v10    # "dataSize":I
    .restart local v12    # "endOfInformation":I
    .restart local v16    # "npix":I
    .restart local v17    # "oldCode":I
    :cond_7
    const/4 v3, 0x0

    .local v3, "bi":I
    move/from16 v18, v3

    .local v18, "pi":I
    move/from16 v20, v3

    .local v20, "top":I
    move v13, v3

    .local v13, "first":I
    move v9, v3

    .local v9, "count":I
    move v4, v3

    .local v4, "bits":I
    move v11, v3

    .line 564
    .local v11, "datum":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    .line 566
    if-nez v9, :cond_a

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->o()I

    move-result v9

    .line 569
    if-gtz v9, :cond_9

    .line 570
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/b/a;->C:I

    .line 646
    :cond_8
    move/from16 v14, v18

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_12

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->u:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-byte v23, v22, v14

    .line 646
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 573
    :cond_9
    const/4 v3, 0x0

    .line 576
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->p:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v4

    add-int v11, v11, v22

    .line 577
    add-int/lit8 v4, v4, 0x8

    .line 578
    add-int/lit8 v3, v3, 0x1

    .line 579
    add-int/lit8 v9, v9, -0x1

    move/from16 v21, v20

    .line 581
    .end local v20    # "top":I
    .local v21, "top":I
    :goto_4
    if-lt v4, v8, :cond_14

    .line 583
    and-int v6, v11, v7

    .line 584
    shr-int/2addr v11, v8

    .line 585
    sub-int/2addr v4, v8

    .line 588
    if-ne v6, v5, :cond_b

    .line 590
    add-int/lit8 v8, v10, 0x1

    .line 591
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 592
    add-int/lit8 v2, v5, 0x2

    .line 593
    const/16 v17, -0x1

    .line 594
    goto :goto_4

    .line 597
    :cond_b
    if-le v6, v2, :cond_c

    .line 598
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/b/a;->C:I

    move/from16 v20, v21

    .line 599
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 602
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_c
    if-ne v6, v12, :cond_d

    move/from16 v20, v21

    .line 603
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 606
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->t:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->s:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 608
    move/from16 v17, v6

    .line 609
    move v13, v6

    move/from16 v21, v20

    .line 610
    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_4

    .line 612
    :cond_e
    move v15, v6

    .line 613
    .local v15, "inCode":I
    if-lt v6, v2, :cond_f

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->t:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 615
    move/from16 v6, v17

    move/from16 v21, v20

    .line 617
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_f
    :goto_5
    if-lt v6, v5, :cond_10

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->t:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->s:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->r:[S

    move-object/from16 v22, v0

    aget-short v6, v22, v6

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_5

    .line 621
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->s:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v13, v0, 0xff

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->t:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 625
    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->r:[S

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v22, v2

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->s:[B

    move-object/from16 v22, v0

    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v2

    .line 628
    add-int/lit8 v2, v2, 0x1

    .line 629
    and-int v22, v2, v7

    if-nez v22, :cond_11

    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 630
    add-int/lit8 v8, v8, 0x1

    .line 631
    add-int/2addr v7, v2

    .line 634
    :cond_11
    move/from16 v17, v15

    move/from16 v19, v18

    .line 636
    .end local v18    # "pi":I
    .local v19, "pi":I
    :goto_6
    if-lez v20, :cond_13

    .line 638
    add-int/lit8 v20, v20, -0x1

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->u:[B

    move-object/from16 v22, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->t:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v20

    aput-byte v23, v22, v19

    .line 640
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v18

    .end local v18    # "pi":I
    .restart local v19    # "pi":I
    goto :goto_6

    .line 649
    .end local v15    # "inCode":I
    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    :cond_12
    return-void

    .end local v18    # "pi":I
    .restart local v15    # "inCode":I
    .restart local v19    # "pi":I
    :cond_13
    move/from16 v18, v19

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_4

    .end local v15    # "inCode":I
    :cond_14
    move/from16 v20, v21

    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto/16 :goto_2
.end method

.method private m()Lcom/bumptech/glide/b/d;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->q:Lcom/bumptech/glide/b/d;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/bumptech/glide/b/d;

    invoke-direct {v0}, Lcom/bumptech/glide/b/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->q:Lcom/bumptech/glide/b/d;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->q:Lcom/bumptech/glide/b/d;

    return-object v0
.end method

.method private n()I
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 661
    :goto_0
    return v0

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/bumptech/glide/b/a;->C:I

    goto :goto_0
.end method

.method private o()I
    .locals 6

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->n()I

    move-result v0

    .line 671
    .local v0, "blockSize":I
    const/4 v3, 0x0

    .line 672
    .local v3, "n":I
    if-lez v0, :cond_0

    .line 675
    :goto_0
    if-ge v3, v0, :cond_0

    .line 676
    sub-int v1, v0, v3

    .line 677
    .local v1, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/bumptech/glide/b/a;->p:[B

    invoke-virtual {v4, v5, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    add-int/2addr v3, v1

    goto :goto_0

    .line 681
    :catch_0
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    const-string v5, "Error Reading Block"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    const/4 v4, 0x1

    iput v4, p0, Lcom/bumptech/glide/b/a;->C:I

    .line 686
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return v3
.end method

.method private p()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 690
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->z:Lcom/bumptech/glide/b/a$a;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->f:I

    iget-object v3, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->g:I

    sget-object v4, Lcom/bumptech/glide/b/a;->m:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 691
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 692
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    sget-object v3, Lcom/bumptech/glide/b/a;->m:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Landroid/graphics/Bitmap;)V

    .line 695
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->f:I

    return v0
.end method

.method public a(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 197
    const/4 v0, -0x1

    .line 198
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    if-ge p1, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/b;

    iget v0, v1, Lcom/bumptech/glide/b/b;->i:I

    .line 201
    :cond_0
    return v0
.end method

.method public a(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .prologue
    const/16 v1, 0x4000

    .line 316
    if-eqz p1, :cond_3

    .line 318
    if-lez p2, :cond_0

    add-int/lit16 v1, p2, 0x1000

    .line 319
    .local v1, "capacity":I
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 321
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x4000

    new-array v2, v5, [B

    .line 322
    .local v2, "data":[B
    :goto_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 323
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    const-string v6, "Error reading data from stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v1    # "capacity":I
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz p1, :cond_1

    .line 337
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :cond_1
    :goto_2
    iget v5, p0, Lcom/bumptech/glide/b/a;->C:I

    return v5

    .line 325
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "capacity":I
    .restart local v2    # "data":[B
    .restart local v4    # "nRead":I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 327
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/b/a;->a([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 332
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "capacity":I
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :cond_3
    const/4 v5, 0x2

    iput v5, p0, Lcom/bumptech/glide/b/a;->C:I

    goto :goto_1

    .line 339
    :catch_1
    move-exception v3

    .line 340
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    const-string v6, "Error closing stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public a([B)I
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 397
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->x:[B

    .line 398
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->m()Lcom/bumptech/glide/b/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/b/d;->a([B)Lcom/bumptech/glide/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/b/d;->b()Lcom/bumptech/glide/b/c;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    .line 399
    if-eqz p1, :cond_1

    .line 401
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    .line 402
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 403
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 406
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->f:I

    iget-object v3, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/bumptech/glide/b/a;->u:[B

    .line 407
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->f:I

    iget-object v3, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/bumptech/glide/b/a;->v:[I

    .line 410
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bumptech/glide/b/a;->B:Z

    .line 411
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget-object v2, v2, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 412
    .local v0, "frame":Lcom/bumptech/glide/b/b;
    iget v2, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 413
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/b/a;->B:Z

    .line 419
    .end local v0    # "frame":Lcom/bumptech/glide/b/b;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v2, p0, Lcom/bumptech/glide/b/a;->C:I

    return v2
.end method

.method public a(Lcom/bumptech/glide/b/c;[B)V
    .locals 5
    .param p1, "header"    # Lcom/bumptech/glide/b/c;
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    .line 360
    iput-object p2, p0, Lcom/bumptech/glide/b/a;->x:[B

    .line 361
    iput v4, p0, Lcom/bumptech/glide/b/a;->C:I

    .line 362
    const/4 v2, -0x1

    iput v2, p0, Lcom/bumptech/glide/b/a;->w:I

    .line 364
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    .line 365
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 366
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 370
    iput-boolean v4, p0, Lcom/bumptech/glide/b/a;->B:Z

    .line 371
    iget-object v2, p1, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 372
    .local v0, "frame":Lcom/bumptech/glide/b/b;
    iget v2, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 373
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/b/a;->B:Z

    .line 379
    .end local v0    # "frame":Lcom/bumptech/glide/b/b;
    :cond_1
    iget v2, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v3, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/bumptech/glide/b/a;->u:[B

    .line 380
    iget v2, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v3, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/bumptech/glide/b/a;->v:[I

    .line 381
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->g:I

    return v0
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->x:[B

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/bumptech/glide/b/a;->C:I

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/bumptech/glide/b/a;->w:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/a;->w:I

    .line 188
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/a;->w:I

    if-gez v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, -0x1

    .line 212
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/b/a;->w:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/a;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/bumptech/glide/b/a;->w:I

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/b/a;->w:I

    .line 235
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    return v0
.end method

.method public declared-synchronized k()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v5, v5, Lcom/bumptech/glide/b/c;->c:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/bumptech/glide/b/a;->w:I

    if-gez v5, :cond_2

    .line 253
    :cond_0
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to decode frame, frameCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v7, v7, Lcom/bumptech/glide/b/c;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " framePointer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/bumptech/glide/b/a;->w:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    const/4 v5, 0x1

    iput v5, p0, Lcom/bumptech/glide/b/a;->C:I

    .line 258
    :cond_2
    iget v5, p0, Lcom/bumptech/glide/b/a;->C:I

    if-eq v5, v8, :cond_3

    iget v5, p0, Lcom/bumptech/glide/b/a;->C:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 259
    :cond_3
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 260
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to decode frame, status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/bumptech/glide/b/a;->C:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v3

    .line 264
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/bumptech/glide/b/a;->C:I

    .line 266
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget-object v5, v5, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    iget v6, p0, Lcom/bumptech/glide/b/a;->w:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 267
    .local v0, "currentFrame":Lcom/bumptech/glide/b/b;
    const/4 v1, 0x0

    .line 268
    .local v1, "previousFrame":Lcom/bumptech/glide/b/b;
    iget v5, p0, Lcom/bumptech/glide/b/a;->w:I

    add-int/lit8 v2, v5, -0x1

    .line 269
    .local v2, "previousIndex":I
    if-ltz v2, :cond_6

    .line 270
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget-object v5, v5, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "previousFrame":Lcom/bumptech/glide/b/b;
    check-cast v1, Lcom/bumptech/glide/b/b;

    .line 274
    .restart local v1    # "previousFrame":Lcom/bumptech/glide/b/b;
    :cond_6
    iget-object v5, v0, Lcom/bumptech/glide/b/b;->k:[I

    if-nez v5, :cond_a

    .line 275
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget-object v5, v5, Lcom/bumptech/glide/b/c;->a:[I

    iput-object v5, p0, Lcom/bumptech/glide/b/a;->n:[I

    .line 283
    :cond_7
    :goto_1
    const/4 v4, 0x0

    .line 284
    .local v4, "save":I
    iget-boolean v5, v0, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v5, :cond_8

    .line 285
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->n:[I

    iget v6, v0, Lcom/bumptech/glide/b/b;->h:I

    aget v4, v5, v6

    .line 287
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->n:[I

    iget v6, v0, Lcom/bumptech/glide/b/b;->h:I

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 289
    :cond_8
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->n:[I

    if-nez v5, :cond_b

    .line 290
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 291
    sget-object v5, Lcom/bumptech/glide/b/a;->e:Ljava/lang/String;

    const-string v6, "No Valid Color Table"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_9
    const/4 v5, 0x1

    iput v5, p0, Lcom/bumptech/glide/b/a;->C:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    .end local v0    # "currentFrame":Lcom/bumptech/glide/b/b;
    .end local v1    # "previousFrame":Lcom/bumptech/glide/b/b;
    .end local v2    # "previousIndex":I
    .end local v4    # "save":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 277
    .restart local v0    # "currentFrame":Lcom/bumptech/glide/b/b;
    .restart local v1    # "previousFrame":Lcom/bumptech/glide/b/b;
    .restart local v2    # "previousIndex":I
    :cond_a
    :try_start_2
    iget-object v5, v0, Lcom/bumptech/glide/b/b;->k:[I

    iput-object v5, p0, Lcom/bumptech/glide/b/a;->n:[I

    .line 278
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    iget v5, v5, Lcom/bumptech/glide/b/c;->j:I

    iget v6, v0, Lcom/bumptech/glide/b/b;->h:I

    if-ne v5, v6, :cond_7

    .line 279
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    const/4 v6, 0x0

    iput v6, v5, Lcom/bumptech/glide/b/c;->l:I

    goto :goto_1

    .line 299
    .restart local v4    # "save":I
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 302
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-boolean v5, v0, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v5, :cond_4

    .line 303
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->n:[I

    iget v6, v0, Lcom/bumptech/glide/b/b;->h:I

    aput v4, v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->y:Lcom/bumptech/glide/b/c;

    .line 348
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->x:[B

    .line 349
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->u:[B

    .line 350
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->v:[I

    .line 351
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->z:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 354
    :cond_0
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->A:Landroid/graphics/Bitmap;

    .line 355
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/nio/ByteBuffer;

    .line 356
    return-void
.end method
