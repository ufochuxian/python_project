.class public Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->TAG:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->goToPersonalSetting()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 80
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    .line 81
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;-><init>()V

    .line 84
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    :cond_0
    return-object v0
.end method

.method private goToPersonalSetting()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SETTING_TYPE"

    const/16 v2, 0x1001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 92
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ac;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 154
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->goToPersonalSetting()V

    .line 158
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const/4 v0, 0x1

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->setStyle(II)V

    .line 121
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 137
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 138
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 143
    const v1, 0x7f0b0146

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->isShowing:Z

    .line 102
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 126
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v1, v2, 0x4

    .line 127
    .local v1, "width":I
    const/4 v0, -0x2

    .line 128
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 129
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 130
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 107
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 109
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 111
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method
