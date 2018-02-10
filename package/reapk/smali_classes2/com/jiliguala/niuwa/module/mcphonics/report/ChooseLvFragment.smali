.class public Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;,
        Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final LV_MC_NAMES:[Ljava/lang/String;

.field private static final LV_PH_NAMES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private bind:Lbutterknife/Unbinder;

.field private index:I

.field private isShowing:Z

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902d2
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;

.field private mRootView:Landroid/view/View;

.field shareCancel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904d1
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u79cd\u5b50\u8def\u7ebf0-1\u5c81"

    aput-object v1, v0, v3

    const-string v1, "\u840c\u82bd\u8def\u7ebf1-2\u5c81"

    aput-object v1, v0, v4

    const-string v1, "\u4e3b\u7ebf\u8bfe\u7a0b Lv1"

    aput-object v1, v0, v5

    const-string v1, "\u4e3b\u7ebf\u8bfe\u7a0b Lv2"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u4e3b\u7ebf\u8bfe\u7a0b Lv3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->LV_MC_NAMES:[Ljava/lang/String;

    .line 35
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u81ea\u7136\u62fc\u8bfb Lv1"

    aput-object v1, v0, v3

    const-string v1, "\u81ea\u7136\u62fc\u8bfb Lv2"

    aput-object v1, v0, v4

    const-string v1, "\u81ea\u7136\u62fc\u8bfb Lv3"

    aput-object v1, v0, v5

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->LV_PH_NAMES:[Ljava/lang/String;

    .line 38
    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->TAG:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->index:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->mOnItemClickListener:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->index:I

    return v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 53
    sget-object v1, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .line 55
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;-><init>()V

    .line 58
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v1, "mc"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->type:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->LV_MC_NAMES:[Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p0, v2, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;Landroid/content/Context;[Ljava/lang/String;)V

    .line 127
    .local v0, "adapter":Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    return-void

    .line 126
    .end local v0    # "adapter":Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;
    :cond_0
    sget-object v1, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->LV_PH_NAMES:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->dismissAllowingStateLoss()V

    .line 190
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "typ"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->type:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->index:I

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 75
    const v1, 0x7f1000b4

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->setStyle(II)V

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 77
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 80
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 118
    const v0, 0x7f0b0108

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->mRootView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->mRootView:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->bind:Lbutterknife/Unbinder;

    .line 120
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->init()V

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/v4/app/ac;->onDestroyView()V

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->bind:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 196
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->isShowing:Z

    .line 113
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 86
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    .line 87
    .local v1, "width":I
    const/4 v0, -0x2

    .line 88
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 89
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 90
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 91
    return-void
.end method

.method public setOnItemClickListener(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->mOnItemClickListener:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;

    .line 182
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 99
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->isShowing:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    sget-object v1, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 103
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
