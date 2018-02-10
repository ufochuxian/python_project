.class Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->loadMoreSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;)V
    .locals 3
    .param p1, "notificationMessageTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;

    .prologue
    const/4 v2, 0x0

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$002(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$202(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$300(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->updateDateSet(Ljava/util/ArrayList;Z)V

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$300(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$100(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->sendEmptyMessage(I)Z

    .line 110
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$002(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$002(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$202(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$100(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;->a(Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;)V

    return-void
.end method
