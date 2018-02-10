.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
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
    .line 706
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 707
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;->a:Ljava/lang/ref/WeakReference;

    .line 708
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 712
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .line 713
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
    if-eqz v0, :cond_0

    .line 714
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;I)V

    .line 715
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->g(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    .line 717
    :cond_0
    return-void
.end method
