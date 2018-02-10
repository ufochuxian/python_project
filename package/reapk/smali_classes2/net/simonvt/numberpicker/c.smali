.class public Lnet/simonvt/numberpicker/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0xfa

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x64

.field private static final e:[F

.field private static f:F

.field private static g:F

.field private static h:F

.field private static i:F

.field private static j:F

.field private static k:F


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Landroid/view/animation/Interpolator;

.field private E:Z

.field private F:F

.field private G:F

.field private final l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:J

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    .line 38
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lnet/simonvt/numberpicker/c;->e:[F

    .line 39
    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lnet/simonvt/numberpicker/c;->f:F

    .line 40
    const/high16 v8, 0x44480000    # 800.0f

    sput v8, Lnet/simonvt/numberpicker/c;->g:F

    .line 41
    const v8, 0x3ecccccd    # 0.4f

    sput v8, Lnet/simonvt/numberpicker/c;->h:F

    .line 42
    sget v8, Lnet/simonvt/numberpicker/c;->h:F

    sub-float v8, v12, v8

    sput v8, Lnet/simonvt/numberpicker/c;->i:F

    .line 47
    const/4 v7, 0x0

    .line 48
    .local v7, "x_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v13, :cond_2

    .line 49
    int-to-float v8, v2

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v3, v8, v9

    .line 50
    .local v3, "t":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 53
    .local v6, "x_max":F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 54
    .local v5, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 55
    .local v0, "coef":F
    sub-float v8, v12, v5

    sget v9, Lnet/simonvt/numberpicker/c;->h:F

    mul-float/2addr v8, v9

    sget v9, Lnet/simonvt/numberpicker/c;->i:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 56
    .local v4, "tx":F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 63
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 64
    .local v1, "d":F
    sget-object v8, Lnet/simonvt/numberpicker/c;->e:[F

    aput v1, v8, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "d":F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    .line 59
    move v6, v5

    goto :goto_1

    .line 61
    :cond_1
    move v7, v5

    goto :goto_1

    .line 66
    .end local v0    # "coef":F
    .end local v3    # "t":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    :cond_2
    sget-object v8, Lnet/simonvt/numberpicker/c;->e:[F

    aput v12, v8, v13

    .line 69
    const/high16 v8, 0x41000000    # 8.0f

    sput v8, Lnet/simonvt/numberpicker/c;->j:F

    .line 71
    sput v12, Lnet/simonvt/numberpicker/c;->k:F

    .line 72
    invoke-static {v12}, Lnet/simonvt/numberpicker/c;->a(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lnet/simonvt/numberpicker/c;->k:F

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/c;->C:Z

    .line 121
    iput-object p2, p0, Lnet/simonvt/numberpicker/c;->D:Landroid/view/animation/Interpolator;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/c;->l:F

    .line 123
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/c;->c(F)F

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/c;->G:F

    .line 124
    iput-boolean p3, p0, Lnet/simonvt/numberpicker/c;->E:Z

    .line 125
    return-void
.end method

.method static a(F)F
    .locals 5
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 128
    sget v1, Lnet/simonvt/numberpicker/c;->j:F

    mul-float/2addr p0, v1

    .line 129
    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    .line 130
    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    .line 136
    :goto_0
    sget v1, Lnet/simonvt/numberpicker/c;->k:F

    mul-float/2addr p0, v1

    .line 137
    return p0

    .line 132
    :cond_0
    const v0, 0x3ebc5ab2

    .line 133
    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    .line 134
    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method

.method private c(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 152
    const v0, 0x43c10b3d

    iget v1, p0, Lnet/simonvt/numberpicker/c;->l:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 241
    iput p1, p0, Lnet/simonvt/numberpicker/c;->p:I

    .line 242
    iget v0, p0, Lnet/simonvt/numberpicker/c;->p:I

    iget v1, p0, Lnet/simonvt/numberpicker/c;->n:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnet/simonvt/numberpicker/c;->A:F

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/c;->C:Z

    .line 244
    return-void
.end method

.method public a(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 343
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/numberpicker/c;->a(IIIII)V

    .line 344
    return-void
.end method

.method public a(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lnet/simonvt/numberpicker/c;->m:I

    .line 365
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/c;->C:Z

    .line 366
    iput p5, p0, Lnet/simonvt/numberpicker/c;->y:I

    .line 367
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/simonvt/numberpicker/c;->x:J

    .line 368
    iput p1, p0, Lnet/simonvt/numberpicker/c;->n:I

    .line 369
    iput p2, p0, Lnet/simonvt/numberpicker/c;->o:I

    .line 370
    add-int v0, p1, p3

    iput v0, p0, Lnet/simonvt/numberpicker/c;->p:I

    .line 371
    add-int v0, p2, p4

    iput v0, p0, Lnet/simonvt/numberpicker/c;->q:I

    .line 372
    int-to-float v0, p3

    iput v0, p0, Lnet/simonvt/numberpicker/c;->A:F

    .line 373
    int-to-float v0, p4

    iput v0, p0, Lnet/simonvt/numberpicker/c;->B:F

    .line 374
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lnet/simonvt/numberpicker/c;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/c;->z:F

    .line 375
    return-void
.end method

.method public a(IIIIIIII)V
    .locals 26
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/simonvt/numberpicker/c;->E:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/simonvt/numberpicker/c;->C:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 406
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/c;->e()F

    move-result v13

    .line 408
    .local v13, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->p:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->n:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v6, v0

    .line 409
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->q:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->o:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v7, v0

    .line 410
    .local v7, "dy":F
    mul-float v18, v6, v6

    mul-float v19, v7, v7

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 412
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 413
    .local v9, "ndx":F
    div-float v12, v7, v8

    .line 415
    .local v12, "ndy":F
    mul-float v14, v9, v13

    .line 416
    .local v14, "oldVelocityX":F
    mul-float v15, v12, v13

    .line 417
    .local v15, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    .line 418
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 p3, v0

    .line 419
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 p4, v0

    .line 423
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v12    # "ndy":F
    .end local v13    # "oldVel":F
    .end local v14    # "oldVelocityX":F
    .end local v15    # "oldVelocityY":F
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->m:I

    .line 424
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/simonvt/numberpicker/c;->C:Z

    .line 426
    mul-int v18, p3, p3

    mul-int v19, p4, p4

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 428
    .local v17, "velocity":F
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->F:F

    .line 429
    sget v18, Lnet/simonvt/numberpicker/c;->h:F

    mul-float v18, v18, v17

    sget v19, Lnet/simonvt/numberpicker/c;->g:F

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    .line 430
    .local v10, "l":D
    const-wide v18, 0x408f400000000000L    # 1000.0

    sget v20, Lnet/simonvt/numberpicker/c;->f:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v22

    div-double v20, v10, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->y:I

    .line 431
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/simonvt/numberpicker/c;->x:J

    .line 432
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->n:I

    .line 433
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->o:I

    .line 435
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-nez v18, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 436
    .local v4, "coeffX":F
    :goto_0
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-nez v18, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 438
    .local v5, "coeffY":F
    :goto_1
    sget v18, Lnet/simonvt/numberpicker/c;->g:F

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    sget v20, Lnet/simonvt/numberpicker/c;->f:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sget v22, Lnet/simonvt/numberpicker/c;->f:F

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v24

    div-double v20, v20, v22

    mul-double v20, v20, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 440
    .local v16, "totalDistance":I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->r:I

    .line 441
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->s:I

    .line 442
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->t:I

    .line 443
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->u:I

    .line 445
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v18, v18, p1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->p:I

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->p:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->s:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->p:I

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->p:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->r:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->p:I

    .line 450
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v18, v18, p2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->q:I

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->q:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->u:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->q:I

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->q:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/c;->t:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/numberpicker/c;->q:I

    .line 454
    return-void

    .line 435
    .end local v4    # "coeffX":F
    .end local v5    # "coeffY":F
    .end local v16    # "totalDistance":I
    :cond_1
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v18, v17

    goto/16 :goto_0

    .line 436
    .restart local v4    # "coeffX":F
    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v18, v17

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/c;->C:Z

    .line 173
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/c;->C:Z

    return v0
.end method

.method public a(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 495
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/c;->C:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/numberpicker/c;->p:I

    iget v2, p0, Lnet/simonvt/numberpicker/c;->n:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 496
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/numberpicker/c;->q:I

    iget v2, p0, Lnet/simonvt/numberpicker/c;->o:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    .line 496
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lnet/simonvt/numberpicker/c;->y:I

    return v0
.end method

.method public final b(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/c;->c(F)F

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/c;->G:F

    .line 149
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 262
    iput p1, p0, Lnet/simonvt/numberpicker/c;->q:I

    .line 263
    iget v0, p0, Lnet/simonvt/numberpicker/c;->q:I

    iget v1, p0, Lnet/simonvt/numberpicker/c;->o:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnet/simonvt/numberpicker/c;->B:F

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/c;->C:Z

    .line 265
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lnet/simonvt/numberpicker/c;->v:I

    return v0
.end method

.method public c(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 477
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/c;->l()I

    move-result v0

    .line 478
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lnet/simonvt/numberpicker/c;->y:I

    .line 479
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lnet/simonvt/numberpicker/c;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lnet/simonvt/numberpicker/c;->z:F

    .line 480
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/simonvt/numberpicker/c;->C:Z

    .line 481
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lnet/simonvt/numberpicker/c;->w:I

    return v0
.end method

.method public e()F
    .locals 3

    .prologue
    .line 206
    iget v0, p0, Lnet/simonvt/numberpicker/c;->F:F

    iget v1, p0, Lnet/simonvt/numberpicker/c;->G:F

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/c;->l()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lnet/simonvt/numberpicker/c;->n:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lnet/simonvt/numberpicker/c;->o:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lnet/simonvt/numberpicker/c;->p:I

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lnet/simonvt/numberpicker/c;->q:I

    return v0
.end method

.method public j()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    .line 273
    iget-boolean v10, p0, Lnet/simonvt/numberpicker/c;->C:Z

    if-eqz v10, :cond_1

    .line 274
    const/4 v9, 0x0

    .line 322
    :cond_0
    :goto_0
    return v9

    .line 277
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lnet/simonvt/numberpicker/c;->x:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 279
    .local v7, "timePassed":I
    iget v10, p0, Lnet/simonvt/numberpicker/c;->y:I

    if-ge v7, v10, :cond_3

    .line 280
    iget v10, p0, Lnet/simonvt/numberpicker/c;->m:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Lnet/simonvt/numberpicker/c;->z:F

    mul-float v8, v10, v11

    .line 284
    .local v8, "x":F
    iget-object v10, p0, Lnet/simonvt/numberpicker/c;->D:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    .line 285
    invoke-static {v8}, Lnet/simonvt/numberpicker/c;->a(F)F

    move-result v8

    .line 289
    :goto_1
    iget v10, p0, Lnet/simonvt/numberpicker/c;->n:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->A:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    .line 290
    iget v10, p0, Lnet/simonvt/numberpicker/c;->o:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->B:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    goto :goto_0

    .line 287
    :cond_2
    iget-object v10, p0, Lnet/simonvt/numberpicker/c;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    .line 293
    .end local v8    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Lnet/simonvt/numberpicker/c;->y:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 294
    .local v4, "t":F
    mul-float v10, v14, v4

    float-to-int v3, v10

    .line 295
    .local v3, "index":I
    int-to-float v10, v3

    div-float v5, v10, v14

    .line 296
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    div-float v6, v10, v14

    .line 297
    .local v6, "t_sup":F
    sget-object v10, Lnet/simonvt/numberpicker/c;->e:[F

    aget v0, v10, v3

    .line 298
    .local v0, "d_inf":F
    sget-object v10, Lnet/simonvt/numberpicker/c;->e:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 299
    .local v1, "d_sup":F
    sub-float v10, v4, v5

    sub-float v11, v6, v5

    div-float/2addr v10, v11

    sub-float v11, v1, v0

    mul-float/2addr v10, v11

    add-float v2, v0, v10

    .line 301
    .local v2, "distanceCoef":F
    iget v10, p0, Lnet/simonvt/numberpicker/c;->n:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->p:I

    iget v12, p0, Lnet/simonvt/numberpicker/c;->n:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    .line 303
    iget v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->s:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    .line 304
    iget v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->r:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    .line 306
    iget v10, p0, Lnet/simonvt/numberpicker/c;->o:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->q:I

    iget v12, p0, Lnet/simonvt/numberpicker/c;->o:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    .line 308
    iget v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->u:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    .line 309
    iget v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->t:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    .line 311
    iget v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->p:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    iget v11, p0, Lnet/simonvt/numberpicker/c;->q:I

    if-ne v10, v11, :cond_0

    .line 312
    iput-boolean v9, p0, Lnet/simonvt/numberpicker/c;->C:Z

    goto/16 :goto_0

    .line 318
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_3
    iget v10, p0, Lnet/simonvt/numberpicker/c;->p:I

    iput v10, p0, Lnet/simonvt/numberpicker/c;->v:I

    .line 319
    iget v10, p0, Lnet/simonvt/numberpicker/c;->q:I

    iput v10, p0, Lnet/simonvt/numberpicker/c;->w:I

    .line 320
    iput-boolean v9, p0, Lnet/simonvt/numberpicker/c;->C:Z

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public k()V
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lnet/simonvt/numberpicker/c;->p:I

    iput v0, p0, Lnet/simonvt/numberpicker/c;->v:I

    .line 464
    iget v0, p0, Lnet/simonvt/numberpicker/c;->q:I

    iput v0, p0, Lnet/simonvt/numberpicker/c;->w:I

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/c;->C:Z

    .line 466
    return-void
.end method

.method public l()I
    .locals 4

    .prologue
    .line 488
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/simonvt/numberpicker/c;->x:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
