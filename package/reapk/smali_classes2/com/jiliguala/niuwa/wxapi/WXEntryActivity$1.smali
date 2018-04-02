.class Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "baseReq"    # Lcom/tencent/mm/opensdk/modelbase/BaseReq;

    .prologue
    .line 54
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 11
    .param p1, "baseResp"    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    .prologue
    const v10, 0x7f01001f

    const v9, 0x7f010014

    const/high16 v8, 0x14000000

    const/16 v7, 0x1040

    .line 58
    if-nez p1, :cond_1

    .line 128
    .end local p1    # "baseResp":Lcom/tencent/mm/opensdk/modelbase/BaseResp;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local p1    # "baseResp":Lcom/tencent/mm/opensdk/modelbase/BaseResp;
    :cond_1
    instance-of v5, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    if-eqz v5, :cond_8

    .line 60
    iget v5, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    if-nez v5, :cond_5

    move-object v5, p1

    .line 63
    check-cast v5, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object v0, v5, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 64
    .local v0, "_p":Ljava/lang/String;
    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    .end local p1    # "baseResp":Lcom/tencent/mm/opensdk/modelbase/BaseResp;
    iget-object v4, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->state:Ljava/lang/String;

    .line 66
    .local v4, "state":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Wei Xin Connected Success"

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 68
    const-string v5, "bind_weichat"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v5, "guest_upgrade_wechat"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/logic/login/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v5, "guest_upgrade_weichat_with_login"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/logic/login/a/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v1, "wechat"

    .line 77
    .local v1, "_u":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v5

    const-string v6, "wechatcode"

    new-instance v7, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1$1;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1$1;-><init>(Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;)V

    invoke-virtual {v5, v1, v0, v6, v7}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/login/a/b;)V

    goto :goto_0

    .line 94
    .end local v0    # "_p":Ljava/lang/String;
    .end local v1    # "_u":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .restart local p1    # "baseResp":Lcom/tencent/mm/opensdk/modelbase/BaseResp;
    :cond_5
    iget v5, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    .line 95
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v7, 0x1031

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 97
    :cond_6
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 98
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v7, 0x1016

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 100
    :cond_7
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v7, 0x1002

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 103
    :cond_8
    instance-of v5, p1, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;

    if-eqz v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->access$000(Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    iget v5, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    if-nez v5, :cond_0

    move-object v3, p1

    .line 106
    check-cast v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;

    .line 107
    .local v3, "resp":Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;
    iget-object v5, v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->action:Ljava/lang/String;

    const-string v6, "confirm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 108
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "WeChat Reminder Success"

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    const-string v5, "wechatAuthorizationAction"

    iget-object v6, v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->action:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v5, "openid"

    iget-object v6, v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->openId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v5, "sceneid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->scene:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v5, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object v5, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-virtual {v5, v10, v9}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->overridePendingTransition(II)V

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->scene:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 117
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v5, v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->action:Ljava/lang/String;

    const-string v6, "cancel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const-string v5, "wechatAuthorizationAction"

    iget-object v6, v3, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->action:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v5, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    iget-object v5, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-virtual {v5, v10, v9}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method
