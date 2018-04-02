.class public Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIDismissListener:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

.field private mProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private showProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->TAG:Ljava/lang/String;

    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->isShowing:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->showProgress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mIDismissListener:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mIDismissListener:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    return-object p1
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 41
    sget-object v1, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    .line 42
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;-><init>()V

    .line 45
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setStyle(II)V

    .line 90
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 122
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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
    .line 131
    const v1, 0x7f0b007e

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0902ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 133
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->showProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$2;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    return-object v0

    .line 133
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->isShowing:Z

    .line 82
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 96
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 97
    const/4 v2, -0x2

    .line 98
    .local v2, "width":I
    const/4 v1, -0x2

    .line 99
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 101
    new-instance v3, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$1;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 116
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V
    .locals 0
    .param p1, "IDismissListener"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->mIDismissListener:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;

    .line 173
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 0
    .param p1, "showProgress"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->showProgress:Z

    .line 181
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 55
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->isShowing:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    sget-object v1, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 59
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
