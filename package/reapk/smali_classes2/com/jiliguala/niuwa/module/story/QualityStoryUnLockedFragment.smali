.class public Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentPresenter;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionNext:Landroid/widget/TextView;

.field private mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

.field private mConnnectUs:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private orderTaget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->TAG:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    return-void
.end method

.method private calculatorHeight(Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, "drawable1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 90
    .local v2, "intrinsicHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 91
    .local v4, "minimumWidth":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v5

    mul-int/2addr v5, v2

    div-int v1, v5, v4

    .line 92
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 93
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 38
    sget-object v1, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;

    .line 39
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;-><init>()V

    .line 43
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;
    :cond_0
    return-object v0
.end method

.method private goOrderDetail()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->orderTaget:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private goToCaptureActivity()V
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->makeIntentForStoryBookUnLock(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 125
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentPresenter;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentPresenter;-><init>()V

    return-object v0
.end method

.method public getConnectUsDialog()Lcom/jiliguala/niuwa/a/b/b;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/jiliguala/niuwa/a/b/b;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedFragmentView;
    .locals 0

    .prologue
    .line 53
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 102
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->goToCaptureActivity()V

    goto :goto_0

    .line 105
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->goOrderDetail()V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x7f09002f -> :sswitch_0
        0x7f0902ac -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "STORY_LESSON_TARGET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->orderTaget:Ljava/lang/String;

    .line 63
    :cond_0
    return-void
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
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 68
    const v4, 0x7f0b00c5

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mRootView:Landroid/view/View;

    .line 69
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mActionNext:Landroid/widget/TextView;

    .line 70
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mActionNext:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0902aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, "mTop1":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->calculatorHeight(Landroid/widget/ImageView;)V

    .line 74
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0902ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 75
    .local v1, "mTop2":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->calculatorHeight(Landroid/widget/ImageView;)V

    .line 76
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0902ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 77
    .local v2, "mTop3":Landroid/widget/ImageView;
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0902ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 79
    .local v3, "mTop4":Landroid/widget/ImageView;
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->calculatorHeight(Landroid/widget/ImageView;)V

    .line 81
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedFragment;->mRootView:Landroid/view/View;

    return-object v4
.end method
