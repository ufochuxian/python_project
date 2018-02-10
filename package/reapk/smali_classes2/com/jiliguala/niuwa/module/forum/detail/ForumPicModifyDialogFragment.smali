.class public Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private autoFinishActivity:Z

.field private isShowing:Z

.field private mCallback:Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

.field mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->TAG:Ljava/lang/String;

    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->isShowing:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->autoFinishActivity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->mCallback:Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 50
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    .line 51
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;-><init>()V

    .line 54
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCancel(Landroid/content/DialogInterface;)V

    .line 60
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->autoFinishActivity:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 63
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->setStyle(II)V

    .line 92
    return-void
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
    .line 107
    const v1, 0x7f0b011d

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->isShowing:Z

    .line 86
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 97
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v1, v2, 0x4

    .line 98
    .local v1, "width":I
    const/4 v0, -0x2

    .line 99
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 100
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    return-void
.end method

.method public setCallback(Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;)V
    .locals 0
    .param p1, "mCallback"    # Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->mCallback:Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    .line 116
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 73
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 75
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 77
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public showButNoAutoFinish(Landroid/support/v4/app/ag;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->autoFinishActivity:Z

    .line 68
    return-void
.end method
