.class public Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/a$a;
.implements Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;
.implements Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;,
        Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;",
        ">;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/common/widget/a$a;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;",
        "Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;",
        "Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;",
        "Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final MSG_HIDE_PLAY_PAUSE_BTN:I = 0x1001

.field public static final MSG_SCROLL_VIEW:I = 0x1002

.field public static final MSG_SET_BTN_VALUE:I = 0x1003

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBottomContainer:Landroid/widget/LinearLayout;

.field private mBuyRightNow:Landroid/widget/TextView;

.field private mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private mCourseId:Ljava/lang/String;

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

.field private mDetailDesc:Landroid/widget/TextView;

.field private mDone:Landroid/widget/TextView;

.field private mGoodsDetailTemplete:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

.field private mHeadContainer:Landroid/widget/RelativeLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsFirstClickPlayBtn:Z

.field private mIsVisible:Z

.field private mItemID:Ljava/lang/String;

.field private mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

.field private mOriginPrice:Landroid/widget/TextView;

.field private mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

.field private mPrice:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSurfaceBg:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTitle:Landroid/widget/TextView;

.field private mTopContainer:Landroid/widget/RelativeLayout;

.field private mVideoContainer:Landroid/widget/FrameLayout;

.field private mVideoPlayPause:Landroid/widget/ImageView;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mIsFirstClickPlayBtn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 107
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .line 108
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;-><init>()V

    .line 112
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
    :cond_0
    return-object v0
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 138
    const-string v1, "COURSE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCourseId:Ljava/lang/String;

    .line 139
    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mItemID:Ljava/lang/String;

    .line 141
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v2, 0x8

    .line 161
    const v0, 0x7f0b00b4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090495

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0905a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mTopContainer:Landroid/widget/RelativeLayout;

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mHeadContainer:Landroid/widget/RelativeLayout;

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0905fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoContainer:Landroid/widget/FrameLayout;

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0905ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mIcon:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mTitle:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mDetailDesc:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090403

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPrice:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0903b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mOriginPrice:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mDone:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBuyRightNow:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBuyRightNow:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090601

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->relayoutView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->relayoutView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    return-void
.end method

.method private isVideoPlayPauseVisible()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 598
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "image.jpg"

    .line 598
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 603
    :goto_0
    if-nez v0, :cond_0

    .line 609
    :cond_0
    return-object v0

    .line 600
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->playVideo()V

    .line 334
    return-void
.end method

.method private relayoutView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 218
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 220
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    return-void
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mItemID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "Type"

    const-string v2, "interaction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    return-void
.end method

.method private reportPlayEndAmplitude()V
    .locals 3

    .prologue
    .line 623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 624
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mItemID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Interactive Trailer End"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 626
    return-void
.end method

.method private reportPlayStartAmplitude()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mItemID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Interactive Trailer Start"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 283
    return-void
.end method

.method private resumeOrPauseVideo()V
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->playVideo()V

    .line 303
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->pauseVideo()V

    goto :goto_0
.end method

.method private showPayPage()V
    .locals 5

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-nez v1, :cond_1

    .line 339
    const-string v0, ""

    .line 340
    .local v0, "amount":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mGoodsDetailTemplete:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mGoodsDetailTemplete:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mGoodsDetailTemplete:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->shouldpay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mGoodsDetailTemplete:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->shouldpay:Ljava/lang/String;

    .line 343
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mItemID:Ljava/lang/String;

    const-string v4, "REQUEST_CHARGE_USE_GET"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    .line 344
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setOnPayClickListener(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;)V

    .line 345
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setCallBack(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;)V

    .line 347
    .end local v0    # "amount":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addScreenStateWatcher(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    .prologue
    .line 742
    new-instance v0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .line 743
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;)V

    .line 744
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->c()V

    .line 745
    return-void
.end method

.method public clickVideoPlayPauseBtn()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mIsFirstClickPlayBtn:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->reportPlayStartAmplitude()V

    .line 273
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->setVideoDataSource()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->resumeOrPauseVideo()V

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;-><init>()V

    return-object v0
.end method

.method public dismissLoadingProgres()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 795
    :cond_0
    return-void
.end method

.method public enablePayDialogBtn()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 364
    :cond_0
    return-void
.end method

.method public fillView(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V
    .locals 28
    .param p1, "goodsDetailTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .prologue
    .line 410
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mGoodsDetailTemplete:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .line 413
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v13, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->intro:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;

    .line 416
    .local v13, "intro":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;
    iget-object v0, v13, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;->video:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoUrl:Ljava/lang/String;

    .line 417
    iget-object v0, v13, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceBg:Ljava/lang/String;

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceBg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 419
    new-instance v24, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;-><init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)V

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceBg:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->c([Ljava/lang/Object;)Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    .line 424
    :cond_0
    iget-object v0, v13, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;->pictures:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoContainer:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 426
    new-instance v5, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;-><init>(Landroid/content/Context;)V

    .line 427
    .local v5, "courseDetailPicLooperView":Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;
    iget-object v0, v13, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;->pictures:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a(Ljava/util/ArrayList;)V

    .line 428
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 429
    .local v14, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v24, 0x43480000    # 200.0f

    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v24

    move/from16 v0, v24

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mHeadContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .end local v5    # "courseDetailPicLooperView":Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;
    .end local v14    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->head:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;

    .line 437
    .local v10, "head":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v10, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;->ttl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    .line 441
    .local v3, "activity":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;
    iget-object v0, v10, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;->ttl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->refreshTopBar(Ljava/lang/String;)V

    .line 443
    .end local v3    # "activity":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mDetailDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v10, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;->desc:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPrice:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v10, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;->price:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mOriginPrice:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v10, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;->oriprice:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mDone:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;->doneusers:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\u4eba\u8d2d\u4e70"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->target:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;

    move-object/from16 v20, v0

    .line 456
    .local v20, "target":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->hasApphabet()Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->alphabet:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;->hasData()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 457
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->alphabet:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;->ttl:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 458
    .local v23, "ttl":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 459
    new-instance v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;)V

    .line 460
    .local v6, "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    iget-object v0, v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "\u5b57\u6bcd"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    .end local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    :cond_3
    new-instance v4, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;-><init>(Landroid/content/Context;)V

    .line 464
    .local v4, "alphabetView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->alphabet:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;->fillView(Ljava/util/ArrayList;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->generateDividerLine()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    .end local v4    # "alphabetView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;
    .end local v23    # "ttl":Ljava/lang/String;
    :cond_4
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->hasDialog()Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->dialog:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;->hasData()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 470
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->dialog:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;->ttl:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 471
    .restart local v23    # "ttl":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 472
    new-instance v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;)V

    .line 473
    .restart local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    iget-object v0, v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "\u5bf9\u8bdd"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    .end local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    :cond_5
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->dialog:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    .line 477
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->dialog:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$DialogData;

    .line 478
    .local v7, "dialog":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$DialogData;
    new-instance v8, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;-><init>(Landroid/content/Context;)V

    .line 479
    .local v8, "dialogView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;
    iget-object v0, v8, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAskEngTxt:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$DialogData;->asken:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, v8, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAskChineseText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$DialogData;->askcn:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, v8, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAnswerEngTxt:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$DialogData;->asken:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, v8, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;->mAnserChineseTxt:Landroid/widget/TextView;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$DialogData;->anscn:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 485
    .end local v7    # "dialog":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$DialogData;
    .end local v8    # "dialogView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DialogView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->generateDividerLine()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    .end local v11    # "i":I
    .end local v23    # "ttl":Ljava/lang/String;
    :cond_7
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->hasSong()Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->song:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;->hasData()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 489
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->song:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;->ttl:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 490
    .restart local v23    # "ttl":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 491
    new-instance v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;)V

    .line 492
    .restart local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    iget-object v0, v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "\u6b4c\u66f2"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    .end local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->song:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_9

    .line 496
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->song:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;

    .line 497
    .local v18, "song":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;
    new-instance v19, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;-><init>(Landroid/content/Context;)V

    .line 498
    .local v19, "songView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;->mSongText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;->en:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 501
    .end local v18    # "song":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;
    .end local v19    # "songView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/SongView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->generateDividerLine()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    .end local v11    # "i":I
    .end local v23    # "ttl":Ljava/lang/String;
    :cond_a
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->hasWords()Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->words:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;->hasData()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 504
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->words:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;->ttl:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 505
    .restart local v23    # "ttl":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 506
    new-instance v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;)V

    .line 507
    .restart local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    iget-object v0, v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "\u5355\u8bcd"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    .end local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    :cond_b
    new-instance v9, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;-><init>(Landroid/content/Context;)V

    .line 511
    .local v9, "gridWordView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->words:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;->fillView(Ljava/util/ArrayList;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->generateDividerLine()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    .end local v9    # "gridWordView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;
    .end local v23    # "ttl":Ljava/lang/String;
    :cond_c
    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->hasSentence()Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->sentence:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;->hasData()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 516
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->sentence:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;->ttl:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 517
    .restart local v23    # "ttl":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 518
    new-instance v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;)V

    .line 519
    .restart local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    iget-object v0, v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "\u53e5\u578b"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    .end local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->sentence:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_e

    .line 523
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->sentence:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;

    .line 524
    .local v16, "sentence":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;
    new-instance v17, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SentenceView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SentenceView;-><init>(Landroid/content/Context;)V

    .line 525
    .local v17, "sentenceView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/SentenceView;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SentenceView;->mEngTxt:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;->en:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/SentenceView;->mChineseTxt:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;->cn:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 529
    .end local v16    # "sentence":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$BaseBean;
    .end local v17    # "sentenceView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/SentenceView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->generateDividerLine()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    .end local v11    # "i":I
    .end local v23    # "ttl":Ljava/lang/String;
    :cond_f
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->hasPoster()Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->poster:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;->hasData()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 535
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->poster:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;->ttl:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 536
    .restart local v23    # "ttl":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_10

    .line 537
    new-instance v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;-><init>(Landroid/content/Context;)V

    .line 538
    .restart local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    iget-object v0, v6, Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const-string v25, "\u56fe\u7247"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    .end local v6    # "descTitleView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/DescTitleView;
    :cond_10
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->poster:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_11

    .line 542
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->poster:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;->data:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$PosterData;

    .line 543
    .local v15, "posterData":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$PosterData;
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 544
    .local v12, "imageView":Landroid/widget/ImageView;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v24

    move/from16 v0, v24

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 546
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v15, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$PosterData;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 547
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v24

    iget-object v0, v15, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$PosterData;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v12, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 555
    .end local v11    # "i":I
    .end local v12    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "posterData":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$PosterData;
    .end local v23    # "ttl":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->teacher:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;

    move-object/from16 v21, v0

    .line 556
    .local v21, "teacher":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;
    if-eqz v21, :cond_12

    .line 557
    new-instance v22, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;-><init>(Landroid/content/Context;)V

    .line 558
    .local v22, "teacherDescView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v24

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;->ava:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mTeacherIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v27

    invoke-virtual/range {v24 .. v27}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 559
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mEngName:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;->nick:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mChineseName:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;->sub_head:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;->mTeacherDesc:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;->desc:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mBottomContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v10    # "head":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;
    .end local v13    # "intro":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;
    .end local v20    # "target":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;
    .end local v21    # "teacher":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;
    .end local v22    # "teacherDescView":Lcom/jiliguala/niuwa/module/interact/course/detail/view/TeacherDescView;
    :cond_12
    :goto_4
    return-void

    .line 565
    :catch_0
    move-exception v24

    goto :goto_4
.end method

.method public generateDividerLine()Landroid/view/View;
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 643
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 644
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 645
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 646
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 647
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 648
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 649
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    return-object v1
.end method

.method public getNetWorkNotifyDialog()Lcom/jiliguala/niuwa/common/widget/a;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/a;->a(Lcom/jiliguala/niuwa/common/widget/a$a;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;
    .locals 0

    .prologue
    .line 122
    return-object p0
.end method

.method public hidePayPage()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 358
    :cond_0
    return-void
.end method

.method public hideVideoBg()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_0
    return-void
.end method

.method public hideVideoPlayPauseBtn()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    :cond_0
    return-void
.end method

.method public isLoadingProgressShowing()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->VideoDetailPageNoneWifiEnable:Z

    .line 739
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 234
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->isVideoPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->pauseVideo()V

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->showPayPage()V

    goto :goto_0

    .line 243
    :sswitch_1
    const-string v2, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 244
    .local v0, "enableNotifyNoneWifi":Z
    if-eqz v0, :cond_4

    .line 245
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 246
    .local v1, "networkType":I
    if-eq v1, v3, :cond_3

    .line 247
    sget-boolean v2, Lcom/jiliguala/niuwa/MyApplication;->VideoDetailPageNoneWifiEnable:Z

    if-eqz v2, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->clickVideoPlayPauseBtn()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getNetWorkNotifyDialog()Lcom/jiliguala/niuwa/common/widget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/a;->a()V

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->clickVideoPlayPauseBtn()V

    goto :goto_0

    .line 256
    .end local v1    # "networkType":I
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->clickVideoPlayPauseBtn()V

    goto :goto_0

    .line 261
    .end local v0    # "enableNotifyNoneWifi":Z
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->isVideoPlayPauseVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->pauseVideo()V

    goto :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x7f0900e4 -> :sswitch_0
        0x7f0905ff -> :sswitch_1
        0x7f090601 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->VideoDetailPageNoneWifiEnable:Z

    .line 732
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->resumeOrPauseVideo()V

    .line 733
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->handleArguments()V

    .line 131
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    .line 146
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->reportAmplitude()V

    .line 148
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->initView(Landroid/view/LayoutInflater;)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 725
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 726
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->releasePlayer()V

    .line 727
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 712
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onPause()V

    .line 714
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->dismissLoadingProgres()V

    .line 633
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    const/16 v1, 0x1003

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->sendEmptyMessageDelayed(IJ)Z

    .line 636
    :cond_0
    return-void
.end method

.method public onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
    .param p2, "payAmount"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "orderId"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 400
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 401
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    .line 402
    .local v0, "interactLessonDetailActivity":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;
    invoke-virtual {v0, p1, p2, p4}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v0    # "interactLessonDetailActivity":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;
    :cond_0
    return-void
.end method

.method public onReceivedPayResultTimeout()V
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 389
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 390
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    .line 391
    .local v0, "interactLessonDetailActivity":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->onReceivedPayResultTimeout()V

    .line 394
    .end local v0    # "interactLessonDetailActivity":Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 706
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mIsVisible:Z

    .line 708
    return-void
.end method

.method public onScreenOff()V
    .locals 3

    .prologue
    const/16 v2, 0x1001

    .line 761
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->pauseVideo()V

    .line 762
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->removeMessages(I)V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 718
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onStop()V

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mIsVisible:Z

    .line 721
    return-void
.end method

.method public onVideoPlayComplete()V
    .locals 3

    .prologue
    const/16 v2, 0x1001

    .line 614
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->reportPlayEndAmplitude()V

    .line 615
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->removeMessages(I)V

    .line 620
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->requestGoodsDetail(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onWeixinPayClick()V
    .locals 1

    .prologue
    .line 572
    const-string v0, "\u6b63\u5728\u8fdb\u5165\u5fae\u4fe1,\u8bf7\u7a0d\u540e..."

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->reportLessonPurchaseClick()V

    .line 574
    return-void
.end method

.method public onZhiFuBaoPayClick()V
    .locals 0

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->reportLessonPurchaseClick()V

    .line 579
    return-void
.end method

.method public pauseVideo()V
    .locals 3

    .prologue
    const/16 v2, 0x1001

    .line 315
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->isLoadingProgressShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->removeMessages(I)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->pauseVideo()V

    .line 323
    :cond_1
    return-void
.end method

.method public releaseSurfaceRes(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->surfaceDestoryed()V

    .line 698
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reportLessonPurchaseClick()V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mItemID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "Type"

    const-string v2, "interaction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 586
    return-void
.end method

.method public requestOrderResultWithNoRetry()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->requestOrderResultWithNoRetry()V

    .line 378
    :cond_0
    return-void
.end method

.method public scrollToHead()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->sendEmptyMessage(I)Z

    .line 592
    :cond_0
    return-void
.end method

.method public setBtnValue()V
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mIsFirstClickPlayBtn:Z

    .line 640
    return-void
.end method

.method public setVideoDataSource()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->setDataSource(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public showLoadingProgress()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCircleProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 788
    :cond_0
    return-void
.end method

.method public showVideoPlayPauseBtnSomeTime()V
    .locals 5

    .prologue
    const/16 v4, 0x1001

    .line 669
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->removeMessages(I)V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$a;->sendEmptyMessageDelayed(IJ)Z

    .line 676
    :cond_1
    return-void
.end method

.method public stopScreenStateWatcher()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->d()V

    .line 751
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 687
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoPlayPause:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 662
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->setDataSource(Ljava/lang/String;)V

    .line 666
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->releaseSurfaceRes(Landroid/view/SurfaceHolder;)V

    .line 693
    return-void
.end method

.method public updateOrderNoStatusToServer()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->reportOrderNoStatusToServer()V

    .line 370
    :cond_0
    return-void
.end method
