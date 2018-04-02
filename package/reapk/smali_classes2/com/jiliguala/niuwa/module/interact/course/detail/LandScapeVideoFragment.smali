.class public Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeUI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeUI;",
        ">;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeUI;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mRootView:Landroid/view/View;

.field private mShowing:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoUrl:Ljava/lang/String;

.field private mediaControllerLand:Landroid/widget/LinearLayout;

.field private topBarContainerLand:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->TAG:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 40
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    .line 41
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;-><init>()V

    .line 45
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;
    :cond_0
    return-object v0
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VIDEO_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mVideoUrl:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method private hideController()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mShowing:Z

    .line 140
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->showLandScapeController(Z)V

    .line 141
    return-void
.end method

.method private showController()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mShowing:Z

    .line 145
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->showLandScapeController(Z)V

    .line 146
    return-void
.end method

.method private showLandScapeController(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 149
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mediaControllerLand:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->topBarContainerLand:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v1, v2

    .line 150
    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeUI;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->handleArguments()V

    .line 62
    return-void
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
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 75
    const v1, 0x7f0b00b6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mRootView:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0905a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->topBarContainerLand:Landroid/widget/RelativeLayout;

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->topBarContainerLand:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090329

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mediaControllerLand:Landroid/widget/LinearLayout;

    .line 83
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mediaControllerLand:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0905f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mSurfaceView:Landroid/view/SurfaceView;

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 88
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 89
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0905f6

    if-ne v1, v2, :cond_0

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 125
    :pswitch_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mShowing:Z

    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->hideController()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->showController()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 97
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 112
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 103
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->setOnPrepareListener()V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mVideoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->setDataSource(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->surfaceDestoryed(Landroid/view/SurfaceHolder;)V

    .line 117
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 118
    return-void
.end method
