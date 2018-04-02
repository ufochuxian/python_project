.class public Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field private listener:Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private sortType:I

.field private sortTypeJump:Landroid/widget/TextView;

.field private sortTypeNew:Landroid/widget/TextView;

.field private sortTypeOld:Landroid/widget/TextView;

.field private sortTypeRoot:Landroid/widget/TextView;

.field private totalFlr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->TAG:Ljava/lang/String;

    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 31
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortType:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->listener:Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    .prologue
    .line 25
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->totalFlr:I

    return v0
.end method

.method private changeTextColor(I)V
    .locals 3
    .param p1, "sortType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeNew:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeOld:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeRoot:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeJump:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeNew:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeOld:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeRoot:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeJump:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeNew:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeOld:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeRoot:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeJump:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeNew:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeOld:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeRoot:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeJump:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 63
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    .line 64
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;-><init>()V

    .line 67
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x1

    const v1, 0x7f1000b2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->setStyle(II)V

    .line 104
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 122
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000ba

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 123
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
    .line 129
    const v1, 0x7f0b00a7

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090512

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeNew:Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeNew:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v1, 0x7f090513

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeOld:Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeOld:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v1, 0x7f090514

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeRoot:Landroid/widget/TextView;

    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeRoot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v1, 0x7f090511

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeJump:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortTypeJump:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortType:I

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->changeTextColor(I)V

    .line 139
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->isShowing:Z

    .line 73
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 110
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    .line 111
    .local v1, "width":I
    const/4 v0, -0x2

    .line 112
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 113
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 114
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    return-void
.end method

.method public setListener(Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->listener:Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    .line 85
    return-void
.end method

.method public setSortType(I)V
    .locals 0
    .param p1, "sortType"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->sortType:I

    .line 77
    return-void
.end method

.method public setTotalFlr(I)V
    .locals 0
    .param p1, "totalFlr"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->totalFlr:I

    .line 81
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 90
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 92
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 94
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    goto :goto_0
.end method
