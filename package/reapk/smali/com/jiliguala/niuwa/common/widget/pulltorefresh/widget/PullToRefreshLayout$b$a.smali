.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 816
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;->a:Landroid/os/Handler;

    .line 817
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b$a;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 822
    return-void
.end method
