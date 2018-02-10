.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 835
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 838
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->requestLayout()V

    .line 839
    return-void
.end method
