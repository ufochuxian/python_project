.class public Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/KeepAddressActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/story/KeepAddressPresenter;",
        "Lcom/jiliguala/niuwa/module/story/KeepAddressActivityView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/story/KeepAddressActivityView;"
    }
.end annotation


# instance fields
.field private keepAddressFragment:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

.field private mBackIcon:Landroid/widget/ImageView;

.field private mConfirmBtn:Landroid/widget/Button;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mSource:Ljava/lang/String;

.field private mTopBar:Landroid/widget/TextView;

.field private mTopBarRly:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mSource:Ljava/lang/String;

    .line 80
    :cond_0
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V
    .locals 6
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .prologue
    const v5, 0x7f010020

    const v4, 0x7f01001f

    .line 83
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 84
    .local v2, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "SOURCE"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 98
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    const v3, 0x7f090158

    sget-object v4, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 100
    sget-object v3, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 104
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 105
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v2, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->createPresenter()Lcom/jiliguala/niuwa/module/story/KeepAddressPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/KeepAddressPresenter;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/module/story/KeepAddressPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getUi()Lcom/jiliguala/niuwa/module/story/KeepAddressActivityView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/KeepAddressActivityView;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 123
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->finish()V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 111
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->finish()V

    goto :goto_0

    .line 114
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->keepAddressFragment:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->keepAddressFragment:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->actionNext()V

    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x7f09002f -> :sswitch_1
        0x7f090096 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 48
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->handleIntent()V

    .line 51
    const v3, 0x7f09059b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mTopBarRly:Landroid/widget/RelativeLayout;

    .line 52
    const v3, 0x7f09059f

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mTopBar:Landroid/widget/TextView;

    .line 53
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mTopBar:Landroid/widget/TextView;

    const-string v4, "\u6536\u8d27\u5730\u5740"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v3, 0x7f090096

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mBackIcon:Landroid/widget/ImageView;

    .line 56
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v3, 0x7f0b006e

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mConfirmBtn:Landroid/widget/Button;

    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 60
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    const/16 v3, 0xf

    invoke-virtual {v1, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    invoke-virtual {v1, v6, v6, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mConfirmBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mTopBarRly:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mConfirmBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const v3, 0x7f090158

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->mContainer:Landroid/widget/RelativeLayout;

    .line 71
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->keepAddressFragment:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .line 73
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->keepAddressFragment:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;->replaceFragment(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V

    .line 74
    return-void
.end method
