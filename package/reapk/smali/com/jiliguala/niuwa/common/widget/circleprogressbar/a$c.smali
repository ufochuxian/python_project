.class Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:[I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Landroid/graphics/Path;

.field private r:F

.field private s:D

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a:Landroid/graphics/RectF;

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    .line 401
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c:Landroid/graphics/Paint;

    .line 404
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e:Landroid/graphics/Paint;

    .line 405
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->f:F

    .line 406
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->g:F

    .line 407
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->h:F

    .line 408
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->i:F

    .line 409
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->j:F

    .line 428
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 434
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 478
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->p:Z

    if-eqz v3, :cond_1

    .line 479
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    if-nez v3, :cond_2

    .line 480
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    .line 481
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 488
    :goto_0
    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->s:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 489
    .local v0, "x":F
    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->s:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 495
    .local v1, "y":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 496
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->r:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->r:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v10

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->u:I

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->r:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 498
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->r:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v10

    sub-float v4, v0, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 499
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 501
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k:[I

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->l:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    move p3, v2

    .end local p3    # "sweepAngle":F
    :cond_0
    add-float v3, p2, p3

    sub-float v2, v3, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 504
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 506
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_1
    return-void

    .line 483
    .restart local p3    # "sweepAngle":F
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->l:I

    .line 534
    return-void
.end method

.method public a(D)V
    .locals 1
    .param p1, "centerRadius"    # D

    .prologue
    .line 638
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->s:D

    .line 639
    return-void
.end method

.method public a(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 566
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->i:F

    .line 567
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 568
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n()V

    .line 569
    return-void
.end method

.method public a(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 450
    float-to-int v0, p1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->t:I

    .line 451
    float-to-int v0, p2

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->u:I

    .line 452
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->w:I

    .line 440
    return-void
.end method

.method public a(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 613
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v2

    .line 615
    .local v1, "minEdge":F
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->s:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 616
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->i:F

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 620
    .local v0, "insets":F
    :goto_0
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->j:F

    .line 621
    return-void

    .line 618
    .end local v0    # "insets":F
    :cond_1
    div-float v2, v1, v6

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->s:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "insets":F
    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 458
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a:Landroid/graphics/RectF;

    .line 459
    .local v1, "arcBounds":Landroid/graphics/RectF;
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 460
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->j:F

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->j:F

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 462
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->f:F

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->h:F

    add-float/2addr v0, v4

    mul-float v2, v0, v5

    .line 463
    .local v2, "startAngle":F
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->g:F

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->h:F

    add-float/2addr v0, v4

    mul-float v6, v0, v5

    .line 464
    .local v6, "endAngle":F
    sub-float v3, v6, v2

    .line 465
    .local v3, "sweepAngle":F
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k:[I

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->l:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 468
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 470
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->v:I

    const/16 v4, 0xff

    if-ge v0, v4, :cond_0

    .line 471
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e:Landroid/graphics/Paint;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->w:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e:Landroid/graphics/Paint;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->v:I

    rsub-int v4, v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 473
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 475
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 538
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n()V

    .line 539
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->p:Z

    if-eq v0, p1, :cond_0

    .line 647
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->p:Z

    .line 648
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n()V

    .line 650
    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 514
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k:[I

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(I)V

    .line 517
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->v:I

    return v0
.end method

.method public b(F)V
    .locals 0
    .param p1, "startTrim"    # F

    .prologue
    .line 578
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->f:F

    .line 579
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n()V

    .line 580
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 525
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->l:I

    .line 526
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->i:F

    return v0
.end method

.method public c(F)V
    .locals 0
    .param p1, "endTrim"    # F

    .prologue
    .line 597
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->g:F

    .line 598
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n()V

    .line 599
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 553
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->v:I

    .line 554
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->f:F

    return v0
.end method

.method public d(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 608
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->h:F

    .line 609
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n()V

    .line 610
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->m:F

    return v0
.end method

.method public e(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 657
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->r:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 658
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->r:F

    .line 659
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n()V

    .line 661
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->g:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->h:F

    return v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->j:F

    return v0
.end method

.method public j()D
    .locals 2

    .prologue
    .line 629
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->s:D

    return-wide v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->o:F

    return v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->f:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->m:F

    .line 676
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->g:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n:F

    .line 677
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->h:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->o:F

    .line 678
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 684
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->m:F

    .line 685
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->n:F

    .line 686
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->o:F

    .line 687
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(F)V

    .line 688
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c(F)V

    .line 689
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->d(F)V

    .line 690
    return-void
.end method
