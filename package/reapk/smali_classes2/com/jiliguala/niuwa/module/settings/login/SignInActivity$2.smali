.class Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 220
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 222
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->onLoginSucceed()V

    goto :goto_0

    .line 228
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 233
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 238
    :sswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->showProgressDialog()V

    goto :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1031 -> :sswitch_2
        0x1040 -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
