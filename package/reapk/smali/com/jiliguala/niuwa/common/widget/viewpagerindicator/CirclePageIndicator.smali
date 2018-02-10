.class public Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;
    }
.end annotation


# static fields
.field private static final a:I = -0x1


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:I

.field private f:F

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Landroid/support/v4/view/ViewPager$f;

.field private i:I

.field private j:I

.field private k:F

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:F

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const v0, 0x7f040239

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 49
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 50
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 51
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    .line 63
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->q:F

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 114
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 81
    .local v16, "res":Landroid/content/res/Resources;
    const v17, 0x7f06006a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 82
    .local v11, "defaultPageColor":I
    const v17, 0x7f060069

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 83
    .local v9, "defaultFillColor":I
    const v17, 0x7f0a0006

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 84
    .local v10, "defaultOrientation":I
    const v17, 0x7f06006b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 85
    .local v14, "defaultStrokeColor":I
    const v17, 0x7f070098

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 86
    .local v15, "defaultStrokeWidth":F
    const v17, 0x7f070097

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 87
    .local v12, "defaultRadius":F
    const v17, 0x7f050005

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 88
    .local v8, "defaultCentered":Z
    const v17, 0x7f050006

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 91
    .local v13, "defaultSnap":Z
    sget-object v17, Lcom/jiliguala/niuwa/R$styleable;->CirclePageIndicator:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 93
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->n:Z

    .line 94
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->m:I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    .line 103
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->o:Z

    .line 105
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 106
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 113
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/bb;->a(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->p:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 460
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 461
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 463
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 465
    :cond_0
    move v1, v3

    .line 475
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 468
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/af;->getCount()I

    move-result v0

    .line 469
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 471
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 472
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private b(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 486
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 487
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 489
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 491
    move v0, v2

    .line 500
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 494
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 496
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 497
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 383
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 384
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->n:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->o:Z

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 399
    return-void
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->m:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 198
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/af;->getCount()I

    move-result v3

    .line 204
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 209
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->m:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v12

    .line 219
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v11

    .line 220
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v10

    .line 221
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v15

    .line 229
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    move/from16 v17, v0

    const/high16 v18, 0x40800000    # 4.0f

    mul-float v16, v17, v18

    .line 230
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 231
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 232
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->n:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 233
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    .line 240
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 245
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-ge v8, v3, :cond_9

    .line 246
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 247
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->m:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 248
    move v5, v7

    .line 249
    .local v5, "dX":F
    move v6, v14

    .line 255
    .local v6, "dY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_5

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_6

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 223
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getHeight()I

    move-result v12

    .line 224
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v11

    .line 225
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v10

    .line 226
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 251
    .restart local v7    # "drawLong":F
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_8
    move v5, v14

    .line 252
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_3

    .line 266
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->o:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->j:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 267
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->o:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->k:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 270
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->m:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 271
    add-float v5, v9, v4

    .line 272
    .restart local v5    # "dX":F
    move v6, v14

    .line 277
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 266
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    move/from16 v17, v0

    goto :goto_4

    .line 274
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 275
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 445
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->m:I

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 403
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->l:I

    .line 405
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    .line 413
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->k:F

    .line 414
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 416
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 419
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->o:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->l:I

    if-nez v0, :cond_1

    .line 424
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    .line 425
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->j:I

    .line 426
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 432
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 505
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;

    .line 506
    .local v0, "savedState":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 507
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;->a:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    .line 508
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;->a:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->j:I

    .line 509
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 510
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 514
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 515
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;-><init>(Landroid/os/Parcelable;)V

    .line 516
    .local v0, "savedState":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    iput v2, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator$a;->a:I

    .line 517
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 282
    const/4 v12, 0x1

    .line 361
    :goto_0
    return v12

    .line 284
    :cond_0
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/af;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 285
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 289
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 361
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 291
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->q:F

    goto :goto_1

    .line 296
    :pswitch_2
    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    invoke-static {p1, v12}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 297
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 298
    .local v11, "x":F
    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->q:F

    sub-float v3, v11, v12

    .line 300
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->r:Z

    if-nez v12, :cond_4

    .line 301
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->p:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 302
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->r:Z

    .line 306
    :cond_4
    iget-boolean v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->r:Z

    if-eqz v12, :cond_3

    .line 307
    iput v11, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->q:F

    .line 308
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 309
    :cond_5
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 318
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->r:Z

    if-nez v12, :cond_9

    .line 319
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/af;->getCount()I

    move-result v2

    .line 320
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 321
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 322
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 324
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 325
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 326
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 328
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 329
    :cond_7
    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 330
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 331
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 333
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 337
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->r:Z

    .line 338
    const/4 v12, -0x1

    iput v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    .line 339
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 340
    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 344
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v5

    .line 345
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->q:F

    .line 346
    invoke-static {p1, v5}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    goto/16 :goto_1

    .line 351
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v8

    .line 352
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 353
    .local v7, "pointerId":I
    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    if-ne v7, v12, :cond_a

    .line 354
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 355
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    .line 357
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->e:I

    invoke-static {p1, v12}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->q:F

    goto/16 :goto_1

    .line 354
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->n:Z

    .line 122
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 123
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 392
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->i:I

    .line 393
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 394
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 141
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager$f;

    .line 437
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->m:I

    .line 152
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 158
    return-void

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 132
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->f:F

    .line 184
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 185
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->o:Z

    .line 193
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 194
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 167
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 176
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_2
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 377
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method
