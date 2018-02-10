.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/Timer;

.field private c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a:Landroid/os/Handler;

    .line 793
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->b:Ljava/util/Timer;

    .line 794
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;->cancel()Z

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    .line 810
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 7
    .param p1, "period"    # J

    .prologue
    .line 797
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;->cancel()Z

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    .line 801
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    .line 802
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->c:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 803
    return-void
.end method
