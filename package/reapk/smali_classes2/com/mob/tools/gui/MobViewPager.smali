.class public Lcom/mob/tools/gui/MobViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x1f4


# instance fields
.field private d:I

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Scroller;

.field private j:I

.field private k:I

.field private l:Lcom/mob/tools/gui/j;

.field private m:Landroid/view/VelocityTracker;

.field private n:I

.field private o:F

.field private p:F

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    .line 33
    iput-boolean v0, p0, Lcom/mob/tools/gui/MobViewPager;->q:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private a(I)V
    .locals 8
    .param p1, "lastScreen"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 195
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v3, :cond_2

    .line 196
    iget-boolean v3, p0, Lcom/mob/tools/gui/MobViewPager;->q:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 199
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-lez v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    invoke-virtual {v3, v4, v5, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    .line 201
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    invoke-virtual {v3, v4, v5, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    .line 204
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 205
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 206
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    invoke-virtual {v3, v4, v5, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    .line 207
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    invoke-virtual {v3, v4, p1}, Lcom/mob/tools/gui/j;->a(II)V

    .line 248
    :cond_2
    return-void

    .line 210
    :cond_3
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-le v3, p1, :cond_6

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    sub-int/2addr v3, p1

    if-ge v0, v3, :cond_1

    .line 212
    add-int v3, p1, v0

    add-int/lit8 v1, v3, 0x1

    .line 213
    .local v1, "screen":I
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    .line 214
    .local v2, "tmp":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    .line 215
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    .line 217
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v3

    if-lt v3, v7, :cond_4

    .line 218
    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    .line 220
    :cond_4
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_5

    .line 221
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, v2, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    .line 222
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 211
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_5
    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    goto :goto_1

    .line 228
    .end local v0    # "i":I
    .end local v1    # "screen":I
    .end local v2    # "tmp":Landroid/view/View;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    sub-int v3, p1, v3

    if-ge v0, v3, :cond_1

    .line 229
    sub-int v3, p1, v0

    add-int/lit8 v1, v3, -0x1

    .line 230
    .restart local v1    # "screen":I
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    .line 231
    .restart local v2    # "tmp":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    .line 232
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    .line 234
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v3

    if-lt v3, v7, :cond_7

    .line 235
    invoke-virtual {p0, v6}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    .line 237
    :cond_7
    if-lez v1, :cond_8

    .line 238
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4, v2, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    .line 239
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;I)V

    .line 228
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    :cond_8
    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    goto :goto_3
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/gui/MobViewPager$1;

    invoke-direct {v3, p0}, Lcom/mob/tools/gui/MobViewPager$1;-><init>(Lcom/mob/tools/gui/MobViewPager;)V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 72
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->j:I

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    .line 74
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 355
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 356
    .local v2, "y":F
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->o:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v1, v4

    .line 357
    .local v1, "xDiff":I
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->p:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 359
    .local v3, "yDiff":I
    if-ge v3, v1, :cond_0

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->j:I

    if-le v1, v4, :cond_0

    .line 360
    const/4 v4, 0x1

    iput v4, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    .line 361
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->o:F

    .line 363
    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 447
    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-nez v4, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 453
    .local v3, "x1":F
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->o:F

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .line 454
    .local v1, "deltaX":I
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->o:F

    .line 456
    if-gez v1, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v4

    if-lez v4, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_0

    .line 461
    :cond_2
    if-lez v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 464
    .local v2, "lastScr":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 465
    .local v0, "availableToScroll":I
    if-lez v0, :cond_0

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method public a(IZ)V
    .locals 1
    .param p1, "whichScreen"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;->a(IZZ)V

    .line 264
    return-void
.end method

.method public a(IZZ)V
    .locals 7
    .param p1, "whichScreen"    # I
    .param p2, "immediate"    # Z
    .param p3, "skip"    # Z

    .prologue
    const/4 v2, 0x0

    .line 267
    iput-boolean p3, p0, Lcom/mob/tools/gui/MobViewPager;->q:Z

    .line 268
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v0

    mul-int v6, p1, v0

    .line 272
    .local v6, "newX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 273
    .local v3, "delta":I
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 274
    if-eqz v3, :cond_1

    .line 275
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    if-eqz p2, :cond_2

    move v5, v2

    :goto_0
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->invalidate()V

    .line 278
    return-void

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .param p1, "immediate"    # Z

    .prologue
    .line 251
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-lez v0, :cond_0

    .line 252
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    .line 254
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .prologue
    .line 257
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 258
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    .line 260
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 168
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    if-gtz v5, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollTo(II)V

    .line 174
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->postInvalidate()V

    .line 188
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 190
    .local v2, "position":F
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    invoke-virtual {v5, v2}, Lcom/mob/tools/gui/j;->a(F)V

    goto :goto_0

    .line 176
    .end local v2    # "position":F
    :cond_3
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    .line 177
    .local v1, "lastScreen":I
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 178
    .local v3, "scrX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v4

    .line 179
    .local v4, "w":I
    div-int v0, v3, v4

    .line 180
    .local v0, "index":I
    rem-int v5, v3, v4

    div-int/lit8 v6, v4, 0x2

    if-le v5, v6, :cond_4

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 183
    :cond_4
    const/4 v5, 0x0

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    .line 184
    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-eq v1, v5, :cond_2

    .line 185
    invoke-direct {p0, v1}, Lcom/mob/tools/gui/MobViewPager;->a(I)V

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    if-gtz v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getDrawingTime()J

    move-result-wide v0

    .line 158
    .local v0, "drawingTime":J
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-lez v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 162
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 163
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-nez v1, :cond_0

    .line 282
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    .line 296
    :goto_0
    return v0

    .line 285
    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 286
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-lez v1, :cond_2

    .line 287
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_0

    .line 290
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    .line 291
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 292
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, "action":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    if-eqz v3, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v5

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 310
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 314
    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_1
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    .line 320
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 324
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 325
    .local v1, "x1":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 326
    .local v2, "y1":F
    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->o:F

    .line 327
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->p:F

    .line 334
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    .line 338
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    :pswitch_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 339
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 340
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    .line 342
    :cond_4
    iput v4, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    goto :goto_1

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 136
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    if-gtz v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sub-int v2, p4, p2

    .line 141
    .local v2, "width":I
    sub-int v1, p5, p3

    .line 142
    .local v1, "height":I
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    mul-int v0, v3, v2

    .line 143
    .local v0, "cLeft":I
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-lez v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    sub-int v4, v0, v2

    invoke-virtual {v3, v4, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    add-int v4, v0, v2

    invoke-virtual {v3, v0, v6, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 147
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 148
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    add-int v4, v0, v2

    add-int v5, v0, v2

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 121
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    if-gtz v6, :cond_1

    .line 133
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredWidth()I

    move-result v5

    .line 126
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredHeight()I

    move-result v3

    .line 127
    .local v3, "height":I
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 128
    .local v1, "adjustedWidthMeasureSpec":I
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 129
    .local v0, "adjustedHeightMeasureSpec":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 130
    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 366
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-nez v8, :cond_0

    .line 443
    :goto_0
    return v6

    .line 370
    :cond_0
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 371
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    .line 373
    :cond_1
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 376
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 378
    .local v5, "x":F
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v6, v7

    .line 443
    goto :goto_0

    .line 386
    :pswitch_0
    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    if-eqz v6, :cond_2

    .line 391
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 392
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 396
    :cond_3
    iput v5, p0, Lcom/mob/tools/gui/MobViewPager;->o:F

    goto :goto_1

    .line 400
    :pswitch_1
    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    if-ne v6, v7, :cond_4

    .line 401
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 408
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    if-ne v6, v7, :cond_2

    .line 409
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 414
    :pswitch_2
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    if-ne v8, v7, :cond_5

    .line 415
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    .line 416
    .local v3, "vt":Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 417
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v2, v8

    .line 419
    .local v2, "velocityX":I
    const/16 v8, 0x1f4

    if-le v2, v8, :cond_6

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-lez v8, :cond_6

    .line 421
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8, v6}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    .line 431
    :goto_2
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 432
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 433
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->m:Landroid/view/VelocityTracker;

    .line 436
    .end local v2    # "velocityX":I
    .end local v3    # "vt":Landroid/view/VelocityTracker;
    :cond_5
    iput v6, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    goto :goto_1

    .line 422
    .restart local v2    # "velocityX":I
    .restart local v3    # "vt":Landroid/view/VelocityTracker;
    :cond_6
    const/16 v8, -0x1f4

    if-ge v2, v8, :cond_7

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget v9, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_7

    .line 424
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v6}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_2

    .line 426
    :cond_7
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v1

    .line 427
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    div-int v4, v8, v1

    .line 428
    .local v4, "whichScreen":I
    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_2

    .line 439
    .end local v1    # "screenWidth":I
    .end local v2    # "velocityX":I
    .end local v3    # "vt":Landroid/view/VelocityTracker;
    .end local v4    # "whichScreen":I
    :pswitch_3
    iput v6, p0, Lcom/mob/tools/gui/MobViewPager;->n:I

    goto/16 :goto_1

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Lcom/mob/tools/gui/j;)V
    .locals 3
    .param p1, "adapter"    # Lcom/mob/tools/gui/j;

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/j;->a(Lcom/mob/tools/gui/MobViewPager;)V

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    .line 81
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->l:Lcom/mob/tools/gui/j;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/j;->a(Lcom/mob/tools/gui/MobViewPager;)V

    .line 85
    :cond_1
    if-nez p1, :cond_3

    .line 86
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    .line 87
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/mob/tools/gui/j;->a()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    .line 92
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    if-gtz v0, :cond_4

    .line 93
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    .line 94
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    goto :goto_0

    .line 98
    :cond_4
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-gt v0, v1, :cond_5

    .line 99
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 102
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    if-lez v0, :cond_6

    .line 103
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 106
    :cond_6
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 108
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->e:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 109
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
