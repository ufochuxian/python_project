.class Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;->a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 38
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;->a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    const-string v2, "BUNDLE_MILLIS"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;J)J

    .line 39
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;->a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;->a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;Z)Z

    .line 41
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;->a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->b(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;)V

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;->a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;->a:Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->b(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;J)V

    .line 45
    :cond_1
    return-void
.end method
