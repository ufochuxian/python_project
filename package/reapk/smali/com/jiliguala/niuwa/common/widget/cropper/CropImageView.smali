.class public Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:Z = false

.field public static final c:I = 0x1

.field public static final d:I = 0x1

.field private static final e:Ljava/lang/String;

.field private static final f:Landroid/graphics/Rect;

.field private static final g:I = 0x0

.field private static final h:Ljava/lang/String; = "DEGREES_ROTATED"


# instance fields
.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

.field private p:Landroid/graphics/Bitmap;

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->e:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->i:I

    .line 56
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->j:Z

    .line 57
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->k:I

    .line 58
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->l:I

    .line 59
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->m:I

    .line 63
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    .line 71
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->i:I

    .line 56
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->j:Z

    .line 57
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->k:I

    .line 58
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->l:I

    .line 59
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->m:I

    .line 63
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    .line 77
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->i:I

    .line 81
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->j:Z

    .line 82
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->k:I

    .line 83
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->l:I

    .line 84
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->a(Landroid/content/Context;)V

    .line 90
    return-void

    .line 86
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static a(III)I
    .locals 2
    .param p0, "measureSpecMode"    # I
    .param p1, "measureSpecSize"    # I
    .param p2, "desiredSize"    # I

    .prologue
    .line 109
    const/high16 v1, 0x40000000    # 2.0f

    if-ne p0, v1, :cond_0

    .line 111
    move v0, p1

    .line 120
    .local v0, "spec":I
    :goto_0
    return v0

    .line 112
    .end local v0    # "spec":I
    :cond_0
    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_1

    .line 114
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "spec":I
    goto :goto_0

    .line 117
    .end local v0    # "spec":I
    :cond_1
    move v0, p2

    .restart local v0    # "spec":I
    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 485
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0085

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 487
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->n:Landroid/widget/ImageView;

    .line 489
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->m:I

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setImageResource(I)V

    .line 490
    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    .line 491
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->i:I

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->j:Z

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->k:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->l:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(IZII)V

    .line 492
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 470
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 471
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 472
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 473
    .local v8, "width":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 475
    .local v7, "height":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    .line 476
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    .line 479
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    .line 480
    return-void
.end method

.method public a(II)V
    .locals 2
    .param p1, "aspectRatioX"    # I
    .param p2, "aspectRatioY"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->k:I

    .line 454
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->k:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setAspectRatioX(I)V

    .line 456
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->l:I

    .line 457
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->l:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setAspectRatioY(I)V

    .line 458
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "exif"    # Landroid/media/ExifInterface;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 299
    if-nez p1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 303
    :cond_0
    if-nez p2, :cond_1

    .line 304
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 308
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 309
    .local v5, "matrix":Landroid/graphics/Matrix;
    const-string v0, "Orientation"

    invoke-virtual {p2, v0, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    .line 310
    .local v7, "orientation":I
    const/4 v8, -0x1

    .line 312
    .local v8, "rotate":I
    packed-switch v7, :pswitch_data_0

    .line 324
    :goto_1
    :pswitch_0
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 325
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 314
    :pswitch_1
    const/16 v8, 0x10e

    .line 315
    goto :goto_1

    .line 317
    :pswitch_2
    const/16 v8, 0xb4

    .line 318
    goto :goto_1

    .line 320
    :pswitch_3
    const/16 v8, 0x5a

    goto :goto_1

    .line 327
    :cond_2
    int-to-float v0, v8

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 329
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 19

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->n:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/jiliguala/niuwa/common/widget/cropper/a/c;->a(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 389
    .local v13, "displayedImageRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    .line 390
    .local v7, "actualImageWidth":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    .line 391
    .local v14, "displayedImageWidth":F
    div-float v16, v7, v14

    .line 395
    .local v16, "scaleFactorWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    .line 396
    .local v6, "actualImageHeight":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    .line 397
    .local v12, "displayedImageHeight":F
    div-float v15, v6, v12

    .line 400
    .local v15, "scaleFactorHeight":F
    sget-object v17, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v9, v17, v18

    .line 401
    .local v9, "displayedCropLeft":F
    sget-object v17, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v10, v17, v18

    .line 402
    .local v10, "displayedCropTop":F
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v11

    .line 403
    .local v11, "displayedCropWidth":F
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v8

    .line 406
    .local v8, "displayedCropHeight":F
    mul-float v2, v9, v16

    .line 407
    .local v2, "actualCropLeft":F
    mul-float v5, v10, v15

    .line 408
    .local v5, "actualCropTop":F
    mul-float v17, v11, v16

    add-float v4, v2, v17

    .line 409
    .local v4, "actualCropRight":F
    mul-float v17, v8, v15

    add-float v1, v5, v17

    .line 413
    .local v1, "actualCropBottom":F
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 414
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 418
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2, v5, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 420
    .local v3, "actualCropRect":Landroid/graphics/RectF;
    return-object v3
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 22

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->n:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/jiliguala/niuwa/common/widget/cropper/a/c;->a(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 344
    .local v13, "displayedImageRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    .line 345
    .local v6, "actualImageWidth":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    .line 346
    .local v14, "displayedImageWidth":F
    div-float v16, v6, v14

    .line 350
    .local v16, "scaleFactorWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v5, v0

    .line 351
    .local v5, "actualImageHeight":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    .line 352
    .local v12, "displayedImageHeight":F
    div-float v15, v5, v12

    .line 355
    .local v15, "scaleFactorHeight":F
    sget-object v17, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v9, v17, v18

    .line 356
    .local v9, "cropWindowX":F
    sget-object v17, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v10, v17, v18

    .line 357
    .local v10, "cropWindowY":F
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v8

    .line 358
    .local v8, "cropWindowWidth":F
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v7

    .line 361
    .local v7, "cropWindowHeight":F
    mul-float v17, v9, v16

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 362
    .local v3, "actualCropX":F
    mul-float v17, v10, v15

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 363
    .local v4, "actualCropY":F
    mul-float v17, v8, v16

    add-float v18, v3, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 364
    .local v2, "actualCropWidth":F
    mul-float v17, v7, v15

    add-float v18, v4, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 365
    .local v1, "actualCropHeight":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v2, v17

    if-gtz v17, :cond_0

    .line 366
    const/high16 v2, 0x3f800000    # 1.0f

    .line 368
    :cond_0
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v1, v17

    if-gtz v17, :cond_1

    .line 369
    const/high16 v1, 0x3f800000    # 1.0f

    .line 372
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    float-to-int v0, v3

    move/from16 v18, v0

    float-to-int v0, v4

    move/from16 v19, v0

    float-to-int v0, v2

    move/from16 v20, v0

    float-to-int v0, v1

    move/from16 v21, v0

    .line 373
    invoke-static/range {v17 .. v21}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 375
    .local v11, "croppedBitmap":Landroid/graphics/Bitmap;
    return-object v11
.end method

.method public getImageResource()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->m:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 242
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 244
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->r:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->s:I

    if-lez v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 247
    .local v0, "origparams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->r:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->s:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .end local v0    # "origparams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 171
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 172
    .local v13, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 173
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 174
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 176
    .local v7, "heightSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_6

    .line 178
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 182
    if-nez v7, :cond_0

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 188
    :cond_0
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 189
    .local v10, "viewToBitmapWidthRatio":D
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 192
    .local v8, "viewToBitmapHeightRatio":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 193
    int-to-double v0, v14

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v10, v16, v18

    .line 195
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-ge v7, v15, :cond_2

    .line 196
    int-to-double v0, v7

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v8, v16, v18

    .line 201
    :cond_2
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v15, v10, v16

    if-nez v15, :cond_3

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v15, v8, v16

    if-eqz v15, :cond_5

    .line 202
    :cond_3
    cmpg-double v15, v10, v8

    if-gtz v15, :cond_4

    .line 203
    move v4, v14

    .line 204
    .local v4, "desiredWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 219
    .local v3, "desiredHeight":I
    :goto_0
    invoke-static {v13, v14, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->a(III)I

    move-result v12

    .line 220
    .local v12, "width":I
    invoke-static {v6, v7, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->a(III)I

    move-result v5

    .line 222
    .local v5, "height":I
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->r:I

    .line 223
    move-object/from16 v0, p0

    iput v5, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->s:I

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->s:I

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Lcom/jiliguala/niuwa/common/widget/cropper/a/c;->a(IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 226
    .local v2, "bitmapRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v15, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 229
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->r:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->s:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setMeasuredDimension(II)V

    .line 236
    .end local v2    # "bitmapRect":Landroid/graphics/Rect;
    .end local v3    # "desiredHeight":I
    .end local v4    # "desiredWidth":I
    .end local v5    # "height":I
    .end local v8    # "viewToBitmapHeightRatio":D
    .end local v10    # "viewToBitmapWidthRatio":D
    .end local v12    # "width":I
    :goto_1
    return-void

    .line 206
    .restart local v8    # "viewToBitmapHeightRatio":D
    .restart local v10    # "viewToBitmapWidthRatio":D
    :cond_4
    move v3, v7

    .line 207
    .restart local v3    # "desiredHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    move-wide/from16 v0, v16

    double-to-int v4, v0

    .restart local v4    # "desiredWidth":I
    goto :goto_0

    .line 215
    .end local v3    # "desiredHeight":I
    .end local v4    # "desiredWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 216
    .restart local v4    # "desiredWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .restart local v3    # "desiredHeight":I
    goto :goto_0

    .line 233
    .end local v3    # "desiredHeight":I
    .end local v4    # "desiredWidth":I
    .end local v8    # "viewToBitmapHeightRatio":D
    .end local v10    # "viewToBitmapWidthRatio":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    sget-object v16, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->f:Landroid/graphics/Rect;

    invoke-virtual/range {v15 .. v16}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 138
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 140
    check-cast v0, Landroid/os/Bundle;

    .line 142
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "DEGREES_ROTATED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    .line 145
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    .line 146
    .local v1, "tempDegrees":I
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->a(I)V

    .line 147
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    .line 150
    .end local v1    # "tempDegrees":I
    :cond_0
    const-string v2, "instanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 155
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    const-string v1, "DEGREES_ROTATED"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-static {v1, p0}, Lcom/jiliguala/niuwa/common/widget/cropper/a/c;->a(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 162
    .local v0, "bitmapRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 166
    .end local v0    # "bitmapRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 432
    return-void
.end method

.method public setGuidelines(I)V
    .locals 1
    .param p1, "guidelines"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->setGuidelines(I)V

    .line 443
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    .line 281
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->o:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->b()V

    .line 286
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
