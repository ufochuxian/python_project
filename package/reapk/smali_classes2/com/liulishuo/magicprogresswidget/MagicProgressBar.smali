.class public Lcom/liulishuo/magicprogresswidget/MagicProgressBar;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/a/a/b;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:Z

.field private g:Lcn/a/a/d;

.field private final h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
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
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 77
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    .line 84
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v1, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    sget v1, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressBar_mpb_percent:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->e:F

    .line 86
    sget v1, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressBar_mpb_fill_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a:I

    .line 87
    sget v1, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressBar_mpb_background_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->b:I

    .line 88
    sget v1, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressBar_mpb_flat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->d:Landroid/graphics/Paint;

    .line 100
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v1
.end method

.method private getSmoothHandler()Lcn/a/a/d;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->g:Lcn/a/a/d;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcn/a/a/d;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcn/a/a/d;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->g:Lcn/a/a/d;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->g:Lcn/a/a/d;

    return-object v0
.end method


# virtual methods
.method public a(FJ)V
    .locals 2
    .param p1, "percent"    # F
    .param p2, "durationMillis"    # J

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getSmoothHandler()Lcn/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/a/a/d;->a(FJ)V

    .line 166
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->b:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a:I

    return v0
.end method

.method public getPercent()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->e:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 192
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 194
    iget v7, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->e:F

    .line 196
    .local v7, "drawPercent":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int v9, v0, v1

    .line 200
    .local v9, "height":I
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getPaddingRight()I

    move-result v1

    sub-int v12, v0, v1

    .line 202
    .local v12, "width":I
    int-to-float v0, v12

    mul-float v8, v7, v0

    .line 203
    .local v8, "fillWidth":F
    int-to-float v0, v9

    div-float v11, v0, v2

    .line 206
    .local v11, "radius":F
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 207
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 208
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    int-to-float v1, v12

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 209
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    int-to-float v1, v9

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 215
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->b:I

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 225
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a:I

    if-eqz v0, :cond_6

    cmpl-float v0, v8, v3

    if-lez v0, :cond_6

    .line 233
    int-to-float v0, v12

    cmpl-float v0, v8, v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 235
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 289
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->f:Z

    if-eqz v0, :cond_7

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 243
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    cmpl-float v0, v8, v11

    if-lez v0, :cond_2

    move v0, v11

    :goto_1
    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 244
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 245
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    mul-float v1, v11, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 246
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    cmpg-float v0, v8, v11

    if-gtz v0, :cond_3

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 243
    goto :goto_1

    .line 253
    :cond_3
    int-to-float v0, v12

    sub-float v10, v0, v11

    .line 255
    .local v10, "leftAreaWidth":F
    cmpl-float v0, v8, v10

    if-lez v0, :cond_4

    move v6, v10

    .line 256
    .local v6, "centerX":F
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v11, v0, Landroid/graphics/RectF;->left:F

    .line 257
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v6, v0, Landroid/graphics/RectF;->right:F

    .line 258
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    cmpg-float v0, v8, v10

    if-gtz v0, :cond_5

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .end local v6    # "centerX":F
    :cond_4
    move v6, v8

    .line 255
    goto :goto_2

    .line 264
    .restart local v6    # "centerX":F
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    sub-float v1, v10, v11

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 266
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 267
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 269
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    int-to-float v1, v12

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 270
    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    .end local v6    # "centerX":F
    .end local v10    # "leftAreaWidth":F
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 274
    :cond_7
    mul-float v0, v11, v2

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_8

    .line 275
    :try_start_4
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 276
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 277
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    mul-float v1, v11, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 278
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 287
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    .line 280
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 281
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v11, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 121
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->b:I

    if-eq v0, p1, :cond_0

    .line 122
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->b:I

    .line 123
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->invalidate()V

    .line 126
    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a:I

    if-eq v0, p1, :cond_0

    .line 110
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a:I

    .line 111
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->invalidate()V

    .line 115
    :cond_0
    return-void
.end method

.method public setFlat(Z)V
    .locals 1
    .param p1, "flat"    # Z

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->f:Z

    if-eq v0, p1, :cond_0

    .line 180
    iput-boolean p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->f:Z

    .line 182
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->invalidate()V

    .line 184
    :cond_0
    return-void
.end method

.method public setPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 144
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 145
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->g:Lcn/a/a/d;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->g:Lcn/a/a/d;

    invoke-virtual {v0, p1}, Lcn/a/a/d;->c(F)V

    .line 151
    :cond_0
    iget v0, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 152
    iput p1, p0, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->e:F

    .line 153
    invoke-virtual {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->invalidate()V

    .line 156
    :cond_1
    return-void
.end method

.method public setSmoothPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->getSmoothHandler()Lcn/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/a/a/d;->d(F)V

    .line 161
    return-void
.end method
