.class public Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:I = 0x6

.field private static final b:F = 100.0f

.field private static final c:F

.field private static final d:F

.field private static final e:F

.field private static final f:F

.field private static final g:F = 20.0f

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2


# instance fields
.field private A:F

.field private B:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Rect;

.field private p:F

.field private q:F

.field private r:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field private t:Z

.field private u:I

.field private v:I

.field private w:F

.field private x:I

.field private y:Z

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 47
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/a/d;->b()F

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->c:F

    .line 48
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/a/d;->c()F

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->d:F

    .line 49
    sget v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->c:F

    div-float/2addr v0, v2

    sget v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->d:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->e:F

    .line 50
    sget v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->c:F

    div-float/2addr v0, v2

    sget v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->e:F

    add-float/2addr v0, v1

    sput v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->t:Z

    .line 98
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    .line 99
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    .line 103
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 109
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    .line 120
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->t:Z

    .line 98
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    .line 99
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    .line 103
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 109
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    .line 125
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method private a(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 535
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 536
    .local v2, "left":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 537
    .local v3, "top":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 538
    .local v4, "right":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 540
    .local v5, "bottom":F
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->p:F

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(FFFFFFF)Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    .line 542
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    move v7, p1

    move v8, p2

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static/range {v6 .. v12}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;FFFFFF)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->r:Landroid/util/Pair;

    .line 550
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 357
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->p:F

    .line 359
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->q:F

    .line 361
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/d;->a(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->k:Landroid/graphics/Paint;

    .line 362
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/a/d;->a()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->l:Landroid/graphics/Paint;

    .line 363
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/d;->b(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->n:Landroid/graphics/Paint;

    .line 364
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/d;->c(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    .line 367
    sget v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->e:F

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    .line 368
    sget v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->f:F

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->z:F

    .line 369
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    .line 372
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->x:I

    .line 373
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 449
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    .line 450
    .local v17, "left":F
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 451
    .local v3, "top":F
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v14

    .line 452
    .local v14, "right":F
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 455
    .local v5, "bottom":F
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v1

    const/high16 v4, 0x40400000    # 3.0f

    div-float v19, v1, v4

    .line 457
    .local v19, "oneThirdCropWidth":F
    add-float v2, v17, v19

    .line 458
    .local v2, "x1":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 459
    sub-float v7, v14, v19

    .line 460
    .local v7, "x2":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->l:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v8, v3

    move v9, v7

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 463
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v1

    const/high16 v4, 0x40400000    # 3.0f

    div-float v18, v1, v4

    .line 465
    .local v18, "oneThirdCropHeight":F
    add-float v10, v3, v18

    .line 466
    .local v10, "y1":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->l:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v9, v17

    move v11, v14

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 467
    sub-float v13, v5, v18

    .line 468
    .local v13, "y2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->l:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move/from16 v12, v17

    move v15, v13

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 469
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmapRect"    # Landroid/graphics/Rect;

    .prologue
    .line 473
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v12

    .line 474
    .local v12, "left":F
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 475
    .local v5, "top":F
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v19

    .line 476
    .local v19, "right":F
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 493
    .local v8, "bottom":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->n:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 494
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->n:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 495
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->n:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v5

    move v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 496
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v1

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->n:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v13, p1

    move/from16 v14, v19

    move v15, v5

    move/from16 v17, v8

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 497
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "bitmapRect"    # Landroid/graphics/Rect;

    .prologue
    const v9, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x42200000    # 40.0f

    .line 385
    iget-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    if-nez v8, :cond_0

    .line 386
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    .line 388
    :cond_0
    iget-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->t:Z

    if-eqz v8, :cond_4

    .line 393
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->a(Landroid/graphics/Rect;)F

    move-result v8

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 395
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 396
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 398
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v0, v8, v12

    .line 401
    .local v0, "centerX":F
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 402
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    invoke-static {v8, v9, v10}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->a(FFF)F

    move-result v8

    .line 401
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 406
    .local v3, "cropWidth":F
    cmpl-float v8, v3, v11

    if-nez v8, :cond_1

    .line 407
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    sub-float/2addr v8, v9

    div-float v8, v11, v8

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 409
    :cond_1
    div-float v5, v3, v12

    .line 410
    .local v5, "halfCropWidth":F
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sub-float v9, v0, v5

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 411
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    add-float v9, v0, v5

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 445
    .end local v0    # "centerX":F
    .end local v3    # "cropWidth":F
    .end local v5    # "halfCropWidth":F
    :goto_0
    return-void

    .line 415
    :cond_2
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 416
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 418
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v1, v8, v12

    .line 421
    .local v1, "centerY":F
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 422
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    invoke-static {v8, v9, v10}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->b(FFF)F

    move-result v8

    .line 421
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 426
    .local v2, "cropHeight":F
    cmpl-float v8, v2, v11

    if-nez v8, :cond_3

    .line 427
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 429
    :cond_3
    div-float v4, v2, v12

    .line 430
    .local v4, "halfCropHeight":F
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sub-float v9, v1, v4

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 431
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    add-float v9, v1, v4

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto :goto_0

    .line 437
    .end local v1    # "centerY":F
    .end local v2    # "cropHeight":F
    .end local v4    # "halfCropHeight":F
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float v6, v9, v8

    .line 438
    .local v6, "horizontalPadding":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v9, v8

    .line 440
    .local v7, "verticalPadding":F
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 441
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v9, v7

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 442
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 443
    sget-object v8, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v9, v7

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 137
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 138
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->r:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p1, v0

    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->r:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p2, v0

    .line 586
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->t:Z

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->q:F

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->updateCropWindow(FFFLandroid/graphics/Rect;F)V

    .line 591
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->q:F

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->updateCropWindow(FFLandroid/graphics/Rect;F)V

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 501
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v7

    .line 502
    .local v7, "left":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    .line 503
    .local v9, "top":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 504
    .local v8, "right":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v6

    .line 509
    .local v6, "bottom":F
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v1, v7, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->z:F

    sub-float v2, v9, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v3, v7, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    add-float v4, v9, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 510
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v2, v9, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    add-float v3, v7, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v4, v9, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 513
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v1, v8, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->z:F

    sub-float v2, v9, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v3, v8, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    add-float v4, v9, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 514
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v2, v9, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    sub-float v3, v8, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v4, v9, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 517
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v1, v7, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->z:F

    add-float v2, v6, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    sub-float v3, v7, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    sub-float v4, v6, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 518
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v2, v6, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    add-float v3, v7, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v4, v6, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 521
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v1, v8, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->z:F

    add-float v2, v6, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v3, v8, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    sub-float v4, v6, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 522
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v2, v6, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->B:F

    sub-float v3, v8, v0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->A:F

    add-float v4, v6, v0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 524
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    .line 563
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public a(IZII)V
    .locals 2
    .param p1, "guidelines"    # I
    .param p2, "fixAspectRatio"    # Z
    .param p3, "aspectRatioX"    # I
    .param p4, "aspectRatioY"    # I

    .prologue
    .line 330
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Guideline value must be set between 0 and 2. See documentation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->x:I

    .line 335
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->t:Z

    .line 337
    if-gtz p3, :cond_2

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_2
    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    .line 341
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 344
    if-gtz p4, :cond_3

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_3
    iput p4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    .line 348
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 351
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 233
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 160
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 163
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Canvas;)V

    .line 174
    :cond_0
    :goto_0
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->b(Landroid/graphics/Canvas;)V

    .line 177
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->s:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 168
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->x:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Rect;)V

    .line 150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(FF)V

    move v0, v1

    .line 193
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 198
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->c()V

    move v0, v1

    .line 199
    goto :goto_0

    .line 202
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->b(FF)V

    .line 203
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 204
    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatioX(I)V
    .locals 2
    .param p1, "aspectRatioX"    # I

    .prologue
    .line 278
    if-gtz p1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    .line 282
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 284
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 289
    :cond_1
    return-void
.end method

.method public setAspectRatioY(I)V
    .locals 2
    .param p1, "aspectRatioY"    # I

    .prologue
    .line 298
    if-gtz p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    .line 302
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->u:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->w:F

    .line 304
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Rect;)V

    .line 306
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 309
    :cond_1
    return-void
.end method

.method public setBitmapRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bitmapRect"    # Landroid/graphics/Rect;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Rect;)V

    .line 220
    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->t:Z

    .line 265
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Rect;)V

    .line 267
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 269
    :cond_0
    return-void
.end method

.method public setGuidelines(I)V
    .locals 2
    .param p1, "guidelines"    # I

    .prologue
    .line 243
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Guideline value must be set between 0 and 2. See documentation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->x:I

    .line 248
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->y:Z

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->o:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a(Landroid/graphics/Rect;)V

    .line 250
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 253
    :cond_2
    return-void
.end method
