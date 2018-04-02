.class public Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityUI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityPresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityUI;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityUI;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mLandScapeVideoFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

.field private mTopBar:Landroid/widget/TextView;

.field private mTopBarContainer:Landroid/widget/RelativeLayout;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIDEO_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mVideoUrl:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;)V
    .locals 6
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    .prologue
    const v5, 0x7f010020

    const v4, 0x7f01001f

    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 65
    .local v2, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "VIDEO_URL"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 80
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    const v3, 0x7f090158

    sget-object v4, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 82
    sget-object v3, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 86
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 87
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v2, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityPresenter;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivityUI;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->finish()V

    .line 101
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->finish()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f090096
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->handleIntent()V

    .line 46
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 48
    const v0, 0x7f09059b

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mTopBarContainer:Landroid/widget/RelativeLayout;

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mTopBarContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 50
    const v0, 0x7f09059f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mTopBar:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mLandScapeVideoFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->mLandScapeVideoFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoActivity;->replaceFragment(Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;)V

    .line 55
    return-void
.end method
