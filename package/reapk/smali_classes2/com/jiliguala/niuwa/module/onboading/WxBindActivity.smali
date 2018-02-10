.class public Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private mBindWxFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 27
    .local v0, "manager":Landroid/support/v4/app/ag;
    sget-object v2, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->mBindWxFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .line 28
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->mBindWxFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    if-nez v2, :cond_0

    .line 29
    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->mBindWxFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 33
    .local v1, "transaction":Landroid/support/v4/app/an;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->mBindWxFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    const v2, 0x7f090158

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->mBindWxFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 38
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 39
    return-void

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;->mBindWxFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method
