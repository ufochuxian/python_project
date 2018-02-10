.class Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->refreshNewSub()Lrx/l;
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
    .line 57
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;)V
    .locals 4
    .param p1, "notificationMessageTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$200(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0, v3}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$002(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$300(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;->data:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->updateDateSet(Ljava/util/ArrayList;Z)V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$300(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->notifyDataSetChanged()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$100(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->sendEmptyMessage(I)Z

    .line 79
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$002(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->access$100(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->sendEmptyMessage(I)Z

    .line 67
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;->a(Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;)V

    return-void
.end method
