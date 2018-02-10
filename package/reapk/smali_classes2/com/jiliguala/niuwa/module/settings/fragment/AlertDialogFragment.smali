.class public Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mDrId:Z

.field private static mResId:I


# instance fields
.field private isShowing:Z

.field private mAlterText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->TAG:Ljava/lang/String;

    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->isShowing:Z

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;IZ)Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "resId"    # I
    .param p2, "changeIcon"    # Z

    .prologue
    .line 44
    sput p1, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->mResId:I

    .line 45
    sput-boolean p2, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->mDrId:Z

    .line 46
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;

    .line 47
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;-><init>()V

    .line 50
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->setStyle(II)V

    .line 76
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 90
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0051

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 93
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    const v2, 0x7f09004c

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->mAlterText:Landroid/widget/TextView;

    .line 95
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->mAlterText:Landroid/widget/TextView;

    sget v3, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->mResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 97
    sget-boolean v2, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->mDrId:Z

    if-eqz v2, :cond_0

    .line 98
    const v2, 0x7f09004b

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080191

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :cond_0
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->isShowing:Z

    .line 57
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 81
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v1, v2, 0x9

    .line 82
    .local v1, "width":I
    const/4 v0, -0x2

    .line 83
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 84
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 62
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 66
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method
