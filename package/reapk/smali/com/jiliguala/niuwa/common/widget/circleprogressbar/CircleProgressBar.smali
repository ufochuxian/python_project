.class public Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x9

.field private static final b:I = 0x1e000000

.field private static final c:I = 0x3d000000

.field private static final d:F = 0.0f

.field private static final e:F = 1.75f

.field private static final f:F = 3.5f

.field private static final g:I = 0x4

.field private static final h:I = -0x50506

.field private static final i:I = 0x38

.field private static final j:I = 0x3


# instance fields
.field private A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

.field private B:Landroid/graphics/drawable/ShapeDrawable;

.field private C:Z

.field private D:[I

.field private k:Landroid/view/animation/Animation$AnimationListener;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/graphics/Paint;

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v2

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->D:[I

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v2

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->D:[I

    .line 86
    invoke-direct {p0, p1, p2, v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->D:[I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v5, -0x50506

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    sget-object v4, Lcom/jiliguala/niuwa/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 119
    .local v2, "density":F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->m:I

    .line 121
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->n:I

    .line 122
    new-array v4, v6, [I

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->n:I

    aput v5, v4, v7

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->D:[I

    .line 124
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 127
    .local v1, "colorsId":I
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->D:[I

    .line 131
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->u:I

    .line 133
    const/16 v4, 0x9

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 134
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->o:I

    .line 135
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->p:I

    .line 136
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->q:I

    .line 137
    const/16 v4, 0xb

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->x:I

    .line 138
    const/16 v4, 0xa

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->w:I

    .line 140
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->z:Z

    .line 141
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->C:Z

    .line 143
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->r:I

    .line 144
    const/4 v4, 0x5

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->s:I

    .line 145
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 146
    .local v3, "textVisible":I
    if-eq v3, v6, :cond_1

    .line 147
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->y:Z

    .line 150
    :cond_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->v:Landroid/graphics/Paint;

    .line 151
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->v:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->v:Landroid/graphics/Paint;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->w:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->v:Landroid/graphics/Paint;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->x:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->v:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    new-instance v4, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    .line 157
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-super {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->z:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->y:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->C:Z

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->s:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->r:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->k:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->k:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 269
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->k:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->k:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 261
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->stop()V

    .line 370
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->setVisible(ZZ)Z

    .line 372
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 370
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 377
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->stop()V

    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0, v1, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->setVisible(ZZ)Z

    .line 381
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 221
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->y:Z

    if-eqz v3, :cond_0

    .line 222
    const-string v3, "%s%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->r:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->x:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    sub-int v1, v3, v4

    .line 224
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->x:I

    div-int/lit8 v4, v4, 0x4

    add-int v2, v3, v4

    .line 225
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 227
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 174
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 176
    .local v2, "density":F
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->t:I

    .line 177
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->t:I

    if-gtz v3, :cond_0

    .line 178
    float-to-int v3, v2

    mul-int/lit8 v3, v3, 0x38

    move-object/from16 v0, p0

    iput v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->t:I

    .line 180
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->C:Z

    if-eqz v3, :cond_1

    .line 181
    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v17, v0

    .line 182
    .local v17, "shadowYOffset":I
    const/4 v3, 0x0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v16, v0

    .line 183
    .local v16, "shadowXOffset":I
    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->l:I

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->B:Landroid/graphics/drawable/ShapeDrawable;

    .line 187
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v4/view/ap;->m(Landroid/view/View;F)V

    .line 197
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->B:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->m:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->B:Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    .end local v16    # "shadowXOffset":I
    .end local v17    # "shadowYOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->m:I

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->b(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->D:[I

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a([I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->t:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->t:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->u:I

    if-gtz v8, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->t:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->o:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x4

    int-to-double v8, v8

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->o:I

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->p:I

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->o:I

    mul-int/lit8 v12, v12, 0x4

    int-to-float v12, v12

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->q:I

    if-gez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->o:I

    mul-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    :goto_3
    invoke-virtual/range {v3 .. v13}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(DDDDFF)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->b(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(F)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(Z)V

    .line 210
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->setAlpha(I)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->start()V

    .line 216
    :cond_3
    return-void

    .line 189
    .restart local v16    # "shadowXOffset":I
    .restart local v17    # "shadowYOffset":I
    :cond_4
    new-instance v14, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->l:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->l:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;-><init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;II)V

    .line 190
    .local v14, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->B:Landroid/graphics/drawable/ShapeDrawable;

    .line 191
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->B:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/support/v4/view/ap;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->B:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->l:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    const/high16 v7, 0x1e000000

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 193
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->l:I

    .line 195
    .local v15, "padding":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v15, v15, v15}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setPadding(IIII)V

    goto/16 :goto_0

    .line 202
    .end local v14    # "oval":Landroid/graphics/drawable/shapes/OvalShape;
    .end local v15    # "padding":I
    .end local v16    # "shadowXOffset":I
    .end local v17    # "shadowYOffset":I
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->u:I

    int-to-double v8, v8

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->p:I

    int-to-float v12, v12

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->q:I

    int-to-float v13, v13

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 167
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->l:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->l:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setMeasuredDimension(II)V

    .line 170
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->k:Landroid/view/animation/Animation$AnimationListener;

    .line 253
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3
    .param p1, "colorRes"    # I

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setCircleBackgroundEnabled(Z)V
    .locals 0
    .param p1, "enableCircleBackground"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->C:Z

    .line 342
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 293
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->D:[I

    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a([I)V

    .line 297
    :cond_0
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 279
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [I

    .line 280
    .local v0, "colorRes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 281
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setColorSchemeColors([I)V

    .line 284
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 249
    return-void
.end method

.method public final setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 232
    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 245
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->s:I

    .line 323
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 332
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->r:I

    .line 334
    :cond_0
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .param p1, "showArrow"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->z:Z

    .line 240
    return-void
.end method

.method public setShowProgressText(Z)V
    .locals 0
    .param p1, "mIfDrawText"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->y:Z

    .line 315
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    if-eqz v0, :cond_0

    .line 353
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->setVisible(ZZ)Z

    .line 354
    if-eqz p1, :cond_2

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->stop()V

    .line 363
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 353
    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->stop()V

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->A:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->start()V

    goto :goto_1
.end method
