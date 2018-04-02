.class public Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ava:Ljava/lang/String;

.field private bd:Ljava/lang/String;

.field private bid:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private index:I

.field private isShowing:Z

.field private listener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private nick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->TAG:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->isShowing:Z

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 48
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;

    .line 49
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;-><init>()V

    .line 52
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;
    :cond_0
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 9
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 120
    const v5, 0x7f090381

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 121
    .local v3, "nameForBaby":Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v5, 0x7f090091

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    .local v0, "mBabyName":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->nick:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v5, 0x7f090351

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, "mModifyBaby":Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v5, 0x7f0904cb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, "mSetCurrentBaby":Landroid/widget/TextView;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->K()I

    move-result v5

    if-le v5, v4, :cond_0

    iget v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->index:I

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/login/a;->L()I

    move-result v8

    if-eq v5, v8, :cond_0

    .line 129
    .local v4, "show":Z
    :goto_0
    if-eqz v4, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v5, 0x7f0901c0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v5, 0x7f0900fa

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void

    .end local v4    # "show":Z
    :cond_0
    move v4, v6

    .line 127
    goto :goto_0

    .restart local v4    # "show":Z
    :cond_1
    move v5, v7

    .line 129
    goto :goto_1

    :cond_2
    move v6, v7

    .line 131
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 170
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->dismissAllowingStateLoss()V

    .line 171
    return-void

    .line 146
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->listener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->listener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->bid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->nick:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->bd:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->ava:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->gender:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;->onClickModifyBaby(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->listener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->listener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;

    iget v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->index:I

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;->onClickSwitchBaby(I)V

    goto :goto_0

    .line 156
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "dev."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jiliguala.com/babyname.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, "url":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 158
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 159
    .local v9, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v7, "naming_bid"

    .line 160
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->bid:Ljava/lang/String;

    invoke-virtual {v9, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Baby Nickname View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 164
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "key_url"

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v10    # "url":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090351 -> :sswitch_1
        0x7f090381 -> :sswitch_3
        0x7f0904cb -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x1

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->setStyle(II)V

    .line 91
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 108
    .local v0, "dialog":Landroid/app/Dialog;
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    const v1, 0x7f0b0065

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->initUI(Landroid/view/View;)V

    .line 116
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->isShowing:Z

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 96
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v1, v2, 0xa

    .line 97
    .local v1, "width":I
    const/4 v0, -0x2

    .line 98
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 99
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 100
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 101
    return-void
.end method

.method public setClickSwitchBabyListener(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->listener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;

    .line 66
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "bd"    # Ljava/lang/String;
    .param p4, "ava"    # Ljava/lang/String;
    .param p5, "gender"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->bid:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->nick:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->bd:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->ava:Ljava/lang/String;

    .line 60
    iput p6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->index:I

    .line 61
    iput-object p5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->gender:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 71
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 75
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method
