.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 575
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 578
    if-eqz p1, :cond_2

    .line 579
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 581
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1006

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 583
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x999

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 586
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    .line 587
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 565
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 567
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 568
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 571
    .end local v0    # "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 556
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
