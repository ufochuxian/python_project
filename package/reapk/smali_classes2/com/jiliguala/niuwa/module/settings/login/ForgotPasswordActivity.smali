.class public Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

.field private mEmailEt:Landroid/widget/EditText;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mEmailEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onBackPressed()V

    .line 116
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->overridePendingTransition(II)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->setContentView(I)V

    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 99
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 100
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, "topRightBtn":Landroid/widget/TextView;
    const-string v3, "\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v3, 0x7f090588

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "titleTv":Landroid/widget/TextView;
    const-string v3, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v3, 0x7f0901d9

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mEmailEt:Landroid/widget/EditText;

    .line 107
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0x65

    aput v5, v4, v6

    invoke-direct {v3, v1, v4}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 108
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/d;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mEmailEt:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/d;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 110
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 111
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 128
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 122
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 123
    return-void
.end method
