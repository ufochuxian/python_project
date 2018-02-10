.class Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$4;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 1
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$4;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$4;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 266
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 258
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$4;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
