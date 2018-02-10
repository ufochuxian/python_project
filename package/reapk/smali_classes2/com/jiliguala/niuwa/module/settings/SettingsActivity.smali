.class public Lcom/jiliguala/niuwa/module/settings/SettingsActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static final RESPONSE_CODE_LOGOUT:I = 0x9331

.field public static final SETTING_TYPE:Ljava/lang/String; = "SETTING_TYPE"

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_PERSONAL_SETTING:I = 0x1001

.field public static final TYPE_SETTING_MAIN:I = 0x1000


# instance fields
.field private mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

.field private mSettingMainPageFragment:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

.field private mSettingPersonalFragment:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 90
    packed-switch p2, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->onResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->d()V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->finish()V

    .line 80
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f090158

    .line 36
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v4, 0x7f0b0046

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->setContentView(I)V

    .line 39
    new-instance v4, Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/jiliguala/niuwa/module/settings/ScanResult;-><init>(Landroid/support/v4/app/FragmentActivity;Lrx/i/b;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 42
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 44
    .local v1, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 45
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "SETTING_TYPE"

    const/16 v5, 0x1000

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 46
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 58
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 59
    return-void

    .line 48
    :pswitch_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->mSettingMainPageFragment:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .line 50
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->mSettingMainPageFragment:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    sget-object v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v6, v4, v5}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->mSettingPersonalFragment:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .line 55
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->mSettingPersonalFragment:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    sget-object v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v6, v4, v5}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public switchContent(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 64
    .local v0, "transaction":Landroid/support/v4/app/an;
    const v1, 0x7f01001d

    const v2, 0x7f010013

    const v3, 0x7f010012

    const v4, 0x7f01001e

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 65
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const v1, 0x7f090158

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 68
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 71
    .end local v0    # "transaction":Landroid/support/v4/app/an;
    :cond_0
    return-void
.end method
