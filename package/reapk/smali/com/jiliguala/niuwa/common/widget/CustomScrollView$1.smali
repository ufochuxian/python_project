.class Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/CustomScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->getScrollY()I

    move-result v0

    .line 29
    .local v0, "scrollY":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->a(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->a(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;I)I

    .line 31
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->b(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->b(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->c(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;->a:Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->c(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;->a(I)V

    .line 37
    :cond_1
    return-void
.end method
