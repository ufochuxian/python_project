.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 726
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 727
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$f;->a:Ljava/lang/ref/WeakReference;

    .line 728
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 732
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .line 733
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
    if-eqz v0, :cond_8

    .line 735
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getMeasuredHeight()I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v6, v8

    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 736
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->h(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v1, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    .line 735
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->k:F

    .line 737
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->i(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)I

    move-result v1

    if-ne v1, v11, :cond_9

    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->k(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    .line 740
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->k(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v1

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 741
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->l(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a()V

    .line 748
    :cond_0
    :goto_0
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_a

    .line 749
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->k:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 752
    :cond_1
    :goto_1
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    cmpg-float v1, v1, v10

    if-gez v1, :cond_4

    .line 754
    iput v10, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 755
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 756
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 759
    :cond_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)I

    move-result v1

    if-eq v1, v11, :cond_3

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)I

    move-result v1

    if-eq v1, v12, :cond_3

    .line 760
    invoke-static {v0, v13}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;I)V

    .line 761
    :cond_3
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->l(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a()V

    .line 762
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->requestLayout()V

    .line 764
    :cond_4
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->h(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v1

    cmpl-float v1, v1, v10

    if-lez v1, :cond_7

    .line 766
    invoke-static {v0, v10}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;F)F

    .line 767
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->o(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    .line 768
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->p(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 771
    :cond_5
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)I

    move-result v1

    if-eq v1, v11, :cond_6

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)I

    move-result v1

    if-eq v1, v12, :cond_6

    .line 772
    invoke-static {v0, v13}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;I)V

    .line 773
    :cond_6
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->l(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a()V

    .line 774
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->requestLayout()V

    .line 777
    :cond_7
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->requestLayout()V

    .line 779
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->h(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v10

    if-nez v1, :cond_8

    .line 780
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->l(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a()V

    .line 782
    :cond_8
    return-void

    .line 742
    :cond_9
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)I

    move-result v1

    if-ne v1, v12, :cond_0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->h(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 743
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;F)F

    .line 744
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->l(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a()V

    goto/16 :goto_0

    .line 750
    :cond_a
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->h(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_1

    .line 751
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->h(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F

    move-result v1

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->k:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;F)F

    goto/16 :goto_1
.end method
