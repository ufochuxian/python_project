.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->requestUsers()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 1087
    if-eqz p1, :cond_0

    .line 1088
    move-object v0, p1

    .line 1089
    .local v0, "currentUserInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 1090
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1091
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1092
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1093
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1094
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1096
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1097
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1098
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1099
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1101
    .end local v0    # "currentUserInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1079
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1083
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1075
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
