.class public Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;
.super Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_NEED_REQUEST_NETWORK:Ljava/lang/String; = "NEED_REQUEST_NETWORK"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mEarnGuaCoinBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;-><init>()V

    return-void
.end method

.method public static makeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const-string v1, "navColor"

    const-string v2, "#0acbc1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "titleColor"

    const-string v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "url"

    const-string v2, "about:blank"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "NEED_REQUEST_NETWORK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    return-object v0
.end method


# virtual methods
.method protected onBackClick()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->onBackClick()V

    .line 216
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->overridePendingTransition(II)V

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 200
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->onBackClick()V

    goto :goto_0

    .line 203
    :sswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Earn Gua Money View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dev"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jiliguala.com/referral-sharing.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "prod"

    goto :goto_1

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090031 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f090588

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b007a

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 127
    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0f00ea

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const v4, 0x7f090031

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    const v4, 0x7f0f0031

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    .local v0, "drLeft":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    invoke-virtual {v2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 141
    const v4, 0x7f09003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mEarnGuaCoinBtn:Landroid/widget/TextView;

    .line 142
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mEarnGuaCoinBtn:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "NEED_REQUEST_NETWORK"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    .local v1, "needRequest":Z
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mProgress:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->request()V

    .line 154
    .end local v1    # "needRequest":Z
    :cond_1
    return-void
.end method

.method protected request()V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 160
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->k()Lrx/e;

    move-result-object v1

    .line 161
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 162
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 163
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity$1;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;)V

    .line 164
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 194
    return-void
.end method
