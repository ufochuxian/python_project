.class public Lcom/jiliguala/niuwa/common/a/d;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/common/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/d;->a:Ljava/lang/String;

    .line 26
    const-class v0, Lcom/jiliguala/niuwa/common/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/d;->d:Z

    return-void
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/d;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 31
    sget-object v1, Lcom/jiliguala/niuwa/common/a/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/a/d;

    .line 32
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/a/d;
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/jiliguala/niuwa/common/a/d;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/d;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/d;-><init>()V

    .line 35
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/d;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/d;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/d;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/d;->c:Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setProgress(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 41
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/d;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/d;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    sget-object v1, Lcom/jiliguala/niuwa/common/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 45
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/d;->d:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/a/d;->setStyle(II)V

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 90
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 92
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
    .line 98
    const v1, 0x7f0b0098

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/d;->c:Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;

    .line 100
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/d;->c:Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setMax(I)V

    .line 102
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/d;->d:Z

    .line 55
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 67
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 68
    const/4 v2, -0x2

    .line 69
    .local v2, "width":I
    const/4 v1, -0x2

    .line 70
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 72
    new-instance v3, Lcom/jiliguala/niuwa/common/a/d$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/common/a/d$1;-><init>(Lcom/jiliguala/niuwa/common/a/d;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 84
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method
