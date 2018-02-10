.class public Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/a/a/b;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:Lcn/a/a/d;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/RectF;

.field private r:[I

.field private s:[I

.field private t:[I

.field private u:[F

.field private v:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/high16 v5, 0xff0000

    const v4, 0xff00

    .line 147
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    and-int/2addr v3, v5

    shr-int/lit8 v2, v3, 0x10

    .line 148
    .local v2, "endR":I
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    and-int/2addr v3, v4

    shr-int/lit8 v1, v3, 0x8

    .line 149
    .local v1, "endG":I
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    and-int/lit16 v0, v3, 0xff

    .line 151
    .local v0, "endB":I
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->l:I

    .line 152
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->n:I

    .line 153
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->m:I

    .line 155
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->l:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->i:I

    .line 156
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->n:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->k:I

    .line 157
    iget v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->m:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->j:I

    .line 158
    return-void
.end method

.method private a(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 292
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->l:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->n:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->j:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->m:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/high16 v1, -0x1000000

    add-int/2addr v0, v1

    iput v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->d:I

    .line 295
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 81
    const/high16 v0, -0x40800000    # -1.0f

    .line 82
    .local v0, "defaultPercent":F
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const v0, 0x3f19999a    # 0.6f

    .line 87
    :cond_0
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 88
    .local v1, "strokeWdithDefaultValue":I
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 89
    :cond_1
    iput v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    .line 90
    iput v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->f:F

    .line 91
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/liulishuo/magicprogresswidget/b$b;->mpc_start_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    .line 92
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/liulishuo/magicprogresswidget/b$b;->mpc_end_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    .line 93
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/liulishuo/magicprogresswidget/b$b;->mpc_default_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    .line 114
    :cond_2
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    .line 115
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 119
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 121
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->o:Landroid/graphics/Paint;

    .line 122
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->o:Landroid/graphics/Paint;

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->o:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->o:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->p:Landroid/graphics/Paint;

    .line 128
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    invoke-direct {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a()V

    .line 135
    new-array v3, v10, [I

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    aput v4, v3, v7

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->d:I

    aput v4, v3, v6

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    aput v4, v3, v8

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    aput v4, v3, v9

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->r:[I

    .line 136
    new-array v3, v8, [I

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    aput v4, v3, v7

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    aput v4, v3, v6

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->s:[I

    .line 137
    new-array v3, v8, [I

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    aput v4, v3, v7

    iget v4, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    aput v4, v3, v6

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->t:[I

    .line 139
    new-array v3, v10, [F

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->u:[F

    .line 140
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->u:[F

    const/4 v4, 0x0

    aput v4, v3, v7

    .line 141
    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->u:[F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v9

    .line 143
    new-array v3, v8, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->v:[F

    .line 144
    return-void

    .line 97
    :cond_3
    const/4 v2, 0x0

    .line 99
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v3, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressCircle:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 100
    sget v3, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressCircle_mpc_percent:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->f:F

    .line 101
    sget v3, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressCircle_mpc_stroke_width:I

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    .line 102
    sget v3, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressCircle_mpc_start_color:I

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/liulishuo/magicprogresswidget/b$b;->mpc_start_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    .line 103
    sget v3, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressCircle_mpc_end_color:I

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/liulishuo/magicprogresswidget/b$b;->mpc_end_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    .line 104
    sget v3, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressCircle_mpc_default_color:I

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/liulishuo/magicprogresswidget/b$b;->mpc_default_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 106
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    throw v3

    .line 143
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSmoothHandler()Lcn/a/a/d;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->h:Lcn/a/a/d;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcn/a/a/d;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcn/a/a/d;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->h:Lcn/a/a/d;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->h:Lcn/a/a/d;

    return-object v0
.end method


# virtual methods
.method public a(FJ)V
    .locals 2
    .param p1, "percent"    # F
    .param p2, "durationMillis"    # J

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getSmoothHandler()Lcn/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/a/a/d;->a(FJ)V

    .line 186
    return-void
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    return v0
.end method

.method public getEndColor()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    return v0
.end method

.method public getPercent()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->f:F

    return v0
.end method

.method public getStartColor()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 328
    .local v12, "restore":I
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 329
    .local v7, "cx":I
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 330
    .local v8, "cy":I
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    div-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    .line 332
    .local v11, "radius":I
    iget v9, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->f:F

    .line 333
    .local v9, "drawPercent":F
    float-to-double v0, v9

    const-wide v2, 0x3fef0a3d70a3d70aL    # 0.97

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    .line 335
    const v9, 0x3f7851ec    # 0.97f

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 340
    const/high16 v0, -0x3d4c0000    # -90.0f

    int-to-float v1, v7

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 343
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v9, v0

    if-gez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_3

    .line 344
    invoke-direct {p0, v9}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a(F)V

    .line 345
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->r:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->d:I

    aput v2, v0, v1

    .line 346
    iget-object v6, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->r:[I

    .line 347
    .local v6, "colors":[I
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->u:[F

    const/4 v1, 0x1

    aput v9, v0, v1

    .line 348
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->u:[F

    const/4 v1, 0x2

    aput v9, v0, v1

    .line 349
    iget-object v10, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->u:[F

    .line 358
    .local v10, "positions":[F
    :goto_0
    new-instance v13, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v13, v0, v1, v6, v10}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 359
    .local v13, "sweepGradient":Landroid/graphics/SweepGradient;
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 360
    int-to-float v0, v7

    int-to-float v1, v8

    int-to-float v2, v11

    iget-object v3, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 363
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_2

    .line 366
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v9, v0

    if-gez v0, :cond_1

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 368
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, v9

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    int-to-float v1, v7

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 370
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 375
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 377
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 383
    :cond_2
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 385
    return-void

    .line 350
    .end local v6    # "colors":[I
    .end local v10    # "positions":[F
    .end local v13    # "sweepGradient":Landroid/graphics/SweepGradient;
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v9, v0

    if-nez v0, :cond_4

    .line 351
    iget-object v6, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->s:[I

    .line 352
    .restart local v6    # "colors":[I
    iget-object v10, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->v:[F

    .restart local v10    # "positions":[F
    goto :goto_0

    .line 355
    .end local v6    # "colors":[I
    .end local v10    # "positions":[F
    :cond_4
    iget-object v6, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->t:[I

    .line 356
    .restart local v6    # "colors":[I
    iget-object v10, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->v:[F

    .restart local v10    # "positions":[F
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 301
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 302
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 303
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 304
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->q:Landroid/graphics/RectF;

    iget v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 305
    return-void
.end method

.method public setDefaultColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 251
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    if-eq v0, p1, :cond_0

    .line 252
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->c:I

    .line 255
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->r:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 256
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->r:[I

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 259
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->t:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 260
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->t:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 262
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->invalidate()V

    .line 264
    :cond_0
    return-void
.end method

.method public setEndColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 227
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    if-eq v0, p1, :cond_0

    .line 228
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->b:I

    .line 230
    invoke-direct {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a()V

    .line 236
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->s:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 239
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->invalidate()V

    .line 241
    :cond_0
    return-void
.end method

.method public setPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 164
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 165
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 167
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->h:Lcn/a/a/d;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->h:Lcn/a/a/d;

    invoke-virtual {v0, p1}, Lcn/a/a/d;->c(F)V

    .line 171
    :cond_0
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 172
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->f:F

    .line 173
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->invalidate()V

    .line 176
    :cond_1
    return-void
.end method

.method public setSmoothPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->getSmoothHandler()Lcn/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/a/a/d;->d(F)V

    .line 181
    return-void
.end method

.method public setStartColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 203
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    if-eq v0, p1, :cond_0

    .line 204
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a:I

    .line 206
    invoke-direct {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->a()V

    .line 209
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->r:[I

    aput p1, v0, v1

    .line 211
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->s:[I

    aput p1, v0, v1

    .line 215
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->invalidate()V

    .line 217
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 274
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    if-eq v0, p1, :cond_0

    .line 275
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->e:I

    .line 277
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->g:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 280
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressCircle;->requestLayout()V

    .line 282
    :cond_0
    return-void
.end method
