.class Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->autoRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$5;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$5;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$5;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$400(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setRefreshing(Z)V

    .line 205
    :cond_0
    return-void
.end method
