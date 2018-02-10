.class public Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field private mActivity:Landroid/app/Activity;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->TAG:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 47
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mSubscriptions:Lrx/i/b;

    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 117
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    .line 118
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;-><init>()V

    .line 121
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mSubscriptions:Lrx/i/b;

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 175
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mActivity:Landroid/app/Activity;

    .line 176
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCancel(Landroid/content/DialogInterface;)V

    .line 132
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 135
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const/4 v0, 0x1

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->setStyle(II)V

    .line 154
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 182
    .local v0, "dialog":Landroid/app/Dialog;
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
    .line 188
    const v1, 0x7f0b0066

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->isShowing:Z

    .line 160
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 165
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v1, v2, 0xa

    .line 166
    .local v1, "width":I
    const/4 v0, -0x2

    .line 167
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 168
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 169
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 140
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 142
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 144
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method
