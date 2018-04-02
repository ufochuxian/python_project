.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;->onSucceed(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 1395
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1006

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1397
    if-eqz p1, :cond_0

    .line 1398
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1401
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1384
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    const-string v0, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1380
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
