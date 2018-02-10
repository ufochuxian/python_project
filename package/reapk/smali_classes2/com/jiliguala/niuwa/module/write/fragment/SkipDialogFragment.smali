.class public Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field private mContent:Ljava/lang/String;

.field private mSkipCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipInfo:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->TAG:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->isShowing:Z

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 39
    sget-object v1, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    .line 40
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;-><init>()V

    .line 43
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 77
    instance-of v0, p1, Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipCallback:Ljava/lang/ref/WeakReference;

    .line 82
    return-void

    .line 80
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No SkipCallback found."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->dismissAllowingStateLoss()V

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;->doSkipCourse()V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->dismissAllowingStateLoss()V

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;->proceedCourse()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x7f0904f9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->setStyle(II)V

    .line 72
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 114
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    .line 122
    const v1, 0x7f0b0186

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0904fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipInfo:Landroid/widget/TextView;

    .line 124
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mContent:Ljava/lang/String;

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f0f01c3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v1, 0x7f0904f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v1, 0x7f0904fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-object v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->isShowing:Z

    .line 66
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 88
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 89
    const/high16 v3, 0x438c0000    # 280.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .line 90
    .local v2, "width":I
    const/4 v1, -0x2

    .line 91
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 93
    new-instance v3, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment$1;-><init>(Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 108
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mContent:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->mSkipInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-object p0
.end method

.method public setDefaultContent()Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    .locals 1

    .prologue
    .line 141
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->setContent(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 52
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->isShowing:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    sget-object v1, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 56
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
