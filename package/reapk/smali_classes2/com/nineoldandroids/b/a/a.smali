.class public final Lcom/nineoldandroids/b/a/a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field public static final a:Z

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/Camera;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/Matrix;

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/b/a/a;->b:Ljava/util/WeakHashMap;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/b/a/a;->d:Landroid/graphics/Camera;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/b/a/a;->e:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/b/a/a;->f:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/b/a/a;->g:Landroid/graphics/Matrix;

    .line 30
    iput v1, p0, Lcom/nineoldandroids/b/a/a;->i:F

    .line 36
    iput v1, p0, Lcom/nineoldandroids/b/a/a;->o:F

    .line 37
    iput v1, p0, Lcom/nineoldandroids/b/a/a;->p:F

    .line 42
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/b/a/a;->setDuration(J)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/b/a/a;->setFillAfter(Z)V

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 46
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 57
    sget-object v1, Lcom/nineoldandroids/b/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/b/a/a;

    .line 59
    .local v0, "proxy":Lcom/nineoldandroids/b/a/a;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Lcom/nineoldandroids/b/a/a;

    .end local v0    # "proxy":Lcom/nineoldandroids/b/a/a;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/b/a/a;-><init>(Landroid/view/View;)V

    .line 61
    .restart local v0    # "proxy":Lcom/nineoldandroids/b/a/a;
    sget-object v1, Lcom/nineoldandroids/b/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    return-object v0
.end method

.method private a(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 16
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v13, v14

    .line 301
    .local v13, "w":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v2, v14

    .line 302
    .local v2, "h":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nineoldandroids/b/a/a;->h:Z

    .line 303
    .local v3, "hasPivot":Z
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nineoldandroids/b/a/a;->j:F

    .line 304
    .local v4, "pX":F
    :goto_0
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nineoldandroids/b/a/a;->k:F

    .line 306
    .local v5, "pY":F
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nineoldandroids/b/a/a;->l:F

    .line 307
    .local v6, "rX":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nineoldandroids/b/a/a;->m:F

    .line 308
    .local v7, "rY":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/nineoldandroids/b/a/a;->n:F

    .line 309
    .local v8, "rZ":F
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-eqz v14, :cond_1

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nineoldandroids/b/a/a;->d:Landroid/graphics/Camera;

    .line 311
    .local v1, "camera":Landroid/graphics/Camera;
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 312
    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->rotateX(F)V

    .line 313
    invoke-virtual {v1, v7}, Landroid/graphics/Camera;->rotateY(F)V

    .line 314
    neg-float v14, v8

    invoke-virtual {v1, v14}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 315
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 316
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 317
    neg-float v14, v4

    neg-float v15, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 318
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 321
    .end local v1    # "camera":Landroid/graphics/Camera;
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nineoldandroids/b/a/a;->o:F

    .line 322
    .local v11, "sX":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/nineoldandroids/b/a/a;->p:F

    .line 323
    .local v12, "sY":F
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v11, v14

    if-nez v14, :cond_2

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_3

    .line 324
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 325
    div-float v14, v4, v13

    neg-float v14, v14

    mul-float v15, v11, v13

    sub-float/2addr v15, v13

    mul-float v9, v14, v15

    .line 326
    .local v9, "sPX":F
    div-float v14, v5, v2

    neg-float v14, v14

    mul-float v15, v12, v2

    sub-float/2addr v15, v2

    mul-float v10, v14, v15

    .line 327
    .local v10, "sPY":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 330
    .end local v9    # "sPX":F
    .end local v10    # "sPY":F
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nineoldandroids/b/a/a;->q:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nineoldandroids/b/a/a;->r:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 331
    return-void

    .line 303
    .end local v4    # "pX":F
    .end local v5    # "pY":F
    .end local v6    # "rX":F
    .end local v7    # "rY":F
    .end local v8    # "rZ":F
    .end local v11    # "sX":F
    .end local v12    # "sY":F
    :cond_4
    const/high16 v14, 0x40000000    # 2.0f

    div-float v4, v13, v14

    goto/16 :goto_0

    .line 304
    .restart local v4    # "pX":F
    :cond_5
    const/high16 v14, 0x40000000    # 2.0f

    div-float v5, v2, v14

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 274
    .local v3, "w":F
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 277
    .local v1, "h":F
    invoke-virtual {p1, v5, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    iget-object v2, p0, Lcom/nineoldandroids/b/a/a;->g:Landroid/graphics/Matrix;

    .line 280
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 281
    invoke-direct {p0, v2, p2}, Lcom/nineoldandroids/b/a/a;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 282
    iget-object v4, p0, Lcom/nineoldandroids/b/a/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 284
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 287
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 288
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 289
    .local v0, "f":F
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 290
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 292
    .end local v0    # "f":F
    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 293
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 294
    .restart local v0    # "f":F
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 295
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 297
    .end local v0    # "f":F
    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 252
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->e:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 255
    :cond_0
    return-void
.end method

.method private p()V
    .locals 8

    .prologue
    .line 258
    iget-object v2, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 259
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/b/a/a;->f:Landroid/graphics/RectF;

    .line 264
    .local v0, "after":Landroid/graphics/RectF;
    invoke-direct {p0, v0, v1}, Lcom/nineoldandroids/b/a/a;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 265
    iget-object v2, p0, Lcom/nineoldandroids/b/a/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    .line 268
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 267
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->i:F

    return v0
.end method

.method public a(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 71
    iget v1, p0, Lcom/nineoldandroids/b/a/a;->i:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 72
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->i:F

    .line 73
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 74
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 78
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 176
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 179
    :cond_0
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 336
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 337
    iget v1, p0, Lcom/nineoldandroids/b/a/a;->i:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 338
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/b/a/a;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 340
    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->j:F

    return v0
.end method

.method public b(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/nineoldandroids/b/a/a;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/b/a/a;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/b/a/a;->h:Z

    .line 88
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->j:F

    .line 89
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 91
    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 190
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 191
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 194
    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->k:F

    return v0
.end method

.method public c(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/nineoldandroids/b/a/a;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/b/a/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/b/a/a;->h:Z

    .line 101
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->k:F

    .line 102
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 104
    :cond_1
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->n:F

    return v0
.end method

.method public d(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 111
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 113
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->n:F

    .line 114
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 116
    :cond_0
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->l:F

    return v0
.end method

.method public e(F)V
    .locals 1
    .param p1, "rotationX"    # F

    .prologue
    .line 123
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 125
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->l:F

    .line 126
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 128
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->m:F

    return v0
.end method

.method public f(F)V
    .locals 1
    .param p1, "rotationY"    # F

    .prologue
    .line 135
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 137
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->m:F

    .line 138
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 140
    :cond_0
    return-void
.end method

.method public g()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->o:F

    return v0
.end method

.method public g(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 147
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 149
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->o:F

    .line 150
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 152
    :cond_0
    return-void
.end method

.method public h()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->p:F

    return v0
.end method

.method public h(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 159
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 161
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->p:F

    .line 162
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 164
    :cond_0
    return-void
.end method

.method public i()I
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 168
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    goto :goto_0
.end method

.method public i(F)V
    .locals 1
    .param p1, "translationX"    # F

    .prologue
    .line 201
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 203
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->q:F

    .line 204
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 206
    :cond_0
    return-void
.end method

.method public j()I
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 183
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 186
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    goto :goto_0
.end method

.method public j(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 213
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->r:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->o()V

    .line 215
    iput p1, p0, Lcom/nineoldandroids/b/a/a;->r:F

    .line 216
    invoke-direct {p0}, Lcom/nineoldandroids/b/a/a;->p()V

    .line 218
    :cond_0
    return-void
.end method

.method public k()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->q:F

    return v0
.end method

.method public k(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 229
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 230
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/b/a/a;->i(F)V

    .line 233
    :cond_0
    return-void
.end method

.method public l()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/nineoldandroids/b/a/a;->r:F

    return v0
.end method

.method public l(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 244
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 245
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/b/a/a;->j(F)V

    .line 248
    :cond_0
    return-void
.end method

.method public m()F
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 222
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nineoldandroids/b/a/a;->q:F

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public n()F
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/nineoldandroids/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 237
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 240
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nineoldandroids/b/a/a;->r:F

    add-float/2addr v1, v2

    goto :goto_0
.end method
