.class public Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field private mCallback:Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;

.field mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->TAG:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->mCallback:Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 48
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    .line 49
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;-><init>()V

    .line 52
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 102
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;

    move-object v2, v0

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->mCallback:Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement ChooseOrTakePhotoCallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->setStyle(II)V

    .line 77
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
    .line 90
    const v1, 0x7f0b0074

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090555

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->isShowing:Z

    .line 58
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 82
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v1, v2, 0x4

    .line 83
    .local v1, "width":I
    const/4 v0, -0x2

    .line 84
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 85
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 63
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 67
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method
