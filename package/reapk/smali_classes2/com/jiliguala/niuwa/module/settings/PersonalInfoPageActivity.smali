.class public Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPersonalInfoFragment:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->finish()V

    .line 45
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f0b0046

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 29
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 31
    .local v1, "ft":Landroid/support/v4/app/an;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->mPersonalInfoFragment:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .line 33
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->mPersonalInfoFragment:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->mPersonalInfoFragment:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 37
    :cond_0
    const v2, 0x7f090158

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;->mPersonalInfoFragment:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 38
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 39
    return-void
.end method
