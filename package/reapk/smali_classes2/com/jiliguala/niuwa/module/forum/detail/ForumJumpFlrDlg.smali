.class public Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field private jumpEditText:Landroid/widget/EditText;

.field private listener:Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private totalFlr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->TAG:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 33
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->listener:Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->jumpEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 57
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    .line 58
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;-><init>()V

    .line 61
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v0, 0x1

    const v1, 0x7f1000b3

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->setStyle(II)V

    .line 95
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 112
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 113
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
    .line 118
    const v1, 0x7f0b00a4

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f090217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->jumpEditText:Landroid/widget/EditText;

    .line 121
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->jumpEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->jumpEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u697c\u5c42\u6570 (\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->totalFlr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u697c)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->jumpEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->isShowing:Z

    .line 68
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 101
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    .line 102
    .local v1, "width":I
    const/4 v0, -0x2

    .line 103
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 104
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    return-void
.end method

.method public setListener(Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->listener:Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    .line 76
    return-void
.end method

.method public setTotalFlr(I)V
    .locals 0
    .param p1, "totalFlr"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->totalFlr:I

    .line 72
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 81
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 83
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 85
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    goto :goto_0
.end method
