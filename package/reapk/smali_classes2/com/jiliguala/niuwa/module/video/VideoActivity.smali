.class public Lcom/jiliguala/niuwa/module/video/VideoActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;
.implements Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;
.implements Lcom/jiliguala/niuwa/module/video/presenter/VideoView;
.implements Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;
.implements Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;,
        Lcom/jiliguala/niuwa/module/video/VideoActivity$b;,
        Lcom/jiliguala/niuwa/module/video/VideoActivity$c;,
        Lcom/jiliguala/niuwa/module/video/VideoActivity$a;,
        Lcom/jiliguala/niuwa/module/video/VideoActivity$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;",
        "Lcom/jiliguala/niuwa/module/video/presenter/VideoView;",
        ">;",
        "Landroid/content/ComponentCallbacks;",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;",
        "Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;",
        "Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;",
        "Lcom/jiliguala/niuwa/module/video/presenter/VideoView;",
        "Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;",
        "Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;"
    }
.end annotation


# static fields
.field private static final ALERT_FADE:I = 0x4

.field public static final BEGIN_RECORD_TIME:I = 0x0

.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "0"

.field private static final FADE_OUT:I = 0x1

.field public static final IS_WATCH:Ljava/lang/String; = "IS_WATCH"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_CHANNEL_DATA:Ljava/lang/String; = "channel_data"

.field public static final KEY_CHANNEL_TTL:Ljava/lang/String; = "title"

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field private static final KEY_LAND_HEIGHT:Ljava/lang/String; = "KEY_LAND_HEIGHT"

.field private static final KEY_LAND_WIDTH:Ljava/lang/String; = "KEY_LAND_WIDTH"

.field public static final KEY_LEVEL:Ljava/lang/String; = "LEVEL"

.field private static final KEY_PORT_HEIGHT:Ljava/lang/String; = "KEY_PORT_HEIGHT"

.field private static final KEY_PORT_WIDTH:Ljava/lang/String; = "KEY_PORT_WIDTH"

.field private static final LONG_CLICK_TIME:I = 0xbb8

.field private static final MSG_FADE_CHILDREN_LOCKER:I = 0x7

.field private static final MSG_HIDE_PB:I = 0x5

.field private static final MSG_PAUSE_VIDEO_PLAY:I = 0x9

.field private static final MSG_SHOW_PB:I = 0x6

.field private static final MSG_SHOW_VIDEO_CHANNEL:I = 0x8

.field public static final REMAINING_TIME:Ljava/lang/String; = "remaining_time"

.field private static final RENDER_INIT_DELAY:I = 0x320

.field public static final SEARCH_VIDEO:I = 0x1000

.field private static final SHOW_ALERT:I = 0x3

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final SIXTY_MINUTES:I = 0x36ee80

.field private static final S_DEFAULT_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String;

.field private static final UNLOCK_COUNTER:I = 0x3

.field private static final UNLOCK_TICK_TIME:I = 0x3e8

.field private static final W_H_16_9_RATIO:F = 1.7777778f


# instance fields
.field private bottomCenterContainer:Landroid/view/ViewGroup;

.field private bottomCenterContainerLand:Landroid/view/ViewGroup;

.field private bottomCenterMark:Landroid/widget/ImageView;

.field private bottomCenterMarkLand:Landroid/widget/ImageView;

.field private bottomCenterText:Landroid/widget/TextView;

.field private bottomCenterTextLand:Landroid/widget/TextView;

.field private bottomLeftContainer:Landroid/view/ViewGroup;

.field private bottomLeftContainerLand:Landroid/view/ViewGroup;

.field private bottomLeftMark:Landroid/widget/ImageView;

.field private bottomLeftMarkLand:Landroid/widget/ImageView;

.field private bottomLeftText:Landroid/widget/TextView;

.field private bottomLeftTextLand:Landroid/widget/TextView;

.field private bottomRightContainer:Landroid/view/ViewGroup;

.field private bottomRightContainerLand:Landroid/view/ViewGroup;

.field private bottomRightMark:Landroid/widget/ImageView;

.field private bottomRightMarkLand:Landroid/widget/ImageView;

.field private bottomRightText:Landroid/widget/TextView;

.field private bottomRightTextLand:Landroid/widget/TextView;

.field private childrenLockIv:Landroid/widget/ImageView;

.field private childrenTipsTv:Landroid/widget/TextView;

.field private childrenUnlockTv:Landroid/widget/TextView;

.field private clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

.field private currentCounter:I

.field private hasClickListTip:Z

.field private isChildrenLock:Z

.field isFromPractice:Z

.field private isNoneWifiState:Z

.field landVideoContainerHeight:I

.field landVideoContainerWidth:I

.field private lastClickTime:J

.field private loopBtn:Landroid/widget/ImageView;

.field private loopTipsTv:Landroid/widget/TextView;

.field private mAirplayStaticBg:Landroid/widget/ImageView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBottomMediaControllContainer:Landroid/widget/LinearLayout;

.field private mChannelId:Ljava/lang/String;

.field private mChannelName:Landroid/widget/TextView;

.field private mChannelNameLand:Landroid/widget/TextView;

.field private mChannelNm:Ljava/lang/String;

.field private mChannelTitle:Ljava/lang/String;

.field private mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

.field private mCountDownSwitcher:Landroid/widget/TextSwitcher;

.field private mCurrentTimeTv:Landroid/widget/TextView;

.field private mCurrentTimeTvLand:Landroid/widget/TextView;

.field private mDragging:Z

.field private mDuration:J

.field private mErrorDialog:Landroid/app/Dialog;

.field private mFavVideo:Landroid/widget/ImageView;

.field private mFavVideoLand:Landroid/widget/ImageView;

.field private mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

.field private mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

.field private mHasModel:Z

.field private mIndex:I

.field private mInstantSeeking:Z

.field private mIsCourseFinished:Z

.field private mIsCurrentFav:Z

.field private mIsWatch:Z

.field private mLastHasNetWork:Z

.field private mLevel:I

.field private mMenu:Landroid/view/View;

.field private mMenuLand:Landroid/view/View;

.field private mMirrorRenderBtn:Landroid/widget/ImageView;

.field private mMirrorRenderBtnLand:Landroid/widget/ImageView;

.field private mMoreToolsDlg:Landroid/app/Dialog;

.field private mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

.field private mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

.field private mPlayBtn:Landroid/widget/ImageView;

.field private mPlayBtnLand:Landroid/widget/ImageView;

.field private mPlayNextBtn:Landroid/widget/ImageView;

.field private mPlayNextBtnLand:Landroid/widget/ImageView;

.field private mPlayPreBtn:Landroid/widget/ImageView;

.field private mPlayPreBtnLand:Landroid/widget/ImageView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mRemaingTimeLimit:Landroid/widget/TextView;

.field mRid:Ljava/lang/String;

.field private mRoot:Landroid/view/View;

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarLand:Landroid/widget/SeekBar;

.field private mSeekBarPortaitControllerContainer:Landroid/widget/RelativeLayout;

.field private mShareBtn:Landroid/widget/ImageView;

.field private mShowListTip:Landroid/widget/TextView;

.field private mShowing:Z

.field private mSurfaceCover:Landroid/view/View;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSwitchButton:Lcom/kyleduo/switchbutton/SwitchButton;

.field private mTakeBreakDialog:Landroid/app/Dialog;

.field private mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private mTimeHandler:Landroid/os/Handler;

.field private mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

.field private mTotalTimeTv:Landroid/widget/TextView;

.field private mTotalTimeTvLand:Landroid/widget/TextView;

.field private mVideoChannelData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

.field private mVideoContainer:Landroid/view/View;

.field mVideoHeight:I

.field private mVideoSurface:Landroid/view/SurfaceView;

.field mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private m_end_time:J

.field private m_start_time:J

.field private mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field private mediaControllerLand:Landroid/widget/LinearLayout;

.field private moreToolsBtn:Landroid/widget/ImageView;

.field private moreToolsBtnLand:Landroid/widget/ImageView;

.field portVideoContainerHeight:I

.field portVideoContainerWidth:I

.field private progressBar:Landroid/view/View;

.field private runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

.field searchFirstPos:I

.field searchKeyword:Ljava/lang/String;

.field searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private shareTipsTv:Landroid/widget/TextView;

.field private singleLoop:Z

.field private titleContainer:Landroid/widget/RelativeLayout;

.field private titleLand:Landroid/widget/TextView;

.field private topBackLand:Landroid/view/View;

.field private topBarContainer:Landroid/view/View;

.field private topBarContainerLand:Landroid/view/View;

.field private videoLmtCtlIv:Landroid/widget/ImageView;

.field private videoLmtCtlNumTv:Landroid/widget/TextView;

.field private videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

.field private videoLmtCtlTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 158
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    .line 173
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mInstantSeeking:Z

    .line 203
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_start_time:J

    .line 204
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_end_time:J

    .line 213
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    .line 218
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    .line 223
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeHandler:Landroid/os/Handler;

    .line 239
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    .line 284
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLevel:I

    .line 305
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateMoreToolsIcons()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setHasClickedListTip()V

    return-void
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAirplayStaticBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->resumeUpdateProgress()V

    return-void
.end method

.method static synthetic access$2800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/kyleduo/switchbutton/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->currentCounter:I

    return v0
.end method

.method static synthetic access$3202(Lcom/jiliguala/niuwa/module/video/VideoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->currentCounter:I

    return p1
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->toggleChildrenLock()V

    return-void
.end method

.method static synthetic access$3600(Lcom/jiliguala/niuwa/module/video/VideoActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setProgress(II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showErrorDialog()V

    return-void
.end method

.method static synthetic access$3800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/VideoActivity;Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showChildrenUnlock(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRemaingTimeLimit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->postAndBack()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    .line 2555
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/VideoActivity$13;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$13;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 2554
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 2574
    return-void
.end method

.method private adjustAspectRatio(II)V
    .locals 16
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 1103
    const/4 v8, 0x0

    .line 1104
    .local v8, "viewWidth":I
    const/4 v7, 0x0

    .line 1105
    .local v7, "viewHeight":I
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p1

    int-to-double v14, v0

    div-double v2, v12, v14

    .line 1108
    .local v2, "aspectRatio":D
    int-to-double v12, v8

    mul-double/2addr v12, v2

    double-to-int v11, v12

    if-le v7, v11, :cond_0

    .line 1110
    move v5, v8

    .line 1111
    .local v5, "newWidth":I
    int-to-double v12, v8

    mul-double/2addr v12, v2

    double-to-int v4, v12

    .line 1117
    .local v4, "newHeight":I
    :goto_0
    sub-int v11, v8, v5

    div-int/lit8 v9, v11, 0x2

    .line 1118
    .local v9, "xoff":I
    sub-int v11, v7, v4

    div-int/lit8 v10, v11, 0x2

    .line 1122
    .local v10, "yoff":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1124
    .local v6, "txform":Landroid/graphics/Matrix;
    int-to-float v11, v5

    int-to-float v12, v8

    div-float/2addr v11, v12

    int-to-float v12, v4

    int-to-float v13, v7

    div-float/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1126
    int-to-float v11, v9

    int-to-float v12, v10

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1128
    return-void

    .line 1114
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "txform":Landroid/graphics/Matrix;
    .end local v9    # "xoff":I
    .end local v10    # "yoff":I
    :cond_0
    int-to-double v12, v7

    div-double/2addr v12, v2

    double-to-int v5, v12

    .line 1115
    .restart local v5    # "newWidth":I
    move v4, v7

    .restart local v4    # "newHeight":I
    goto :goto_0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 2426
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 2427
    return-void
.end method

.method private changeScreenOrientation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1423
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_2

    .line 1427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1428
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 1431
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1432
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestPortrait()V

    goto :goto_0

    .line 1433
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestLandscape()V

    goto :goto_0
.end method

.method private changeVisibilityViaRid()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2253
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2254
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2257
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2258
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2259
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2261
    return-void

    .line 2253
    :cond_1
    const-string v0, "\u9891\u9053"

    goto :goto_0

    .line 2254
    :cond_2
    const-string v0, "\u9891\u9053"

    goto :goto_1

    :cond_3
    move v0, v2

    .line 2256
    goto :goto_2

    :cond_4
    move v0, v3

    .line 2257
    goto :goto_3

    :cond_5
    move v1, v3

    .line 2259
    goto :goto_4
.end method

.method private doLoveScaleAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 572
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 576
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 577
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 578
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 579
    return-void
.end method

.method private hideController()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1329
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1330
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1331
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1332
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->pauseUpdateProgress()V

    .line 1335
    :cond_0
    return-void
.end method

.method private initDialogs()V
    .locals 2

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/f;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    .line 1569
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$23;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$23;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 1598
    return-void
.end method

.method private initErrorDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2096
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f1000b4

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    .line 2097
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v3, v4, 0x9

    .line 2098
    .local v3, "width":I
    const/4 v0, -0x2

    .line 2099
    .local v0, "height":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/view/Window;->setLayout(II)V

    .line 2100
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0051

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2101
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2103
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2104
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2105
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    const v5, 0x7f09004c

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2106
    .local v1, "mAlterText":Landroid/widget/TextView;
    const v4, 0x7f0f0267

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2107
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    const v5, 0x7f09004b

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f080194

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2108
    return-void
.end method

.method private initListTip()V
    .locals 2

    .prologue
    .line 2042
    const v0, 0x7f0904fc

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    .line 2043
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$2;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2049
    const-string v0, "VIDEO_LIST_TIPS_CLICK_FLAG"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    .line 2050
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 2051
    return-void
.end method

.method private initTextSwitcher()V
    .locals 4

    .prologue
    .line 1798
    const v2, 0x7f090603

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    .line 1799
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 1800
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    new-instance v3, Lcom/jiliguala/niuwa/module/video/VideoActivity$25;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$25;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 1810
    const/high16 v2, 0x10a0000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1811
    .local v0, "in":Landroid/view/animation/Animation;
    const v2, 0x10a0001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1814
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1815
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1817
    return-void
.end method

.method private initUI()V
    .locals 12

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x0

    const v9, 0x7f0600fe

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1820
    const v5, 0x7f0b019b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setContentView(I)V

    .line 1822
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initTextSwitcher()V

    .line 1824
    const v5, 0x7f090048

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAirplayStaticBg:Landroid/widget/ImageView;

    .line 1825
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAirplayStaticBg:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1829
    const v5, 0x7f090372

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    .line 1830
    const v5, 0x7f090371

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMark:Landroid/widget/ImageView;

    .line 1832
    const v5, 0x7f090375

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightText:Landroid/widget/TextView;

    .line 1837
    const v5, 0x7f090366

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    .line 1838
    const v5, 0x7f090365

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMark:Landroid/widget/ImageView;

    .line 1840
    const v5, 0x7f090369

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    .line 1845
    const v5, 0x7f09036c

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    .line 1846
    const v5, 0x7f09036b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMark:Landroid/widget/ImageView;

    .line 1848
    const v5, 0x7f09036f

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftText:Landroid/widget/TextView;

    .line 1853
    const v5, 0x7f090373

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    .line 1854
    const v5, 0x7f090374

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMarkLand:Landroid/widget/ImageView;

    .line 1855
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMarkLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1856
    const v5, 0x7f090376

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightTextLand:Landroid/widget/TextView;

    .line 1861
    const v5, 0x7f090367

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    .line 1862
    const v5, 0x7f090368

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    .line 1863
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1864
    const v5, 0x7f09036a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    .line 1869
    const v5, 0x7f09036d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    .line 1870
    const v5, 0x7f09036e

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMarkLand:Landroid/widget/ImageView;

    .line 1871
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMarkLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1872
    const v5, 0x7f090370

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftTextLand:Landroid/widget/TextView;

    .line 1875
    const v5, 0x7f090480

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRoot:Landroid/view/View;

    .line 1877
    const v5, 0x7f090409

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->progressBar:Landroid/view/View;

    .line 1878
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    const v5, 0x7f0905a1

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    .line 1881
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1882
    const v5, 0x7f09007a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBackLand:Landroid/view/View;

    .line 1883
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v5, :cond_0

    .line 1884
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBackLand:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageButton;

    const v6, 0x7f0802d6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1886
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBackLand:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1887
    const v5, 0x7f0905fd

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    .line 1889
    const v5, 0x7f090377

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtnLand:Landroid/widget/ImageView;

    .line 1890
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1891
    const v5, 0x7f090130

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    .line 1892
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1893
    .local v1, "drs":[Landroid/graphics/drawable/Drawable;
    aget-object v0, v1, v8

    .line 1894
    .local v0, "drLeft":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1895
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1896
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1897
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1899
    const v5, 0x7f090364

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtn:Landroid/widget/ImageView;

    .line 1901
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1903
    const v5, 0x7f0905fe

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    .line 1912
    const v5, 0x7f090383

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenu:Landroid/view/View;

    .line 1913
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenu:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1917
    const v5, 0x7f090384

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenuLand:Landroid/view/View;

    .line 1918
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenuLand:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1922
    const v5, 0x7f090189

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    .line 1923
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1924
    const v5, 0x7f0905b6

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTv:Landroid/widget/TextView;

    .line 1925
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTv:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1926
    const v5, 0x7f09018a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    .line 1927
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    const v5, 0x7f0905b7

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTvLand:Landroid/widget/TextView;

    .line 1929
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTvLand:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1931
    const v5, 0x7f09011c

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    .line 1932
    const v5, 0x7f09011d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    .line 1933
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1934
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1936
    const v5, 0x7f0901fa

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    .line 1938
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1943
    const v5, 0x7f0900ce

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    .line 1944
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1946
    const v5, 0x7f0900ca

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    .line 1947
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1949
    const v5, 0x7f0900cc

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    .line 1950
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1952
    const v5, 0x7f090167

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1953
    .local v4, "seekBarContainer":Landroid/view/View;
    const v5, 0x7f09032a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 1954
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1955
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1956
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1957
    const v5, 0x7f09022f

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1960
    const v5, 0x7f0900cf

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    .line 1961
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1962
    const v5, 0x7f0900cb

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    .line 1963
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1964
    const v5, 0x7f0900cd

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    .line 1965
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1966
    const v5, 0x7f090329

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    .line 1967
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1968
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1969
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    const v6, 0x7f09032b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    .line 1970
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1971
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v5, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1972
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1973
    const v5, 0x7f090230

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1975
    const v5, 0x7f090349

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    .line 1976
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1977
    const v5, 0x7f09034a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    .line 1978
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1980
    const v5, 0x7f09058b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleContainer:Landroid/widget/RelativeLayout;

    .line 1984
    const v5, 0x7f0900b8

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mBottomMediaControllContainer:Landroid/widget/LinearLayout;

    .line 1985
    const v5, 0x7f0904af

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarPortaitControllerContainer:Landroid/widget/RelativeLayout;

    .line 1987
    const v5, 0x7f09059b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    .line 1989
    const v5, 0x7f09007b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1999
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initListTip()V

    .line 2001
    iget v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    if-nez v5, :cond_1

    .line 2009
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v2

    .line 2010
    .local v2, "realScreenHeight":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v3

    .line 2011
    .local v3, "realScreenWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    .line 2012
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    .line 2014
    .end local v2    # "realScreenHeight":I
    .end local v3    # "realScreenWidth":I
    :cond_1
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v5, :cond_2

    .line 2015
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestLandscape()V

    .line 2016
    const v5, 0x7f09011d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2017
    const v5, 0x7f090230

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2018
    const v5, 0x7f090377

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenuLand:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2021
    const v5, 0x7f09007b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0802d1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2022
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 2025
    :cond_2
    const v5, 0x7f090601

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    .line 2026
    const v5, 0x7f090549

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceCover:Landroid/view/View;

    .line 2027
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceParentSize()V

    .line 2031
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2032
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2034
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2036
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initErrorDialog()V

    .line 2039
    return-void
.end method

.method private isMcPhCourse()Z
    .locals 1

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrientationLandScape()Z
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrientationPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1344
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private justExitPge()V
    .locals 2

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->unRegisterReceivers()V

    .line 1238
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->finish()V

    .line 1239
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->overridePendingTransition(II)V

    .line 1240
    return-void
.end method

.method private layoutViewInFl(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1511
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1512
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1513
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1514
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1515
    return-void
.end method

.method private onShowVideoChannel(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f010027

    const v2, 0x7f010024

    .line 2140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 2141
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 2142
    .local v1, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 2144
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .line 2146
    const-string v2, "channel_data"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2147
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2148
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->refreshUI(Landroid/os/Bundle;)V

    .line 2149
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 2155
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 2156
    return-void

    .line 2151
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2152
    const v2, 0x7f090480

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 2153
    sget-object v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 1214
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->reportWatchExit()V

    .line 1215
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetMediaPlayerStatus()V

    .line 1216
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$d;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$d;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1218
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->justExitPge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :goto_0
    return-void

    .line 1219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private postAndBack()V
    .locals 4

    .prologue
    .line 715
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1023

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 716
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    .line 717
    return-void
.end method

.method private releaseSurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1260
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1263
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 1270
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1271
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1272
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1274
    :cond_1
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private reportChannelListViewAmplitude()V
    .locals 2

    .prologue
    .line 568
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Channel List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private reportWatchExit()V
    .locals 3

    .prologue
    .line 1225
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNotLesson()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1226
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1227
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1228
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1232
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private requestChannel()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoChannel()V

    .line 321
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reqeustVideoFavData()V

    .line 322
    return-void
.end method

.method private requestChannelWhileGainNetworkConnection()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestChannel()V

    .line 313
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2, v2, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 314
    return-void

    :cond_0
    move v1, v2

    .line 313
    goto :goto_0
.end method

.method private requestLandscape()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1455
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1457
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 1459
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setRequestedOrientation(I)V

    .line 1461
    const/4 v0, -0x1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 1462
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceLayout(II)V

    .line 1464
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1465
    return-void
.end method

.method private requestParentLayout(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1470
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1471
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1473
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1475
    return-void
.end method

.method private requestPortrait()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1440
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->f(Landroid/app/Activity;)V

    .line 1442
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 1444
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setRequestedOrientation(I)V

    .line 1446
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 1447
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceLayout(II)V

    .line 1449
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1450
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showController()V

    .line 1451
    return-void
.end method

.method private requestSurfaceLayout(II)V
    .locals 8
    .param p1, "parentW"    # I
    .param p2, "parentH"    # I

    .prologue
    .line 1478
    move v1, p1

    .line 1479
    .local v1, "containerW":I
    move v0, p2

    .line 1484
    .local v0, "containerH":I
    iget v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoHeight:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 1485
    .local v3, "realRatio":F
    const v2, 0x3fe38e39

    .line 1486
    .local v2, "parentRatio":F
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1487
    div-int v6, p1, p2

    int-to-float v2, v6

    .line 1489
    :cond_0
    cmpl-float v6, v3, v2

    if-ltz v6, :cond_2

    .line 1491
    move v5, v1

    .line 1492
    .local v5, "videoW":I
    int-to-float v6, v5

    div-float/2addr v6, v3

    float-to-int v4, v6

    .line 1503
    .local v4, "videoH":I
    :goto_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 1505
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-direct {p0, v6, v5, v4}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->layoutViewInFl(Landroid/view/View;II)V

    .line 1506
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceCover:Landroid/view/View;

    invoke-direct {p0, v6, v5, v4}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->layoutViewInFl(Landroid/view/View;II)V

    .line 1508
    :cond_1
    return-void

    .line 1495
    .end local v4    # "videoH":I
    .end local v5    # "videoW":I
    :cond_2
    iget v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoWidth:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoHeight:I

    if-eqz v6, :cond_3

    .line 1496
    move v4, v0

    .line 1497
    .restart local v4    # "videoH":I
    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .restart local v5    # "videoW":I
    goto :goto_0

    .line 1499
    .end local v4    # "videoH":I
    .end local v5    # "videoW":I
    :cond_3
    move v4, v0

    .line 1500
    .restart local v4    # "videoH":I
    int-to-float v6, v4

    const v7, 0x3fe38e39

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .restart local v5    # "videoW":I
    goto :goto_0
.end method

.method private requestSurfaceParentSize()V
    .locals 2

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1787
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    .line 1788
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    int-to-float v0, v0

    const v1, 0x3fe38e39

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    .line 1791
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1792
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private resumeUpdateProgress()V
    .locals 1

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resumeUpdateProgress()V

    .line 1368
    :cond_0
    return-void
.end method

.method private setElements(Ljava/lang/String;II)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "level"    # I

    .prologue
    .line 3085
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 3086
    iput p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIndex:I

    .line 3087
    iput p3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLevel:I

    .line 3088
    return-void
.end method

.method private setHasClickedListTip()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2054
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    if-nez v0, :cond_0

    .line 2055
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    .line 2056
    const-string v0, "VIDEO_LIST_TIPS_CLICK_FLAG"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 2057
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 2059
    :cond_0
    return-void
.end method

.method private setProgress(II)V
    .locals 6
    .param p1, "curPos"    # I
    .param p2, "duration"    # I

    .prologue
    const v3, 0x36ee80

    .line 948
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    if-nez v2, :cond_1

    .line 952
    if-ge p1, v3, :cond_1

    if-ge p2, v3, :cond_1

    .line 954
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 955
    if-lez p2, :cond_0

    .line 956
    const-wide/16 v2, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v2, v4

    int-to-long v4, p2

    div-long v0, v2, v4

    .line 957
    .local v0, "pos":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 958
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 962
    .end local v0    # "pos":J
    :cond_0
    if-gtz p2, :cond_2

    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    .line 963
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTv:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTvLand:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    :cond_1
    return-void

    .line 962
    :cond_2
    int-to-long v2, p2

    goto :goto_0
.end method

.method private showChildrenUnlock(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v0, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1341
    :cond_0
    return-void

    .line 1339
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showController()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1352
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1353
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1355
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1361
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->resumeUpdateProgress()V

    .line 1362
    return-void

    .line 1357
    :cond_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1358
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1359
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    goto :goto_0
.end method

.method private showErrorDialog()V
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2114
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2115
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initErrorDialog()V

    .line 2116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2118
    :cond_1
    return-void
.end method

.method private showLandScapeController(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1322
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1323
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 1325
    return-void

    :cond_0
    move v0, v2

    .line 1322
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1323
    goto :goto_1
.end method

.method private showListTip()V
    .locals 2

    .prologue
    .line 2065
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    .line 2066
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2071
    :goto_0
    return-void

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPauseDialog()V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V

    .line 1192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .line 1193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->setCallBack(Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;)V

    .line 1194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 1199
    :cond_0
    return-void
.end method

.method private showPortraitController(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1316
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideOrShowMediaControllerPortait(Z)V

    .line 1317
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 1319
    return-void

    .line 1317
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 3
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 695
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    if-eqz v2, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;

    move-result-object v0

    .line 697
    .local v0, "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    const-string v1, ""

    .line 698
    .local v1, "subLessonId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v2

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    .line 701
    :cond_0
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    invoke-virtual {v0, v2, v1}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setGuavatar(Lcom/jiliguala/niuwa/logic/network/json/Guavatar;Ljava/lang/String;)V

    .line 702
    new-instance v2, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setDismissListener(Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog$DismissListener;)V

    .line 708
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->show(Landroid/support/v4/app/ag;)V

    .line 712
    .end local v0    # "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    .end local v1    # "subLessonId":Ljava/lang/String;
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->postAndBack()V

    goto :goto_0
.end method

.method private showStatusBar(Z)V
    .locals 2
    .param p1, "showStatusBar"    # Z

    .prologue
    const/16 v1, 0x400

    .line 1289
    if-eqz p1, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1294
    :goto_0
    return-void

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private showVideoChannel()V
    .locals 6

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPratise()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1756
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v0

    .line 1757
    .local v0, "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/b;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1762
    .end local v0    # "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/b;
    :cond_0
    :goto_0
    return-void

    .line 1760
    .restart local v0    # "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/b;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/16 v2, 0x8

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private toggleChildrenLock()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1297
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    .line 1298
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1300
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1301
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1302
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1312
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 1297
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1300
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1301
    goto :goto_2

    :cond_4
    move v2, v3

    .line 1302
    goto :goto_3

    .line 1303
    :cond_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v4, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1307
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1308
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1309
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 1310
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareChildrenLockerFadeOut()V

    goto :goto_4
.end method

.method private unRegisterReceivers()V
    .locals 0

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->unregisterWatchers()V

    .line 1245
    return-void
.end method

.method private updateMoreToolsIcons()V
    .locals 10

    .prologue
    const v9, 0x7f080117

    const v8, 0x7f080204

    const v7, 0x7f0801b7

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 839
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v1, :cond_1

    .line 840
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 841
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 842
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 844
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 845
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 846
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->e()Z

    move-result v0

    .line 850
    .local v0, "isVideoTimeLimitOn":Z
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->g()I

    move-result v1

    int-to-long v2, v1

    .line 851
    .local v2, "timeLimited":J
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    if-eqz v1, :cond_3

    .line 852
    if-eqz v0, :cond_2

    .line 856
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 857
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 858
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 860
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 861
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftText:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 864
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 867
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 868
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 870
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 871
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftTextLand:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 874
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    :goto_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    const v4, 0x7f080118

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 880
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 881
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 884
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 885
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 888
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 891
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 892
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 898
    :cond_3
    if-eqz v0, :cond_4

    .line 902
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 903
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 904
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 906
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 907
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 908
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 911
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 912
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 914
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 915
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 916
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 925
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 926
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 927
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 929
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 930
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 931
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 933
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private updatePlayButton(Z)V
    .locals 2
    .param p1, "isPaused"    # Z

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v0, 0x7f080120

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v0, 0x7f080121

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1007
    :cond_1
    return-void

    .line 1002
    :cond_2
    const v0, 0x7f08011e

    goto :goto_0

    .line 1005
    :cond_3
    const v0, 0x7f08011f

    goto :goto_1
.end method

.method private updateViewViaOrientation()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1525
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1528
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1530
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideOrShowMediaControllerPortait(Z)V

    .line 1531
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1538
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 1550
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 1551
    return-void

    .line 1539
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1544
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideOrShowMediaControllerPortait(Z)V

    .line 1545
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1546
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 3005
    return-void
.end method

.method public changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 2
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "expand"    # Z
    .param p6, "singleRes"    # Z

    .prologue
    .line 2184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 2185
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 2186
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 2187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 2188
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2189
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0, p2, p4, p5, p6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 2193
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2194
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2196
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeVisibilityViaRid()V

    .line 2197
    return-void
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 2965
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    .line 2966
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->createPresenter()Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .locals 1

    .prologue
    .line 1624
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;-><init>()V

    return-object v0
.end method

.method public dismissLoadingView()V
    .locals 1

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 3145
    :cond_0
    return-void
.end method

.method public doShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;
    .param p3, "art"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 818
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 819
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    :cond_0
    const/4 v5, 0x2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 821
    const-string v1, "watch"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 824
    :cond_1
    return-void
.end method

.method public getContext()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 3225
    return-object p0
.end method

.method public getCourseIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2451
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 2452
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLstSearchResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchFirstPos()I
    .locals 1

    .prologue
    .line 3097
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchFirstPos:I

    return v0
.end method

.method public getSearchKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getThisFragmentManager()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getUi()Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/video/presenter/VideoView;
    .locals 0

    .prologue
    .line 1629
    return-object p0
.end method

.method public gotoChannelSelect()V
    .locals 4

    .prologue
    .line 2122
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2123
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 2129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2130
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2131
    const-string v2, "channel"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v2, "title"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    const-string v2, "index"

    iget v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2134
    const-string v2, "LEVEL"

    iget v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLevel:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2136
    :cond_1
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onShowVideoChannel(Landroid/os/Bundle;)V

    .line 2137
    return-void

    .line 2125
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2126
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 974
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideController()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideAllSecondaryFragment(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Z
    .locals 11
    .param p1, "videoChannelListFragment"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    const v10, 0x7f010020

    const v9, 0x7f01001f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3037
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isHidden()Z

    move-result v8

    if-nez v8, :cond_2

    .line 3039
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 3040
    .local v0, "cfm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->f()I

    move-result v1

    .line 3042
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 3043
    invoke-virtual {v0, v5}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v2

    .line 3044
    .local v2, "childEntry":Landroid/support/v4/app/ag$a;
    if-eqz v2, :cond_0

    .line 3045
    invoke-interface {v2}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    .line 3046
    .local v4, "childName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 3047
    .local v3, "childFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3042
    .end local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "childName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3050
    .restart local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .restart local v4    # "childName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v8

    .line 3051
    invoke-virtual {v8, v9, v10, v9, v10}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v8

    .line 3053
    invoke-virtual {v8, v3}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v8

    .line 3054
    invoke-virtual {v8}, Landroid/support/v4/app/an;->i()I

    .line 3055
    const/4 v8, 0x0

    invoke-direct {p0, v8, v7, v6}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setElements(Ljava/lang/String;II)V

    .line 3060
    .end local v0    # "cfm":Landroid/support/v4/app/ag;
    .end local v1    # "childCount":I
    .end local v2    # "childEntry":Landroid/support/v4/app/ag$a;
    .end local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "childName":Ljava/lang/String;
    .end local v5    # "index":I
    :goto_1
    return v6

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method public hideChannelFragment(Landroid/support/v4/app/ag;)Z
    .locals 7
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    const v6, 0x7f010027

    const v5, 0x7f010024

    const/4 v3, 0x0

    .line 3064
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 3065
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v1

    .line 3066
    .local v1, "entry":Landroid/support/v4/app/ag$a;
    if-eqz v1, :cond_0

    .line 3068
    invoke-interface {v1}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 3069
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    if-eqz v4, :cond_0

    .line 3070
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3080
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return v3

    .line 3074
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v4

    .line 3075
    invoke-virtual {v4, v2}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/an;->i()I

    .line 3076
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setElements(Ljava/lang/String;II)V

    .line 3077
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public hideLoadingProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1407
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendEmptyMessage(I)Z

    .line 1413
    :cond_1
    return-void
.end method

.method public hideOrShowMediaControllerPortait(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3230
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarPortaitControllerContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3231
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarPortaitControllerContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3233
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mBottomMediaControllContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 3234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mBottomMediaControllContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3236
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 3231
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3234
    goto :goto_1
.end method

.method public isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 3013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3014
    .local v0, "time":J
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->lastClickTime:J

    sub-long v2, v0, v4

    .line 3015
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 3016
    const/4 v4, 0x1

    .line 3019
    :goto_0
    return v4

    .line 3018
    :cond_0
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->lastClickTime:J

    .line 3019
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isFromPratise()Z
    .locals 1

    .prologue
    .line 2446
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    return v0
.end method

.method protected isInPlaybackState()Z
    .locals 1

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isInPlaybackState()Z

    move-result v0

    .line 1419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotLesson()Z
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHasModel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotModelLesson()Z
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHasModel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenLandScape()Z
    .locals 1

    .prologue
    .line 3101
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    return v0
.end method

.method public isVideoChannelListFragmentShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2159
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    if-nez v1, :cond_1

    .line 2162
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2202
    packed-switch p1, :pswitch_data_0

    .line 2243
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2246
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2247
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2249
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeVisibilityViaRid()V

    .line 2250
    :cond_2
    return-void

    .line 2204
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 2205
    if-eqz p3, :cond_2

    .line 2208
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchKeyword:Ljava/lang/String;

    .line 2209
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchFirstPos:I

    .line 2210
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    .line 2212
    const-string v1, "KEY_SEARCH_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2213
    .local v0, "_id":Ljava/lang/String;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 2214
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2215
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 2219
    :cond_3
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed(Z)V

    goto :goto_0

    .line 2220
    .end local v0    # "_id":Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_0

    .line 2221
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2222
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setLastPaused(Z)V

    .line 2224
    :cond_5
    if-eqz p3, :cond_2

    .line 2227
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchKeyword:Ljava/lang/String;

    .line 2228
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchFirstPos:I

    .line 2229
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2202
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method

.method public onAlreadySwitchToFirst()V
    .locals 1

    .prologue
    .line 2179
    const-string v0, "\u5df2\u5230\u7b2c\u4e00\u4e2a\u89c6\u9891"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2180
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x1

    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 591
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 593
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 594
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 595
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 596
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 597
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 602
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const v1, 0x7f080112

    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    .line 2711
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1138
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 1139
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1141
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideAllSecondaryFragment(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1142
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onExit()V

    .line 1153
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 1148
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1150
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onBackPressed(Z)V
    .locals 3
    .param p1, "backToMain"    # Z

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1158
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 1159
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1161
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 3270
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayResume()V

    .line 3271
    return-void
.end method

.method public onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "expand"    # Z
    .param p6, "singleRes"    # Z

    .prologue
    .line 2167
    invoke-virtual/range {p0 .. p6}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 2168
    return-void
.end method

.method public onChildGained()V
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2590
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2592
    :cond_0
    return-void
.end method

.method public onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    .prologue
    .line 3026
    if-eqz p1, :cond_0

    .line 3027
    iget-object v0, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnId:Ljava/lang/String;

    iget v1, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->clickIndex:I

    iget v2, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnLevel:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setElements(Ljava/lang/String;II)V

    .line 3030
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3031
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z

    .line 3034
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 401
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showMoreToolsDlg()V

    goto :goto_0

    .line 407
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-static {v7}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v4

    .line 408
    .local v4, "timeCtlFragment":Lcom/jiliguala/niuwa/common/a/k;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v6

    .line 409
    .local v6, "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/b;
    if-nez v4, :cond_2

    .line 410
    const-string v7, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    invoke-static {v7, v12}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v5

    .line 411
    .local v5, "videoCurTimeRecord":I
    int-to-long v8, v5

    invoke-static {v8, v9}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->secToMin(J)I

    move-result v5

    .line 412
    sget-object v7, Lcom/jiliguala/niuwa/logic/r/b;->b:[I

    .line 413
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/r/b;->g()I

    move-result v8

    .line 412
    invoke-static {v7, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    .line 414
    .local v3, "selection":I
    if-gez v3, :cond_1

    .line 420
    const/4 v3, 0x1

    .line 422
    :cond_1
    new-instance v7, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    const v8, 0x7f0f026e

    .line 423
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 422
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    const v8, 0x7f0f026d

    new-array v9, v11, [Ljava/lang/Object;

    .line 424
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    sget-object v8, Lcom/jiliguala/niuwa/logic/r/b;->a:[Ljava/lang/String;

    .line 425
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/util/List;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    const/16 v8, 0x11

    .line 426
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    .line 427
    invoke-virtual {v7, v11}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    .line 428
    invoke-virtual {v7, v3}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/m;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->c(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    .line 430
    invoke-virtual {v7, v11}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    .line 431
    .local v0, "config":Lcom/jiliguala/niuwa/common/a/k$b;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;Lcom/jiliguala/niuwa/common/a/k$b;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v4

    .line 433
    .end local v0    # "config":Lcom/jiliguala/niuwa/common/a/k$b;
    .end local v3    # "selection":I
    .end local v5    # "videoCurTimeRecord":I
    :cond_2
    new-instance v7, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;

    invoke-direct {v7, p0, v6}, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Lcom/jiliguala/niuwa/logic/r/b;)V

    invoke-virtual {v4, v7}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k$a;)V

    .line 460
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/jiliguala/niuwa/common/a/k;->b(Landroid/support/v4/app/ag;)V

    .line 461
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    .line 462
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 467
    .end local v4    # "timeCtlFragment":Lcom/jiliguala/niuwa/common/a/k;
    .end local v6    # "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/b;
    :sswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 468
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doShareThisVideo()V

    .line 470
    :cond_3
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    .line 471
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 476
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 477
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V

    .line 479
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    goto/16 :goto_0

    .line 483
    :sswitch_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeScreenOrientation()V

    goto/16 :goto_0

    .line 487
    :sswitch_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 488
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext()V

    .line 490
    :cond_5
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v7, :cond_0

    .line 491
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    goto/16 :goto_0

    .line 496
    :sswitch_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 500
    :sswitch_7
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playPrev()V

    goto/16 :goto_0

    .line 506
    :sswitch_8
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->clickFavThisVideo()V

    goto/16 :goto_0

    .line 512
    :sswitch_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->changeLoopStrategy()V

    goto/16 :goto_0

    .line 518
    :sswitch_a
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v7

    const-string v8, "Watch Child Lock"

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 519
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 520
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "Type"

    const-string v8, "Video"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Lock"

    invoke-static {v7, v8, v2}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 523
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->toggleChildrenLock()V

    .line 524
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    .line 525
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 530
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_b
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setHasClickedListTip()V

    .line 531
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->reportChannelListViewAmplitude()V

    .line 533
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelect()V

    goto/16 :goto_0

    .line 537
    :sswitch_c
    sput-boolean v12, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 538
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 539
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 541
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 544
    :sswitch_d
    sput-boolean v11, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 545
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 546
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 549
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 558
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_e
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 559
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 560
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onClickMirrorRenderBtn()V

    goto/16 :goto_0

    .line 398
    :sswitch_data_0
    .sparse-switch
        0x7f09007a -> :sswitch_6
        0x7f09007b -> :sswitch_6
        0x7f0900ca -> :sswitch_5
        0x7f0900cb -> :sswitch_5
        0x7f0900cc -> :sswitch_7
        0x7f0900cd -> :sswitch_7
        0x7f0900ce -> :sswitch_3
        0x7f0900cf -> :sswitch_3
        0x7f0900fa -> :sswitch_c
        0x7f09012e -> :sswitch_a
        0x7f09012f -> :sswitch_a
        0x7f090156 -> :sswitch_d
        0x7f0901fa -> :sswitch_8
        0x7f0901fb -> :sswitch_8
        0x7f09022f -> :sswitch_4
        0x7f090230 -> :sswitch_4
        0x7f090301 -> :sswitch_9
        0x7f090302 -> :sswitch_9
        0x7f090349 -> :sswitch_e
        0x7f09034a -> :sswitch_e
        0x7f090364 -> :sswitch_0
        0x7f090377 -> :sswitch_0
        0x7f090383 -> :sswitch_b
        0x7f090384 -> :sswitch_b
        0x7f0904d9 -> :sswitch_2
        0x7f0904e3 -> :sswitch_2
        0x7f0905f9 -> :sswitch_1
        0x7f0905fa -> :sswitch_1
        0x7f0905fb -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickFavThisVideo()V
    .locals 2

    .prologue
    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    .line 622
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->doLoveScaleAnimation(Landroid/view/View;)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->doLoveScaleAnimation(Landroid/view/View;)V

    .line 630
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Fav Video"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 631
    const-string v0, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public onClickUnFavThisVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f080125

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    .line 637
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->confirmUnFavThisVideo(Ljava/lang/String;)V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    :cond_1
    const-string v0, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1520
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1521
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 1522
    return-void
.end method

.method public onConnectionLost()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 392
    const v0, 0x7f0f0144

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 393
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1634
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1638
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/r/b;->b()V

    .line 1642
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 1644
    new-instance v5, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    .line 1645
    new-instance v5, Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$a;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    .line 1646
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 1648
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initDialogs()V

    .line 1650
    const-string v5, "0"

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1651
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->addEventObserver()V

    .line 1653
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->registerWatchers()V

    .line 1655
    if-eqz p1, :cond_0

    .line 1656
    const-string v5, "KEY_LAND_WIDTH"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    .line 1657
    const-string v5, "KEY_LAND_HEIGHT"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    .line 1660
    const-string v5, "KEY_PORT_WIDTH"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    .line 1661
    const-string v5, "KEY_PORT_HEIGHT"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    .line 1664
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1667
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepareMediaPlayer()V

    .line 1669
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1670
    .local v3, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1671
    .local v2, "extra":Z
    if-eqz v3, :cond_3

    .line 1672
    const-string v5, "from_practise"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    .line 1673
    const-string v5, "has_model"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHasModel:Z

    .line 1674
    const-string v5, "IS_WATCH"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsWatch:Z

    .line 1675
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-boolean v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsWatch:Z

    invoke-virtual {v5, v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setIsWatch(Z)V

    .line 1676
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    .line 1678
    const-string v5, "rid"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 1679
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "PARAM_COURSE_TICKET"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 1680
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "mc_pc_sub_task_ticket"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 1682
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v5, :cond_1

    .line 1683
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 1686
    :cond_1
    const-string v5, "channel"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1687
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1689
    const-string v5, "26"

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1691
    :cond_2
    const-string v5, "extra"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1692
    const-string v5, "channel_nm"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 1693
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "The Kiboomers"

    :goto_1
    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 1699
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v5

    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/r/b;->b(Z)V

    .line 1709
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNotLesson()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1710
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1711
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1712
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "ID"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Watch View"

    invoke-virtual {v5, v6, v4}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1719
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initUI()V

    .line 1720
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeVisibilityViaRid()V

    .line 1722
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    .line 1723
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/g/e;->h()Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "chnId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1725
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1726
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/g/e;->i()Ljava/lang/String;

    move-result-object v1

    .line 1727
    .local v1, "chnName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1728
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 1733
    .end local v0    # "chnId":Ljava/lang/String;
    .end local v1    # "chnName":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isMcPhCourse()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setMcPhCourse(Z)V

    .line 1736
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayRecord()V

    .line 1740
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    new-instance v6, Lcom/jiliguala/niuwa/module/video/VideoActivity$24;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$24;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    const-wide/16 v8, 0x320

    invoke-virtual {v5, v6, v8, v9}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1748
    return-void

    :cond_7
    move v5, v6

    .line 1676
    goto/16 :goto_0

    .line 1693
    :cond_8
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 1715
    :cond_9
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Watch View"

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1068
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onDestroy()V

    .line 1071
    :cond_0
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 1072
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 1073
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->releaseSurface()V

    .line 1074
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v0, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;->a(Lcom/jiliguala/niuwa/module/video/VideoActivity$c;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1082
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    .line 1084
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    .line 1085
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1086
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1088
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_5

    .line 1089
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 1091
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_6

    .line 1092
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1093
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a(Lcom/jiliguala/niuwa/module/video/VideoActivity$b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1094
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    .line 1096
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->stop()V

    .line 1097
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 1169
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_0

    .line 1170
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    if-nez v0, :cond_2

    .line 1171
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNotModelLesson()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1172
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPauseDialog()V

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    goto :goto_0

    .line 1177
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_3

    .line 1178
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeScreenOrientation()V

    goto :goto_0

    .line 1180
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    goto :goto_0
.end method

.method public onExitClick()V
    .locals 0

    .prologue
    .line 3257
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    .line 3258
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 2721
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 2722
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2723
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2724
    packed-switch p1, :pswitch_data_0

    .line 2735
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2726
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    move v0, v1

    .line 2728
    goto :goto_0

    .line 2730
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    move v0, v1

    .line 2732
    goto :goto_0

    .line 2724
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 2578
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2579
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2580
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2585
    :cond_0
    :goto_0
    return-void

    .line 2583
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showAddBabyPage()V

    goto :goto_0
.end method

.method public onNetworkUnavailable()V
    .locals 1

    .prologue
    .line 812
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public onNoneWifiConnection()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 384
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    .line 385
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestChannelWhileGainNetworkConnection()V

    .line 386
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 1054
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onPause()V

    .line 1055
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 1058
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_end_time:J

    .line 1061
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_end_time:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_start_time:J

    sub-long v0, v2, v4

    .line 1062
    .local v0, "total":J
    const-string v2, "Watch View"

    const/4 v3, 0x0

    long-to-int v4, v0

    invoke-static {p0, v2, v3, v4}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 1063
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 3252
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V

    .line 3253
    return-void
.end method

.method public onPlayComplete()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 781
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onComplete()V

    .line 782
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 801
    :goto_0
    return v1

    .line 785
    :cond_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v0

    .line 788
    .local v0, "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendMcPcProgress(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;Ljava/lang/String;)V

    :cond_1
    move v1, v2

    .line 791
    goto :goto_0

    .line 797
    .end local v0    # "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHasModel:Z

    if-eqz v1, :cond_3

    .line 798
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->justExitPge()V

    move v1, v2

    .line 799
    goto :goto_0

    .line 801
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPlayError()Z
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onStopTimer()V

    .line 738
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 739
    return-void
.end method

.method public onPlayPauseOnUi()V
    .locals 1

    .prologue
    .line 664
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$19;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$19;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public onPlayPrepared(J)V
    .locals 4
    .param p1, "duration"    # J

    .prologue
    const/4 v3, 0x1

    .line 744
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideLoadingProgress()V

    .line 745
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 746
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 747
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    if-eqz v2, :cond_1

    .line 748
    const-string v2, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 749
    .local v1, "enabled":Z
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    if-nez v2, :cond_1

    .line 752
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 760
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 761
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 765
    .end local v1    # "enabled":Z
    :cond_1
    return-void

    .line 755
    .restart local v1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPlayResume()V
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 650
    return-void
.end method

.method public onPlayResumeOnUi()V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$12;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$12;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method public onPrepareAdjustVideoSize(II)V
    .locals 2
    .param p1, "videoW"    # I
    .param p2, "videoH"    # I

    .prologue
    const/4 v1, 0x1

    .line 2366
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_1

    .line 2368
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 2372
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->resumeUpdateProgress()V

    .line 2373
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 2376
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoWidth:I

    .line 2377
    iput p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoHeight:I

    .line 2379
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_2

    .line 2380
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2381
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 2382
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 2384
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 2385
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceLayout(II)V

    .line 2395
    :cond_2
    :goto_0
    return-void

    .line 2386
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2387
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 2388
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 2389
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2391
    const/4 v0, -0x1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 2392
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceLayout(II)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 327
    if-nez p3, :cond_0

    .line 340
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    int-to-long v6, p2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 332
    .local v0, "new_pos":J
    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "time":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mInstantSeeking:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 337
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onProgressUpdate(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "dur"    # I

    .prologue
    .line 769
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    if-nez v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 772
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 773
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 774
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 777
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onRenderPlayConntected()V
    .locals 1

    .prologue
    .line 2495
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2511
    return-void
.end method

.method public onRenderPlayDisConntected()V
    .locals 1

    .prologue
    .line 2514
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2539
    return-void
.end method

.method public onRenderPlaySeek()V
    .locals 0

    .prologue
    .line 2551
    return-void
.end method

.method public onRenderPlayStart()V
    .locals 1

    .prologue
    .line 2480
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$9;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$9;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2492
    return-void
.end method

.method public onRenderPlayStop()V
    .locals 1

    .prologue
    .line 2543
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2544
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V

    .line 2546
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1026
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 1027
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_start_time:J

    .line 1031
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1033
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isScreenLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1039
    :cond_0
    return-void

    .line 1033
    :cond_1
    const-string v0, "\u9891\u9053"

    goto :goto_0

    .line 1034
    :cond_2
    const-string v0, "\u9891\u9053"

    goto :goto_1
.end method

.method public onResumeClick()V
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->dismiss()V

    .line 3265
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayResume()V

    .line 3266
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2083
    const-string v0, "KEY_LAND_WIDTH"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2084
    const-string v0, "KEY_LAND_HEIGHT"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2087
    const-string v0, "KEY_PORT_WIDTH"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2088
    const-string v0, "KEY_PORT_HEIGHT"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2089
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2090
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2092
    :cond_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2093
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3247
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V

    .line 3249
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .prologue
    .line 3241
    return-void
.end method

.method public onSearchAction()V
    .locals 0

    .prologue
    .line 2175
    return-void
.end method

.method public onSendProgressFail()V
    .locals 4

    .prologue
    .line 721
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1025

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 722
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    .line 723
    return-void
.end method

.method public onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 4
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 675
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    .line 692
    return-void
.end method

.method public onShowVideoLimitDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2307
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 2308
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    .line 2310
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2311
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2312
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0139

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2316
    :goto_0
    const/4 v1, 0x0

    .line 2317
    .local v1, "width":I
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2318
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v1, v2, 0xa

    .line 2323
    :cond_1
    :goto_1
    const/4 v0, -0x2

    .line 2324
    .local v0, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 2325
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2326
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2335
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0901b6

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2336
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0900fa

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/VideoActivity$5;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$5;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2345
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2346
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    :cond_2
    :goto_2
    return-void

    .line 2314
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0138

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    .line 2319
    .restart local v1    # "width":I
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2320
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v1, v2, 0xa

    goto :goto_1

    .line 2348
    .restart local v0    # "height":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public onStartTimer()V
    .locals 1

    .prologue
    .line 3170
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_0

    .line 3171
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->start()V

    .line 3175
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 344
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/b;->b()V

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    .line 346
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showController()V

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    return-void
.end method

.method public onStopTimer()V
    .locals 1

    .prologue
    .line 3179
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_0

    .line 3180
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->stop()V

    .line 3184
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mInstantSeeking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    .line 365
    return-void
.end method

.method public onSubCourseReportFailed()V
    .locals 0

    .prologue
    .line 2421
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->cancelSubCourse()V

    .line 2422
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    .line 2423
    return-void
.end method

.method public onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$6;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    .line 2417
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x7

    const v7, 0x7f0600fc

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2874
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090130

    if-ne v3, v4, :cond_6

    .line 2875
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2960
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 2877
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2878
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 2880
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->currentCounter:I

    .line 2881
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 2882
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->currentCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2883
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    const v4, 0x7f0f0254

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2884
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080126

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2886
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2887
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2888
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2891
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_0

    .line 2892
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_2

    .line 2893
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2895
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    if-eqz v2, :cond_0

    .line 2896
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2902
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 2903
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    const v4, 0x7f0f0117

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2904
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2905
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2906
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2907
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2908
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v2, :cond_4

    .line 2909
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_3

    .line 2910
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2912
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    if-eqz v2, :cond_4

    .line 2913
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2916
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareChildrenLockerFadeOut()V

    goto/16 :goto_0

    .line 2920
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 2922
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    const v4, 0x7f0f0117

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2923
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2924
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2925
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2926
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2927
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v2, :cond_0

    .line 2928
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_5

    .line 2929
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2931
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    if-eqz v2, :cond_0

    .line 2932
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2938
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090601

    if-eq v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090048

    if-ne v3, v4, :cond_0

    .line 2939
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    move v1, v2

    .line 2957
    goto/16 :goto_0

    .line 2941
    :pswitch_4
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2942
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    if-eqz v2, :cond_8

    .line 2943
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideController()V

    goto/16 :goto_0

    .line 2945
    :cond_8
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showController()V

    goto/16 :goto_0

    .line 2948
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 2949
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showChildrenUnlock(Z)V

    goto/16 :goto_0

    .line 2951
    :cond_a
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showChildrenUnlock(Z)V

    .line 2952
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareChildrenLockerFadeOut()V

    goto/16 :goto_0

    .line 2875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2939
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onUpdateRenderIcon(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2432
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;ZZ)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2442
    :cond_0
    return-void
.end method

.method public onWifiConnection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 371
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestChannel()V

    .line 372
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    if-nez v0, :cond_0

    .line 374
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 375
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    .line 376
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v5

    :goto_0
    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZZ)V

    .line 378
    :cond_0
    return-void

    :cond_1
    move v4, v2

    .line 376
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1043
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onWindowFocusChanged(Z)V

    .line 1044
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isScreenLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1049
    :cond_0
    return-void
.end method

.method public pausePlayOnChannelShow()V
    .locals 0

    .prologue
    .line 3189
    return-void
.end method

.method public prepareChildrenLockerFadeOut()V
    .locals 4

    .prologue
    const/4 v2, 0x7

    .line 991
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 994
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 997
    :cond_0
    return-void
.end method

.method public prepareForFadeOut()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 982
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 985
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 988
    :cond_0
    return-void
.end method

.method protected registerWatchers()V
    .locals 1

    .prologue
    .line 1765
    new-instance v0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .line 1766
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;)V

    .line 1767
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->c()V

    .line 1769
    new-instance v0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    .line 1770
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;)V

    .line 1771
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->c()V

    .line 1772
    return-void
.end method

.method public reportSubLessonExit()V
    .locals 5

    .prologue
    .line 2991
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-nez v3, :cond_0

    .line 3000
    :goto_0
    return-void

    .line 2992
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2993
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ID"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getResId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2994
    const-string v3, "Position"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    const-string v3, "Type"

    const-string v4, "MC-video"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2996
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/i/b;->d()J

    move-result-wide v0

    .line 2998
    .local v0, "lastRecordSeconds":J
    const-string v3, "Time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Sub Lesson Exit"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 2979
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 2980
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2981
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2983
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2984
    const-string v1, "Step"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    const-string v1, "Time"

    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/i/b;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2988
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public sendExitReport()V
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 2970
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->sendCourseTaskExitReport()V

    .line 2973
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v0, :cond_1

    .line 2974
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->reportSubLessonExit()V

    .line 2976
    :cond_1
    return-void
.end method

.method public setControllerEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1371
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$22;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$22;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1396
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1556
    packed-switch p1, :pswitch_data_0

    .line 1564
    :pswitch_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->setRequestedOrientation(I)V

    .line 1565
    return-void

    .line 1556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public show3GNetStateDialog()V
    .locals 3

    .prologue
    .line 1610
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1611
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 1614
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1615
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1620
    :cond_2
    :goto_0
    return-void

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showAddBabyPage()V
    .locals 3

    .prologue
    .line 614
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 615
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 616
    const v1, 0x7f01001f

    const v2, 0x7f010014

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->overridePendingTransition(II)V

    .line 617
    return-void
.end method

.method public showChannel(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3010
    return-void
.end method

.method public showErrorAlertDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2355
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v1, :cond_1

    .line 2356
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2357
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 2359
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2360
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2362
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public showLoadingProgress()V
    .locals 4

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v1, 0x6

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1403
    :cond_0
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3112
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 3114
    :cond_1
    return-void
.end method

.method public showLoginPage()V
    .locals 2

    .prologue
    .line 608
    const v1, 0x7f0f00cb

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 609
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method public showMoreToolsDlg()V
    .locals 10

    .prologue
    const v7, 0x7f1000b3

    const/16 v5, 0x8

    const/4 v9, 0x1

    const v8, 0x7f0600fc

    const/4 v4, 0x0

    .line 2739
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-nez v3, :cond_0

    .line 2740
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    .line 2742
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2743
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 2745
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2746
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x50

    invoke-virtual {v3, v6}, Landroid/view/Window;->setGravity(I)V

    .line 2747
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2748
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0b019c

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 2750
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v3, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 2751
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2752
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2754
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f090303

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 2755
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 2754
    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2756
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0901f8

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2757
    .local v0, "favContainer":Landroid/view/View;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2758
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0901fb

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    .line 2759
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2760
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2761
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    if-nez v3, :cond_5

    const v3, 0x7f080125

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2762
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f090301

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    .line 2763
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2764
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    if-eqz v3, :cond_6

    const v3, 0x7f080118

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2765
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2766
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f090302

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopTipsTv:Landroid/widget/TextView;

    .line 2767
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopTipsTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2768
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopTipsTv:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    if-eqz v3, :cond_7

    const v3, 0x7f0f01be

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2770
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f09012e

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    .line 2771
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2772
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2773
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f09012f

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenTipsTv:Landroid/widget/TextView;

    .line 2774
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenTipsTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2776
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0904e3

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShareBtn:Landroid/widget/ImageView;

    .line 2777
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShareBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2778
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShareBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2779
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0904d9

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->shareTipsTv:Landroid/widget/TextView;

    .line 2780
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->shareTipsTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2782
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0905f9

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    .line 2783
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2784
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2785
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0905fb

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    .line 2786
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2787
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    const v6, 0x7f0801b7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2788
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2789
    const-string v3, "PREFS_KEY_VIDEO_CTRL_TIME"

    sget-object v6, Lcom/jiliguala/niuwa/logic/r/b;->b:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v3, v6}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v2

    .line 2790
    .local v2, "limit":I
    if-nez v2, :cond_2

    .line 2791
    sget-object v3, Lcom/jiliguala/niuwa/logic/r/b;->b:[I

    aget v2, v3, v9

    .line 2793
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2794
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2795
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0905fa

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    .line 2796
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2799
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f090447

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRemaingTimeLimit:Landroid/widget/TextView;

    .line 2801
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/r/b;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2802
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2803
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRemaingTimeLimit:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5269\u4f59\u65f6\u95f4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/m;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5206\u949f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2808
    :goto_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v5, 0x7f090602

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 2809
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/r/b;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2810
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/r/b;->g()I

    move-result v1

    .line 2811
    .local v1, "lastTimeLimitSet":I
    if-nez v1, :cond_9

    .line 2812
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 2819
    .end local v1    # "lastTimeLimitSet":I
    :goto_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2866
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2870
    :goto_7
    return-void

    .end local v0    # "favContainer":Landroid/view/View;
    .end local v2    # "limit":I
    :cond_3
    move v3, v5

    .line 2755
    goto/16 :goto_0

    .restart local v0    # "favContainer":Landroid/view/View;
    :cond_4
    move v3, v5

    .line 2757
    goto/16 :goto_1

    .line 2761
    :cond_5
    const v3, 0x7f080112

    goto/16 :goto_2

    .line 2764
    :cond_6
    const v3, 0x7f080117

    goto/16 :goto_3

    .line 2768
    :cond_7
    const v3, 0x7f0f003d

    goto/16 :goto_4

    .line 2805
    .restart local v2    # "limit":I
    :cond_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2814
    .restart local v1    # "lastTimeLimitSet":I
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_6

    .line 2817
    .end local v1    # "lastTimeLimitSet":I
    :cond_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_6

    .line 2867
    :catch_0
    move-exception v3

    goto :goto_7
.end method

.method public showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V
    .locals 19
    .param p1, "mCurrentPlayItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .prologue
    .line 3150
    .line 3151
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 3150
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    move-result-object v1

    .line 3152
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    move-object/from16 v18, v0

    .line 3153
    .local v18, "meta":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6211\u548c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    .line 3154
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u770b\u4e86\u300c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\u300d\u77ed\u7247!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3155
    .local v3, "shareTitle":Ljava/lang/String;
    const-string v4, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 3156
    .local v4, "content":Ljava/lang/String;
    const-string v2, "Watch View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setEventName(Ljava/lang/String;)V

    .line 3157
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->img:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "0"

    const/4 v12, 0x0

    const v13, 0x7f08037c

    const v14, 0x7f0f0074

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0f0075

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x3f2147ae    # 0.63f

    invoke-virtual/range {v1 .. v16}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ILjava/lang/String;Ljava/lang/String;F)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    .line 3158
    const-string v2, "watch"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setSource(Ljava/lang/String;)V

    .line 3159
    const v2, 0x7f0801ee

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setTopIconRes(I)V

    .line 3160
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f026a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setShareText(Ljava/lang/String;)V

    .line 3161
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3166
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    .end local v3    # "shareTitle":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v18    # "meta":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;
    :goto_0
    return-void

    .line 3162
    :catch_0
    move-exception v17

    .line 3164
    .local v17, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showRenderChooser()V
    .locals 4

    .prologue
    .line 2459
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->dismiss()V

    .line 2462
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getMirrorRenderInfo()Ljava/util/Map;

    move-result-object v0

    .line 2463
    .local v0, "renders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    new-instance v2, Lcom/jiliguala/niuwa/module/video/VideoActivity$8;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$8;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    .line 2473
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    .line 2474
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->setCanceledOnTouchOutside(Z)V

    .line 2475
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->show()V

    .line 2476
    return-void
.end method

.method public showSingleLoopDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2265
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v0, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2266
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2267
    const v3, 0x7f0b0188

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2269
    const/4 v2, 0x0

    .line 2270
    .local v2, "width":I
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2271
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa

    .line 2276
    :cond_0
    :goto_0
    const/4 v1, -0x2

    .line 2277
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 2278
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2279
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2281
    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2290
    const v3, 0x7f0900fa

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2299
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2303
    :goto_1
    return-void

    .line 2272
    .end local v1    # "height":I
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2273
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    goto :goto_0

    .line 2300
    .restart local v1    # "height":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public showSurfaceCover(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 727
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceCover:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 728
    return-void

    .line 727
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2638
    const-string v0, "[surfaceChanged]"

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2639
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 2641
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2642
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->handleMalFormedVideo()V

    .line 2645
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2605
    const-string v1, "[surfaceCreated]..."

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2606
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 2608
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2609
    :cond_0
    const-string v1, "[set visibility]...surface is inValid."

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2610
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid surface view."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 2612
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2613
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2623
    :cond_1
    :goto_0
    return-void

    .line 2617
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2618
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLoadingProgress()V

    .line 2620
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2621
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setMediaPlayerDisplay(Landroid/view/SurfaceHolder;Z)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2658
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2662
    :goto_0
    const-string v1, "[surfaceDestroyed]"

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2664
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->savePosWhilePause()V

    .line 2666
    :cond_0
    return-void

    .line 2659
    :catch_0
    move-exception v0

    .line 2660
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected unregisterWatchers()V
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->d()V

    .line 1779
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    if-eqz v0, :cond_1

    .line 1780
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->d()V

    .line 1782
    :cond_1
    return-void
.end method

.method public updateArtist(Ljava/lang/String;)V
    .locals 3
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    .line 2705
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2706
    return-void
.end method

.method public updateChannelName(Ljava/lang/String;)V
    .locals 1
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 2670
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$15;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2682
    return-void
.end method

.method public updateFavIcon(Z)V
    .locals 4
    .param p1, "isFav"    # Z

    .prologue
    const v1, 0x7f080125

    const v2, 0x7f080112

    .line 940
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    .line 941
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 942
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 945
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 941
    goto :goto_0

    :cond_2
    move v1, v2

    .line 943
    goto :goto_1
.end method

.method public updateFavImg(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3210
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$18;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3221
    return-void
.end method

.method public updateLoopBtn(Z)V
    .locals 1
    .param p1, "singleLoop"    # Z

    .prologue
    .line 828
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    .line 829
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateMoreToolsIcons()V

    .line 830
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 833
    :cond_0
    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 2696
    const v0, 0x7f09050d

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2697
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v0, :cond_0

    .line 2698
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2699
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2701
    :cond_0
    return-void
.end method

.method public updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ttl"    # Ljava/lang/String;
    .param p2, "art"    # Ljava/lang/String;

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->post(Ljava/lang/Runnable;)Z

    .line 3206
    return-void
.end method

.method public updateVideoChannelData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2686
    .local p1, "videoChannelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelData:Ljava/util/ArrayList;

    .line 2688
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2689
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    if-eqz v1, :cond_0

    .line 2690
    check-cast v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->refreshList(Ljava/util/ArrayList;)V

    .line 2692
    :cond_0
    return-void
.end method
