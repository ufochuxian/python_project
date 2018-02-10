.class Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

.field final synthetic b:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;->b:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jlgl://user?uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->from:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;->b:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->access$100(Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;->b:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->access$100(Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    .line 115
    return-void
.end method
