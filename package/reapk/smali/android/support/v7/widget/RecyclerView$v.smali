.class Landroid/support/v7/widget/RecyclerView$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "v"
.end annotation


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView;

.field private c:I

.field private d:I

.field private e:Landroid/support/v4/widget/ac;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v1, 0x0

    .line 4691
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4682
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/animation/Interpolator;

    .line 4686
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Z

    .line 4689
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$v;->g:Z

    .line 4692
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ac;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ac;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/support/v4/widget/ac;

    .line 4693
    return-void
.end method

.method private a(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 4852
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4853
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 4854
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4858
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4859
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4860
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 4861
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 4862
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 4863
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 4864
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 4865
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 4866
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    .line 4867
    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView$v;->a(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 4870
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 4871
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 4876
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 4860
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 4863
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 4873
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 4874
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 4873
    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 4815
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->g:Z

    .line 4816
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Z

    .line 4817
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 4820
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Z

    .line 4821
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->g:Z

    if-eqz v0, :cond_0

    .line 4822
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    .line 4824
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 4827
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Z

    if-eqz v0, :cond_0

    .line 4828
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->g:Z

    .line 4833
    :goto_0
    return-void

    .line 4830
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4831
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4836
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4837
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$v;->d:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$v;->c:I

    .line 4838
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/support/v4/widget/ac;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ac;->a(IIIIIIII)V

    .line 4840
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    .line 4841
    return-void
.end method

.method public a(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4880
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$v;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4881
    return-void
.end method

.method public a(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4848
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$v;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$v;->a(III)V

    .line 4849
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 4889
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4890
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/animation/Interpolator;

    .line 4891
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ac;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ac;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/support/v4/widget/ac;

    .line 4893
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4894
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$v;->d:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$v;->c:I

    .line 4895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/support/v4/widget/ac;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ac;->a(IIIII)V

    .line 4896
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    .line 4897
    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v0, 0x0

    .line 4884
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$v;->b(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/animation/Interpolator;

    .end local p3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView$v;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4886
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 4900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/support/v4/widget/ac;

    invoke-virtual {v0}, Landroid/support/v4/widget/ac;->h()V

    .line 4902
    return-void
.end method

.method public b(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 4844
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$v;->a(IIII)V

    .line 4845
    return-void
.end method

.method public run()V
    .locals 23

    .prologue
    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 4698
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$v;->b()V

    .line 4812
    :goto_0
    return-void

    .line 4701
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$v;->c()V

    .line 4702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 4705
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/support/v4/widget/ac;

    .line 4706
    .local v12, "scroller":Landroid/support/v4/widget/ac;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    .line 4707
    .local v13, "smoothScroller":Landroid/support/v7/widget/RecyclerView$s;
    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->g()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 4708
    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->b()I

    move-result v18

    .line 4709
    .local v18, "x":I
    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->c()I

    move-result v19

    .line 4710
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$v;->c:I

    move/from16 v20, v0

    sub-int v4, v18, v20

    .line 4711
    .local v4, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$v;->d:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 4712
    .local v5, "dy":I
    const/4 v9, 0x0

    .line 4713
    .local v9, "hresult":I
    const/16 v17, 0x0

    .line 4714
    .local v17, "vresult":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$v;->c:I

    .line 4715
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$v;->d:I

    .line 4716
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 4717
    .local v11, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 4718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 4719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 4720
    const-string v20, "RV Scroll"

    invoke-static/range {v20 .. v20}, Landroid/support/v4/os/n;->a(Ljava/lang/String;)V

    .line 4721
    if-eqz v4, :cond_1

    .line 4722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v9

    .line 4723
    sub-int v10, v4, v9

    .line 4725
    :cond_1
    if-eqz v5, :cond_2

    .line 4726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v17

    .line 4727
    sub-int v11, v5, v17

    .line 4729
    :cond_2
    invoke-static {}, Landroid/support/v4/os/n;->a()V

    .line 4730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->C()V

    .line 4732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 4733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 4735
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$s;->g()Z

    move-result v20

    if-nez v20, :cond_3

    .line 4736
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$s;->h()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 4737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v3

    .line 4738
    .local v3, "adapterSize":I
    if-nez v3, :cond_16

    .line 4739
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    .line 4748
    .end local v3    # "adapterSize":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->F:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_4

    .line 4749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4751
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 4752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 4754
    :cond_5
    if-nez v10, :cond_6

    if-eqz v11, :cond_c

    .line 4755
    :cond_6
    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->f()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 4757
    .local v14, "vel":I
    const/4 v15, 0x0

    .line 4758
    .local v15, "velX":I
    move/from16 v0, v18

    if-eq v10, v0, :cond_7

    .line 4759
    if-gez v10, :cond_18

    neg-int v15, v14

    .line 4762
    :cond_7
    :goto_2
    const/16 v16, 0x0

    .line 4763
    .local v16, "velY":I
    move/from16 v0, v19

    if-eq v11, v0, :cond_8

    .line 4764
    if-gez v11, :cond_1a

    neg-int v0, v14

    move/from16 v16, v0

    .line 4767
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 4768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 4770
    :cond_9
    if-nez v15, :cond_a

    move/from16 v0, v18

    if-eq v10, v0, :cond_a

    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->d()I

    move-result v20

    if-nez v20, :cond_c

    :cond_a
    if-nez v16, :cond_b

    move/from16 v0, v19

    if-eq v11, v0, :cond_b

    .line 4771
    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->e()I

    move-result v20

    if-nez v20, :cond_c

    .line 4772
    :cond_b
    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->h()V

    .line 4775
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_c
    if-nez v9, :cond_d

    if-eqz v17, :cond_e

    .line 4776
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    .line 4779
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 4780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4783
    :cond_f
    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v20

    if-eqz v20, :cond_1c

    move/from16 v0, v17

    if-ne v0, v5, :cond_1c

    const/4 v8, 0x1

    .line 4785
    .local v8, "fullyConsumedVertical":Z
    :goto_4
    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v20

    if-eqz v20, :cond_1d

    if-ne v9, v4, :cond_1d

    const/4 v7, 0x1

    .line 4787
    .local v7, "fullyConsumedHorizontal":Z
    :goto_5
    if-nez v4, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    if-nez v7, :cond_11

    if-eqz v8, :cond_1e

    :cond_11
    const/4 v6, 0x1

    .line 4790
    .local v6, "fullyConsumedAny":Z
    :goto_6
    invoke-virtual {v12}, Landroid/support/v4/widget/ac;->a()Z

    move-result v20

    if-nez v20, :cond_12

    if-nez v6, :cond_1f

    .line 4791
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4792
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->E()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 4793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/v$a;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/v$a;->a()V

    .line 4803
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "fullyConsumedAny":Z
    .end local v7    # "fullyConsumedHorizontal":Z
    .end local v8    # "fullyConsumedVertical":Z
    .end local v9    # "hresult":I
    .end local v10    # "overscrollX":I
    .end local v11    # "overscrollY":I
    .end local v17    # "vresult":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_13
    :goto_7
    if-eqz v13, :cond_15

    .line 4804
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$s;->g()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 4805
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$s;II)V

    .line 4807
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$v;->g:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    .line 4808
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    .line 4811
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$v;->d()V

    goto/16 :goto_0

    .line 4740
    .restart local v3    # "adapterSize":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v9    # "hresult":I
    .restart local v10    # "overscrollX":I
    .restart local v11    # "overscrollY":I
    .restart local v17    # "vresult":I
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_16
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$s;->i()I

    move-result v20

    move/from16 v0, v20

    if-lt v0, v3, :cond_17

    .line 4741
    add-int/lit8 v20, v3, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/support/v7/widget/RecyclerView$s;->d(I)V

    .line 4742
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$s;II)V

    goto/16 :goto_1

    .line 4744
    :cond_17
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$s;II)V

    goto/16 :goto_1

    .line 4759
    .end local v3    # "adapterSize":I
    .restart local v14    # "vel":I
    .restart local v15    # "velX":I
    :cond_18
    if-lez v10, :cond_19

    move v15, v14

    goto/16 :goto_2

    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 4764
    .restart local v16    # "velY":I
    :cond_1a
    if-lez v11, :cond_1b

    move/from16 v16, v14

    goto/16 :goto_3

    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 4783
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 4785
    .restart local v8    # "fullyConsumedVertical":Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 4787
    .restart local v7    # "fullyConsumedHorizontal":Z
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 4796
    .restart local v6    # "fullyConsumedAny":Z
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    .line 4797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/v;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 4798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/v;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4, v5}, Landroid/support/v7/widget/v;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_7
.end method
