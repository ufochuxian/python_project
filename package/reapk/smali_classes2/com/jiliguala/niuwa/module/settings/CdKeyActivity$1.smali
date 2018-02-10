.class Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 4
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 83
    iget v2, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v2, :sswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 85
    :sswitch_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "from":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/logic/network/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/lesson/redeem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    goto :goto_0

    .line 93
    .end local v0    # "from":Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    goto :goto_0

    .line 96
    :cond_1
    const-string v2, "\u8bf7\u7ed1\u5b9a\u5fae\u4fe1\u624d\u80fd\u4fdd\u5b58\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u54e6"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    const-class v3, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x1024 -> :sswitch_0
        0x1035 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
