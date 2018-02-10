.class public Landroid/support/v7/widget/x;
.super Landroid/support/v7/widget/RecyclerView$s;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x1

.field public static final c:I = 0x0

.field private static final i:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final j:Z = false

.field private static final k:F = 25.0f

.field private static final l:I = 0x2710

.field private static final m:F = 1.2f


# instance fields
.field protected final d:Landroid/view/animation/LinearInterpolator;

.field protected final e:Landroid/view/animation/DecelerateInterpolator;

.field protected f:Landroid/graphics/PointF;

.field protected g:I

.field protected h:I

.field private final n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$s;-><init>()V

    .line 83
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/x;->d:Landroid/view/animation/LinearInterpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/x;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 93
    iput v1, p0, Landroid/support/v7/widget/x;->g:I

    iput v1, p0, Landroid/support/v7/widget/x;->h:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/x;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->n:F

    .line 97
    return-void
.end method

.method private a(II)I
    .locals 2
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .prologue
    .line 254
    move v0, p1

    .line 255
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 256
    mul-int v1, v0, p1

    if-gtz v1, :cond_0

    .line 257
    const/4 p1, 0x0

    .line 259
    .end local p1    # "tmpDt":I
    :cond_0
    return p1
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 162
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected a(I)I
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/x;->b(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public a(IIIII)I
    .locals 4
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .prologue
    .line 268
    packed-switch p5, :pswitch_data_0

    .line 284
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :pswitch_0
    sub-int v1, p3, p1

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 272
    :pswitch_1
    sub-int v1, p4, p2

    goto :goto_0

    .line 274
    :pswitch_2
    sub-int v1, p3, p1

    .line 275
    .local v1, "dtStart":I
    if-gtz v1, :cond_0

    .line 278
    sub-int v0, p4, p2

    .line 279
    .local v0, "dtEnd":I
    if-gez v0, :cond_1

    move v1, v0

    .line 280
    goto :goto_0

    .line 287
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->e()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 303
    .local v6, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 307
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$h;

    .line 308
    .local v7, "params":Landroid/support/v7/widget/RecyclerView$h;
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->p(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    sub-int v1, v0, v5

    .line 309
    .local v1, "top":I
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->r(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int v2, v0, v5

    .line 310
    .local v2, "bottom":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v3

    .line 311
    .local v3, "start":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 312
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/x;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p4, "action"    # Landroid/support/v7/widget/RecyclerView$s$a;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->j()I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->f()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/x;->g:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/x;->a(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->g:I

    .line 137
    iget v0, p0, Landroid/support/v7/widget/x;->h:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/x;->a(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->h:I

    .line 139
    iget v0, p0, Landroid/support/v7/widget/x;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/x;->h:I

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/x;->a(Landroid/support/v7/widget/RecyclerView$s$a;)V

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$s$a;)V
    .locals 7
    .param p1, "action"    # Landroid/support/v7/widget/RecyclerView$s$a;

    .prologue
    const v5, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const v6, 0x3f99999a    # 1.2f

    .line 232
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->i()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/x;->c(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 233
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->i()I

    move-result v1

    .line 235
    .local v1, "target":I
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$s$a;->a(I)V

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->f()V

    .line 251
    .end local v1    # "target":I
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/x;->a(Landroid/graphics/PointF;)V

    .line 240
    iput-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    .line 242
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/x;->g:I

    .line 243
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/x;->h:I

    .line 244
    const/16 v3, 0x2710

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/x;->b(I)I

    move-result v2

    .line 248
    .local v2, "time":I
    iget v3, p0, Landroid/support/v7/widget/x;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p0, Landroid/support/v7/widget/x;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/support/v7/widget/x;->d:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$s$a;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$s$a;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->c()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/x;->b(Landroid/view/View;I)I

    move-result v1

    .line 113
    .local v1, "dx":I
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->d()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/x;->a(Landroid/view/View;I)I

    move-result v2

    .line 114
    .local v2, "dy":I
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 115
    .local v0, "distance":I
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/x;->a(I)I

    move-result v3

    .line 116
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 117
    neg-int v4, v1

    neg-int v5, v2

    iget-object v6, p0, Landroid/support/v7/widget/x;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Landroid/support/v7/widget/RecyclerView$s$a;->a(IIILandroid/view/animation/Interpolator;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected b(I)I
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 193
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/x;->n:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public b(Landroid/view/View;I)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->e()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 328
    .local v6, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$h;

    .line 333
    .local v7, "params":Landroid/support/v7/widget/RecyclerView$h;
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->o(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    sub-int v1, v0, v5

    .line 334
    .local v1, "left":I
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->q(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int v2, v0, v5

    .line 335
    .local v2, "right":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v3

    .line 336
    .local v3, "start":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 337
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/x;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/x;->h:I

    iput v0, p0, Landroid/support/v7/widget/x;->g:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    .line 152
    return-void
.end method

.method protected c()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c(I)Landroid/graphics/PointF;
    .locals 4
    .param p1, "targetPosition"    # I
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->e()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 353
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$s$b;

    if-eqz v1, :cond_0

    .line 354
    check-cast v0, Landroid/support/v7/widget/RecyclerView$s$b;

    .line 355
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$s$b;->d(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    .line 357
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    const-string v1, "LinearSmoothScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/support/v7/widget/RecyclerView$s$b;

    .line 358
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected d()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
