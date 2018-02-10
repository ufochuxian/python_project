.class Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/a/g;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;Lcom/jiliguala/niuwa/common/a/g;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->a:Lcom/jiliguala/niuwa/common/a/g;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;)V
    .locals 5
    .param p1, "globeTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    .prologue
    .line 85
    if-eqz p1, :cond_2

    .line 87
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->d()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v0

    .line 89
    .local v0, "curUser":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    .line 90
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 91
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v4, 0x1001

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    .line 92
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 95
    .end local v0    # "curUser":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v1, "rootIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    .end local v1    # "rootIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->a:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->a:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 107
    :cond_2
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 72
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->a:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->a:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 81
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;->a(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;)V

    return-void
.end method
