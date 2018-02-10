.class final Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:I

.field private final d:I

.field private final e:J

.field private f:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

.field private g:Z

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;IIJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V
    .locals 2
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;
    .param p2, "fromY"    # I
    .param p3, "toY"    # I
    .param p4, "duration"    # J
    .param p6, "listener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

    .prologue
    .line 1557
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>.f;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->g:Z

    .line 1554
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->h:J

    .line 1555
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->i:I

    .line 1558
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->d:I

    .line 1559
    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->c:I

    .line 1560
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->b:Landroid/view/animation/Interpolator;

    .line 1561
    iput-wide p4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->e:J

    .line 1562
    iput-object p6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->f:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

    .line 1563
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1600
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>.f;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->g:Z

    .line 1601
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1602
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>.f;"
    const-wide/16 v8, 0x3e8

    .line 1572
    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->h:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->h:J

    .line 1590
    :goto_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->g:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->c:I

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->i:I

    if-eq v1, v4, :cond_2

    .line 1591
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v1, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/c;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1597
    :cond_0
    :goto_1
    return-void

    .line 1581
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->h:J

    sub-long/2addr v4, v6

    mul-long/2addr v4, v8

    iget-wide v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->e:J

    div-long v2, v4, v6

    .line 1582
    .local v2, "normalizedTime":J
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1584
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->d:I

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->c:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->b:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1585
    .local v0, "deltaY":I
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->i:I

    .line 1586
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->i:I

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0

    .line 1593
    .end local v0    # "deltaY":I
    .end local v2    # "normalizedTime":J
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->f:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->f:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;->a()V

    goto :goto_1
.end method
