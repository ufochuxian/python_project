.class Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    iget-boolean v12, v12, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->f:Z

    if-eqz v12, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    move/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;FLcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V

    .line 353
    :goto_0
    return-void

    .line 326
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c()F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->j()D

    move-result-wide v16

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 327
    .local v5, "minProgressArc":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->f()F

    move-result v8

    .line 328
    .local v8, "startingEndTrim":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e()F

    move-result v10

    .line 329
    .local v10, "startingTrim":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k()F

    move-result v9

    .line 333
    .local v9, "startingRotation":F
    const v12, 0x3f4ccccd    # 0.8f

    sub-float v4, v12, v5

    .line 334
    .local v4, "minArc":F
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a()Landroid/view/animation/Interpolator;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v12, v4

    add-float v2, v8, v12

    .line 335
    .local v2, "endTrim":F
    const v12, 0x3f4ccccd    # 0.8f

    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->b()Landroid/view/animation/Interpolator;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v10, v12

    .line 337
    .local v7, "startTrim":F
    sub-float v11, v2, v7

    .line 339
    .local v11, "sweepTrim":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    .line 340
    const/high16 v12, 0x3f000000    # 0.5f

    add-float v2, v7, v12

    .line 343
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v12, v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c(F)V

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v12, v7}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(F)V

    .line 347
    const/high16 v12, 0x3e800000    # 0.25f

    mul-float v12, v12, p1

    add-float v6, v9, v12

    .line 348
    .local v6, "rotation":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v12, v6}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->d(F)V

    .line 350
    const/high16 v12, 0x43100000    # 144.0f

    mul-float v12, v12, p1

    const/high16 v13, 0x44340000    # 720.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-static {v14}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;)F

    move-result v14

    const/high16 v15, 0x40a00000    # 5.0f

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 351
    .local v3, "groupRotation":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-virtual {v12, v3}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->c(F)V

    goto/16 :goto_0
.end method
