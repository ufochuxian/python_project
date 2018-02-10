.class public Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

.field private mTopBar:Landroid/widget/TextView;

.field private orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->orderId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 64
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const v1, 0x7f090158

    sget-object v2, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 66
    sget-object v1, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 70
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 71
    return-void

    .line 68
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Order Detail View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method private setArguments(Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    .prologue
    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "order_id"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 93
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getConnectUsDialog()Lcom/jiliguala/niuwa/a/b/b;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/jiliguala/niuwa/a/b/b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/a/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onBackPressed()V

    .line 117
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->finish()V

    .line 118
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 99
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->finish()V

    goto :goto_0

    .line 102
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->getConnectUsDialog()Lcom/jiliguala/niuwa/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/b;->a()V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x7f090096 -> :sswitch_0
        0x7f09057e -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->handleIntent()V

    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->reportAmplitude()V

    .line 35
    const v3, 0x7f0b0021

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->setContentView(I)V

    .line 37
    const v3, 0x7f090595

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->mTopBar:Landroid/widget/TextView;

    .line 38
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->mTopBar:Landroid/widget/TextView;

    const-string v4, "\u8ba2\u5355\u8be6\u60c5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v3, 0x7f090096

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, "backIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v3, 0x7f09057e

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    .local v1, "connectUs":Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    move-result-object v2

    .line 48
    .local v2, "fragment":Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->setArguments(Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;)V

    .line 50
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->replaceFragment(Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;)V

    .line 51
    return-void
.end method

.method public refreshTopBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->mTopBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;->mTopBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    return-void
.end method
