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
    .line 131
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

    .line 122
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    .line 171
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mInstantSeeking:Z

    .line 201
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_start_time:J

    .line 202
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_end_time:J

    .line 211
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    .line 216
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    .line 221
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeHandler:Landroid/os/Handler;

    .line 237
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    .line 282
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLevel:I

    .line 303
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateMoreToolsIcons()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setHasClickedListTip()V

    return-void
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAirplayStaticBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->resumeUpdateProgress()V

    return-void
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/kyleduo/switchbutton/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->currentCounter:I

    return v0
.end method

.method static synthetic access$3102(Lcom/jiliguala/niuwa/module/video/VideoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->currentCounter:I

    return p1
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->toggleChildrenLock()V

    return-void
.end method

.method static synthetic access$3500(Lcom/jiliguala/niuwa/module/video/VideoActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setProgress(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showErrorDialog()V

    return-void
.end method

.method static synthetic access$3700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showChildrenUnlock(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRemaingTimeLimit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 2506
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    .line 2507
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$11;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/video/VideoActivity$13;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$13;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 2506
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 2526
    return-void
.end method

.method private adjustAspectRatio(II)V
    .locals 16
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 1077
    const/4 v8, 0x0

    .line 1078
    .local v8, "viewWidth":I
    const/4 v7, 0x0

    .line 1079
    .local v7, "viewHeight":I
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p1

    int-to-double v14, v0

    div-double v2, v12, v14

    .line 1082
    .local v2, "aspectRatio":D
    int-to-double v12, v8

    mul-double/2addr v12, v2

    double-to-int v11, v12

    if-le v7, v11, :cond_0

    .line 1084
    move v5, v8

    .line 1085
    .local v5, "newWidth":I
    int-to-double v12, v8

    mul-double/2addr v12, v2

    double-to-int v4, v12

    .line 1091
    .local v4, "newHeight":I
    :goto_0
    sub-int v11, v8, v5

    div-int/lit8 v9, v11, 0x2

    .line 1092
    .local v9, "xoff":I
    sub-int v11, v7, v4

    div-int/lit8 v10, v11, 0x2

    .line 1096
    .local v10, "yoff":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1098
    .local v6, "txform":Landroid/graphics/Matrix;
    int-to-float v11, v5

    int-to-float v12, v8

    div-float/2addr v11, v12

    int-to-float v12, v4

    int-to-float v13, v7

    div-float/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1100
    int-to-float v11, v9

    int-to-float v12, v10

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1102
    return-void

    .line 1088
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "txform":Landroid/graphics/Matrix;
    .end local v9    # "xoff":I
    .end local v10    # "yoff":I
    :cond_0
    int-to-double v12, v7

    div-double/2addr v12, v2

    double-to-int v5, v12

    .line 1089
    .restart local v5    # "newWidth":I
    move v4, v7

    .restart local v4    # "newHeight":I
    goto :goto_0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 2378
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 2379
    return-void
.end method

.method private changeScreenOrientation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1381
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 1389
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1390
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestPortrait()V

    goto :goto_0

    .line 1391
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestLandscape()V

    goto :goto_0
.end method

.method private changeVisibilityViaRid()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2205
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2206
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2208
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2209
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2213
    return-void

    .line 2205
    :cond_1
    const-string v0, "\u9891\u9053"

    goto :goto_0

    .line 2206
    :cond_2
    const-string v0, "\u9891\u9053"

    goto :goto_1

    :cond_3
    move v0, v2

    .line 2208
    goto :goto_2

    :cond_4
    move v0, v3

    .line 2209
    goto :goto_3

    :cond_5
    move v1, v3

    .line 2211
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

    .line 570
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 572
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 573
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 576
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 577
    return-void
.end method

.method private hideController()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1287
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1288
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1289
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1290
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->pauseUpdateProgress()V

    .line 1293
    :cond_0
    return-void
.end method

.method private initDialogs()V
    .locals 2

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/f;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    .line 1527
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 1556
    return-void
.end method

.method private initErrorDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2048
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f1000b4

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    .line 2049
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v3, v4, 0x9

    .line 2050
    .local v3, "width":I
    const/4 v0, -0x2

    .line 2051
    .local v0, "height":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/view/Window;->setLayout(II)V

    .line 2052
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0051

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2053
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2055
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2056
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2057
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    const v5, 0x7f09004c

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2058
    .local v1, "mAlterText":Landroid/widget/TextView;
    const v4, 0x7f0f0267

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2059
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    const v5, 0x7f09004b

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f080191

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2060
    return-void
.end method

.method private initListTip()V
    .locals 2

    .prologue
    .line 1994
    const v0, 0x7f0904f2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    .line 1995
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$24;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$24;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2001
    const-string v0, "VIDEO_LIST_TIPS_CLICK_FLAG"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    .line 2002
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 2003
    return-void
.end method

.method private initTextSwitcher()V
    .locals 4

    .prologue
    .line 1750
    const v2, 0x7f0905f9

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    .line 1751
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 1752
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    new-instance v3, Lcom/jiliguala/niuwa/module/video/VideoActivity$23;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$23;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 1762
    const/high16 v2, 0x10a0000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1763
    .local v0, "in":Landroid/view/animation/Animation;
    const v2, 0x10a0001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1766
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1767
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1769
    return-void
.end method

.method private initUI()V
    .locals 12

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x0

    const v9, 0x7f0600fc

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1772
    const v5, 0x7f0b0196

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setContentView(I)V

    .line 1774
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initTextSwitcher()V

    .line 1776
    const v5, 0x7f090048

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAirplayStaticBg:Landroid/widget/ImageView;

    .line 1777
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAirplayStaticBg:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1781
    const v5, 0x7f09036b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    .line 1782
    const v5, 0x7f09036a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMark:Landroid/widget/ImageView;

    .line 1784
    const v5, 0x7f09036e

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightText:Landroid/widget/TextView;

    .line 1789
    const v5, 0x7f09035f

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    .line 1790
    const v5, 0x7f09035e

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMark:Landroid/widget/ImageView;

    .line 1792
    const v5, 0x7f090362

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    .line 1797
    const v5, 0x7f090365

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    .line 1798
    const v5, 0x7f090364

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMark:Landroid/widget/ImageView;

    .line 1800
    const v5, 0x7f090368

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftText:Landroid/widget/TextView;

    .line 1805
    const v5, 0x7f09036c

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    .line 1806
    const v5, 0x7f09036d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMarkLand:Landroid/widget/ImageView;

    .line 1807
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMarkLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1808
    const v5, 0x7f09036f

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightTextLand:Landroid/widget/TextView;

    .line 1813
    const v5, 0x7f090360

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    .line 1814
    const v5, 0x7f090361

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    .line 1815
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1816
    const v5, 0x7f090363

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    .line 1821
    const v5, 0x7f090366

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    .line 1822
    const v5, 0x7f090367

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMarkLand:Landroid/widget/ImageView;

    .line 1823
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMarkLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1824
    const v5, 0x7f090369

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftTextLand:Landroid/widget/TextView;

    .line 1827
    const v5, 0x7f090477

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRoot:Landroid/view/View;

    .line 1829
    const v5, 0x7f090402

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->progressBar:Landroid/view/View;

    .line 1830
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    const v5, 0x7f090597

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    .line 1833
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1834
    const v5, 0x7f09007a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBackLand:Landroid/view/View;

    .line 1835
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v5, :cond_0

    .line 1836
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBackLand:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageButton;

    const v6, 0x7f0802cc

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1838
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBackLand:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1839
    const v5, 0x7f0905f3

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    .line 1841
    const v5, 0x7f090370

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtnLand:Landroid/widget/ImageView;

    .line 1842
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1843
    const v5, 0x7f090130

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    .line 1844
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1845
    .local v1, "drs":[Landroid/graphics/drawable/Drawable;
    aget-object v0, v1, v8

    .line 1846
    .local v0, "drLeft":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1847
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1848
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1849
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1851
    const v5, 0x7f09035d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtn:Landroid/widget/ImageView;

    .line 1853
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->moreToolsBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1855
    const v5, 0x7f0905f4

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    .line 1864
    const v5, 0x7f09037c

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenu:Landroid/view/View;

    .line 1865
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenu:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1869
    const v5, 0x7f09037d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenuLand:Landroid/view/View;

    .line 1870
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenuLand:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1874
    const v5, 0x7f090189

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    .line 1875
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1876
    const v5, 0x7f0905ac

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTv:Landroid/widget/TextView;

    .line 1877
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTv:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    const v5, 0x7f09018a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    .line 1879
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1880
    const v5, 0x7f0905ad

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTvLand:Landroid/widget/TextView;

    .line 1881
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTvLand:Landroid/widget/TextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1883
    const v5, 0x7f09011c

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    .line 1884
    const v5, 0x7f09011d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    .line 1885
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1886
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1888
    const v5, 0x7f0901fa

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    .line 1890
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1895
    const v5, 0x7f0900ce

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    .line 1896
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1898
    const v5, 0x7f0900ca

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    .line 1899
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1901
    const v5, 0x7f0900cc

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    .line 1902
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1904
    const v5, 0x7f090167

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1905
    .local v4, "seekBarContainer":Landroid/view/View;
    const v5, 0x7f090323

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 1906
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1907
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1908
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1909
    const v5, 0x7f090230

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1912
    const v5, 0x7f0900cf

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    .line 1913
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    const v5, 0x7f0900cb

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    .line 1915
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayNextBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1916
    const v5, 0x7f0900cd

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    .line 1917
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayPreBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1918
    const v5, 0x7f090322

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    .line 1919
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1920
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1921
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    const v6, 0x7f090324

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    .line 1922
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1923
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v5, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1924
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1925
    const v5, 0x7f090231

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1927
    const v5, 0x7f090342

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    .line 1928
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1929
    const v5, 0x7f090343

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    .line 1930
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1932
    const v5, 0x7f090581

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleContainer:Landroid/widget/RelativeLayout;

    .line 1936
    const v5, 0x7f0900b8

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mBottomMediaControllContainer:Landroid/widget/LinearLayout;

    .line 1937
    const v5, 0x7f0904a5

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarPortaitControllerContainer:Landroid/widget/RelativeLayout;

    .line 1939
    const v5, 0x7f090591

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    .line 1941
    const v5, 0x7f09007b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1951
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initListTip()V

    .line 1953
    iget v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    if-nez v5, :cond_1

    .line 1961
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v2

    .line 1962
    .local v2, "realScreenHeight":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v3

    .line 1963
    .local v3, "realScreenWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    .line 1964
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    .line 1966
    .end local v2    # "realScreenHeight":I
    .end local v3    # "realScreenWidth":I
    :cond_1
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v5, :cond_2

    .line 1967
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestLandscape()V

    .line 1968
    const v5, 0x7f09011d

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1969
    const v5, 0x7f090231

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1970
    const v5, 0x7f090370

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1972
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMenuLand:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1973
    const v5, 0x7f09007b

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0802c7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1974
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 1977
    :cond_2
    const v5, 0x7f0905f7

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    .line 1978
    const v5, 0x7f09053f

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceCover:Landroid/view/View;

    .line 1979
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceParentSize()V

    .line 1983
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1984
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1986
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1988
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initErrorDialog()V

    .line 1991
    return-void
.end method

.method private isMcPhCourse()Z
    .locals 1

    .prologue
    .line 1703
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
    .line 1306
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

    .line 1302
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
    .line 1193
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->unRegisterReceivers()V

    .line 1196
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->finish()V

    .line 1197
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->overridePendingTransition(II)V

    .line 1198
    return-void
.end method

.method private layoutViewInFl(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1469
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1470
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1471
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1472
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    return-void
.end method

.method private onShowVideoChannel(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f010025

    const v2, 0x7f010022

    .line 2092
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 2093
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 2094
    .local v1, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 2096
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .line 2098
    const-string v2, "channel_data"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2099
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->refreshUI(Landroid/os/Bundle;)V

    .line 2101
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 2107
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 2108
    return-void

    .line 2103
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2104
    const v2, 0x7f090477

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 2105
    sget-object v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 1183
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetMediaPlayerStatus()V

    .line 1184
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$d;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$d;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1186
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->justExitPge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseSurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1218
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1221
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :goto_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1229
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1230
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1232
    :cond_1
    return-void

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private reportChannelListViewAmplitude()V
    .locals 2

    .prologue
    .line 566
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Channel List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method private requestChannel()V
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoChannel()V

    .line 319
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reqeustVideoFavData()V

    .line 320
    return-void
.end method

.method private requestChannelWhileGainNetworkConnection()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestChannel()V

    .line 311
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

    .line 312
    return-void

    :cond_0
    move v1, v2

    .line 311
    goto :goto_0
.end method

.method private requestLandscape()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1413
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1415
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 1417
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setRequestedOrientation(I)V

    .line 1419
    const/4 v0, -0x1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 1420
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceLayout(II)V

    .line 1422
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1423
    return-void
.end method

.method private requestParentLayout(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1428
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1429
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1431
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1432
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1433
    return-void
.end method

.method private requestPortrait()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1398
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->f(Landroid/app/Activity;)V

    .line 1400
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 1402
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setRequestedOrientation(I)V

    .line 1404
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 1405
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceLayout(II)V

    .line 1407
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1408
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showController()V

    .line 1409
    return-void
.end method

.method private requestSurfaceLayout(II)V
    .locals 8
    .param p1, "parentW"    # I
    .param p2, "parentH"    # I

    .prologue
    .line 1436
    move v1, p1

    .line 1437
    .local v1, "containerW":I
    move v0, p2

    .line 1442
    .local v0, "containerH":I
    iget v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoHeight:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 1443
    .local v3, "realRatio":F
    const v2, 0x3fe38e39

    .line 1444
    .local v2, "parentRatio":F
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1445
    div-int v6, p1, p2

    int-to-float v2, v6

    .line 1447
    :cond_0
    cmpl-float v6, v3, v2

    if-ltz v6, :cond_2

    .line 1449
    move v5, v1

    .line 1450
    .local v5, "videoW":I
    int-to-float v6, v5

    div-float/2addr v6, v3

    float-to-int v4, v6

    .line 1461
    .local v4, "videoH":I
    :goto_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 1463
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-direct {p0, v6, v5, v4}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->layoutViewInFl(Landroid/view/View;II)V

    .line 1464
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceCover:Landroid/view/View;

    invoke-direct {p0, v6, v5, v4}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->layoutViewInFl(Landroid/view/View;II)V

    .line 1466
    :cond_1
    return-void

    .line 1453
    .end local v4    # "videoH":I
    .end local v5    # "videoW":I
    :cond_2
    iget v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoWidth:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoHeight:I

    if-eqz v6, :cond_3

    .line 1454
    move v4, v0

    .line 1455
    .restart local v4    # "videoH":I
    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .restart local v5    # "videoW":I
    goto :goto_0

    .line 1457
    .end local v4    # "videoH":I
    .end local v5    # "videoW":I
    :cond_3
    move v4, v0

    .line 1458
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
    .line 1737
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    .line 1740
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    int-to-float v0, v0

    const v1, 0x3fe38e39

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    .line 1743
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private resumeUpdateProgress()V
    .locals 1

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resumeUpdateProgress()V

    .line 1326
    :cond_0
    return-void
.end method

.method private setElements(Ljava/lang/String;II)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "level"    # I

    .prologue
    .line 3037
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 3038
    iput p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIndex:I

    .line 3039
    iput p3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLevel:I

    .line 3040
    return-void
.end method

.method private setHasClickedListTip()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2006
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    if-nez v0, :cond_0

    .line 2007
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    .line 2008
    const-string v0, "VIDEO_LIST_TIPS_CLICK_FLAG"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 2009
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 2011
    :cond_0
    return-void
.end method

.method private setProgress(II)V
    .locals 6
    .param p1, "curPos"    # I
    .param p2, "duration"    # I

    .prologue
    const v3, 0x36ee80

    .line 922
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    if-nez v2, :cond_1

    .line 926
    if-ge p1, v3, :cond_1

    if-ge p2, v3, :cond_1

    .line 928
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 929
    if-lez p2, :cond_0

    .line 930
    const-wide/16 v2, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v2, v4

    int-to-long v4, p2

    div-long v0, v2, v4

    .line 931
    .local v0, "pos":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 932
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 936
    .end local v0    # "pos":J
    :cond_0
    if-gtz p2, :cond_2

    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    .line 937
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTv:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTotalTimeTvLand:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    :cond_1
    return-void

    .line 936
    :cond_2
    int-to-long v2, p2

    goto :goto_0
.end method

.method private showChildrenUnlock(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1299
    :cond_0
    return-void

    .line 1297
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showController()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1310
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1311
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1313
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1319
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->resumeUpdateProgress()V

    .line 1320
    return-void

    .line 1315
    :cond_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1316
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1317
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    goto :goto_0
.end method

.method private showErrorDialog()V
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2066
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2067
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initErrorDialog()V

    .line 2068
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2070
    :cond_1
    return-void
.end method

.method private showLandScapeController(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1280
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 1283
    return-void

    :cond_0
    move v0, v2

    .line 1280
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1281
    goto :goto_1
.end method

.method private showListTip()V
    .locals 2

    .prologue
    .line 2017
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hasClickListTip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    .line 2018
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2019
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2023
    :goto_0
    return-void

    .line 2021
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowListTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPauseDialog()V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V

    .line 1166
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .line 1167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->setCallBack(Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;)V

    .line 1168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 1173
    :cond_0
    return-void
.end method

.method private showPortraitController(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1274
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideOrShowMediaControllerPortait(Z)V

    .line 1275
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 1277
    return-void

    .line 1275
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showStatusBar(Z)V
    .locals 2
    .param p1, "showStatusBar"    # Z

    .prologue
    const/16 v1, 0x400

    .line 1247
    if-eqz p1, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1252
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private showVideoChannel()V
    .locals 6

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPratise()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1708
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v0

    .line 1709
    .local v0, "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/q/b;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1714
    .end local v0    # "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/q/b;
    :cond_0
    :goto_0
    return-void

    .line 1712
    .restart local v0    # "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/q/b;
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

    .line 1255
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    .line 1256
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1258
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1259
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1270
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 1255
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1258
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1259
    goto :goto_2

    :cond_4
    move v2, v3

    .line 1260
    goto :goto_3

    .line 1261
    :cond_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-eqz v4, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1264
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPortraitController(Z)V

    .line 1265
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLandScapeController(Z)V

    .line 1266
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1267
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 1268
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareChildrenLockerFadeOut()V

    goto :goto_4
.end method

.method private unRegisterReceivers()V
    .locals 0

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->unregisterWatchers()V

    .line 1203
    return-void
.end method

.method private updateMoreToolsIcons()V
    .locals 10

    .prologue
    const v9, 0x7f080115

    const v8, 0x7f0801fa

    const v7, 0x7f0801b2

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 813
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 815
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 816
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 818
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 819
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 820
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v0

    .line 824
    .local v0, "isVideoTimeLimitOn":Z
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    move-result v1

    int-to-long v2, v1

    .line 825
    .local v2, "timeLimited":J
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    if-eqz v1, :cond_3

    .line 826
    if-eqz v0, :cond_2

    .line 830
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 831
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 832
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 834
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftText:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 838
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 841
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 842
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 844
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 845
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftTextLand:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 848
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    :goto_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    const v4, 0x7f080116

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 855
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 856
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 858
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 859
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 861
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 863
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 865
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 866
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 872
    :cond_3
    if-eqz v0, :cond_4

    .line 876
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 877
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 878
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 880
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 881
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterText:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 885
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 886
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 888
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterMarkLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 889
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterTextLand:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 899
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 900
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 901
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 903
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomLeftContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 904
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomCenterContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 905
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->bottomRightContainerLand:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 907
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private updatePlayButton(Z)V
    .locals 2
    .param p1, "isPaused"    # Z

    .prologue
    .line 975
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 976
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v0, 0x7f08011e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 979
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPlayBtnLand:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v0, 0x7f08011f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 981
    :cond_1
    return-void

    .line 976
    :cond_2
    const v0, 0x7f08011c

    goto :goto_0

    .line 979
    :cond_3
    const v0, 0x7f08011d

    goto :goto_1
.end method

.method private updateViewViaOrientation()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1483
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1488
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideOrShowMediaControllerPortait(Z)V

    .line 1489
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 1496
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 1508
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showListTip()V

    .line 1509
    return-void

    .line 1497
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideOrShowMediaControllerPortait(Z)V

    .line 1503
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->topBarContainerLand:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mediaControllerLand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 2957
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
    .line 2136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 2137
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 2138
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 2139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 2140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2141
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0, p2, p4, p5, p6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 2145
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2148
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeVisibilityViaRid()V

    .line 2149
    return-void
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 2917
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    .line 2918
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->createPresenter()Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .locals 1

    .prologue
    .line 1582
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;-><init>()V

    return-object v0
.end method

.method public dismissLoadingView()V
    .locals 1

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 3097
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
    .line 791
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 792
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 793
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    :cond_0
    const/4 v5, 0x2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 795
    const-string v1, "watch"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 798
    :cond_1
    return-void
.end method

.method public getContext()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 3177
    return-object p0
.end method

.method public getCourseIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2403
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 2404
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

    .line 2407
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
    .line 3058
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchFirstPos()I
    .locals 1

    .prologue
    .line 3049
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchFirstPos:I

    return v0
.end method

.method public getSearchKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getThisFragmentManager()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getUi()Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/video/presenter/VideoView;
    .locals 0

    .prologue
    .line 1587
    return-object p0
.end method

.method public gotoChannelSelect()V
    .locals 4

    .prologue
    .line 2074
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2075
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 2081
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2082
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2083
    const-string v2, "channel"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    const-string v2, "title"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string v2, "index"

    iget v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2086
    const-string v2, "LEVEL"

    iget v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLevel:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2088
    :cond_1
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onShowVideoChannel(Landroid/os/Bundle;)V

    .line 2089
    return-void

    .line 2077
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2078
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 948
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideController()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideAllSecondaryFragment(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Z
    .locals 11
    .param p1, "videoChannelListFragment"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    const v10, 0x7f01001e

    const v9, 0x7f01001d

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2989
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isHidden()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2991
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 2992
    .local v0, "cfm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->f()I

    move-result v1

    .line 2994
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 2995
    invoke-virtual {v0, v5}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v2

    .line 2996
    .local v2, "childEntry":Landroid/support/v4/app/ag$a;
    if-eqz v2, :cond_0

    .line 2997
    invoke-interface {v2}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    .line 2998
    .local v4, "childName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 2999
    .local v3, "childFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2994
    .end local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "childName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3002
    .restart local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .restart local v4    # "childName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v8

    .line 3003
    invoke-virtual {v8, v9, v10, v9, v10}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v8

    .line 3005
    invoke-virtual {v8, v3}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v8

    .line 3006
    invoke-virtual {v8}, Landroid/support/v4/app/an;->i()I

    .line 3007
    const/4 v8, 0x0

    invoke-direct {p0, v8, v7, v6}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setElements(Ljava/lang/String;II)V

    .line 3012
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
    const v6, 0x7f010025

    const v5, 0x7f010022

    const/4 v3, 0x0

    .line 3016
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 3017
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v1

    .line 3018
    .local v1, "entry":Landroid/support/v4/app/ag$a;
    if-eqz v1, :cond_0

    .line 3020
    invoke-interface {v1}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 3021
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    if-eqz v4, :cond_0

    .line 3022
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3032
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return v3

    .line 3026
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v4

    .line 3027
    invoke-virtual {v4, v2}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/an;->i()I

    .line 3028
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setElements(Ljava/lang/String;II)V

    .line 3029
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public hideLoadingProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1365
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendEmptyMessage(I)Z

    .line 1371
    :cond_1
    return-void
.end method

.method public hideOrShowMediaControllerPortait(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarPortaitControllerContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3183
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarPortaitControllerContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3185
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mBottomMediaControllContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 3186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mBottomMediaControllContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3188
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 3183
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3186
    goto :goto_1
.end method

.method public isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 2965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2966
    .local v0, "time":J
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->lastClickTime:J

    sub-long v2, v0, v4

    .line 2967
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 2968
    const/4 v4, 0x1

    .line 2971
    :goto_0
    return v4

    .line 2970
    :cond_0
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->lastClickTime:J

    .line 2971
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isFromPratise()Z
    .locals 1

    .prologue
    .line 2398
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    return v0
.end method

.method protected isInPlaybackState()Z
    .locals 1

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isInPlaybackState()Z

    move-result v0

    .line 1377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotModelLesson()Z
    .locals 1

    .prologue
    .line 1178
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
    .line 3053
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    return v0
.end method

.method public isVideoChannelListFragmentShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2111
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    if-nez v1, :cond_1

    .line 2114
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

    .line 2154
    packed-switch p1, :pswitch_data_0

    .line 2195
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2198
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2199
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2201
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeVisibilityViaRid()V

    .line 2202
    :cond_2
    return-void

    .line 2156
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 2157
    if-eqz p3, :cond_2

    .line 2160
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchKeyword:Ljava/lang/String;

    .line 2161
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchFirstPos:I

    .line 2162
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    .line 2164
    const-string v1, "KEY_SEARCH_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    .local v0, "_id":Ljava/lang/String;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 2166
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2167
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 2171
    :cond_3
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed(Z)V

    goto :goto_0

    .line 2172
    .end local v0    # "_id":Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_0

    .line 2173
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2174
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setLastPaused(Z)V

    .line 2176
    :cond_5
    if-eqz p3, :cond_2

    .line 2179
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchKeyword:Ljava/lang/String;

    .line 2180
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchFirstPos:I

    .line 2181
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->searchResult:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2154
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method

.method public onAlreadySwitchToFirst()V
    .locals 1

    .prologue
    .line 2131
    const-string v0, "\u5df2\u5230\u7b2c\u4e00\u4e2a\u89c6\u9891"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2132
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

    .line 589
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 591
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 592
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 593
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 594
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 595
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 600
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const v1, 0x7f080110

    .line 581
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    .line 2663
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1112
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 1113
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelListFragment:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideAllSecondaryFragment(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1116
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onExit()V

    .line 1127
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 1122
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1124
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onBackPressed(Z)V
    .locals 3
    .param p1, "backToMain"    # Z

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1132
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 1133
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1135
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayResume()V

    .line 3223
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
    .line 2119
    invoke-virtual/range {p0 .. p6}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 2120
    return-void
.end method

.method public onChildGained()V
    .locals 1

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2542
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2544
    :cond_0
    return-void
.end method

.method public onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    .prologue
    .line 2978
    if-eqz p1, :cond_0

    .line 2979
    iget-object v0, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnId:Ljava/lang/String;

    iget v1, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->clickIndex:I

    iget v2, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnLevel:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setElements(Ljava/lang/String;II)V

    .line 2982
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2983
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z

    .line 2986
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 399
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showMoreToolsDlg()V

    goto :goto_0

    .line 405
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-static {v7}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v4

    .line 406
    .local v4, "timeCtlFragment":Lcom/jiliguala/niuwa/common/a/k;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v6

    .line 407
    .local v6, "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/q/b;
    if-nez v4, :cond_2

    .line 408
    const-string v7, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    invoke-static {v7, v12}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v5

    .line 409
    .local v5, "videoCurTimeRecord":I
    int-to-long v8, v5

    invoke-static {v8, v9}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->secToMin(J)I

    move-result v5

    .line 410
    sget-object v7, Lcom/jiliguala/niuwa/logic/q/b;->b:[I

    .line 411
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    move-result v8

    .line 410
    invoke-static {v7, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    .line 412
    .local v3, "selection":I
    if-gez v3, :cond_1

    .line 418
    const/4 v3, 0x1

    .line 420
    :cond_1
    new-instance v7, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    const v8, 0x7f0f026e

    .line 421
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 420
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    const v8, 0x7f0f026d

    new-array v9, v11, [Ljava/lang/Object;

    .line 422
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    sget-object v8, Lcom/jiliguala/niuwa/logic/q/b;->a:[Ljava/lang/String;

    .line 423
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/util/List;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    const/16 v8, 0x11

    .line 424
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    .line 425
    invoke-virtual {v7, v11}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    .line 426
    invoke-virtual {v7, v3}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
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

    .line 428
    invoke-virtual {v7, v11}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    .line 429
    .local v0, "config":Lcom/jiliguala/niuwa/common/a/k$b;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;Lcom/jiliguala/niuwa/common/a/k$b;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v4

    .line 431
    .end local v0    # "config":Lcom/jiliguala/niuwa/common/a/k$b;
    .end local v3    # "selection":I
    .end local v5    # "videoCurTimeRecord":I
    :cond_2
    new-instance v7, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;

    invoke-direct {v7, p0, v6}, Lcom/jiliguala/niuwa/module/video/VideoActivity$1;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Lcom/jiliguala/niuwa/logic/q/b;)V

    invoke-virtual {v4, v7}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k$a;)V

    .line 458
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/jiliguala/niuwa/common/a/k;->b(Landroid/support/v4/app/ag;)V

    .line 459
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    .line 460
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 465
    .end local v4    # "timeCtlFragment":Lcom/jiliguala/niuwa/common/a/k;
    .end local v6    # "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/q/b;
    :sswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doShareThisVideo()V

    .line 468
    :cond_3
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    .line 469
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 474
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 475
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V

    .line 477
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    goto/16 :goto_0

    .line 481
    :sswitch_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeScreenOrientation()V

    goto/16 :goto_0

    .line 485
    :sswitch_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 486
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext()V

    .line 488
    :cond_5
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v7, :cond_0

    .line 489
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    goto/16 :goto_0

    .line 494
    :sswitch_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 498
    :sswitch_7
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playPrev()V

    goto/16 :goto_0

    .line 504
    :sswitch_8
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->clickFavThisVideo()V

    goto/16 :goto_0

    .line 510
    :sswitch_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->changeLoopStrategy()V

    goto/16 :goto_0

    .line 516
    :sswitch_a
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v7

    const-string v8, "Watch Child Lock"

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 517
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 518
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "Type"

    const-string v8, "Video"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Lock"

    invoke-static {v7, v8, v2}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 521
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->toggleChildrenLock()V

    .line 522
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    .line 523
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 528
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_b
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->setHasClickedListTip()V

    .line 529
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->reportChannelListViewAmplitude()V

    .line 531
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelect()V

    goto/16 :goto_0

    .line 535
    :sswitch_c
    sput-boolean v12, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 536
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 537
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 539
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 542
    :sswitch_d
    sput-boolean v11, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 543
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 544
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 547
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 556
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_e
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 557
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 558
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onClickMirrorRenderBtn()V

    goto/16 :goto_0

    .line 396
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
        0x7f090230 -> :sswitch_4
        0x7f090231 -> :sswitch_4
        0x7f0902fa -> :sswitch_9
        0x7f0902fb -> :sswitch_9
        0x7f090342 -> :sswitch_e
        0x7f090343 -> :sswitch_e
        0x7f09035d -> :sswitch_0
        0x7f090370 -> :sswitch_0
        0x7f09037c -> :sswitch_b
        0x7f09037d -> :sswitch_b
        0x7f0904cf -> :sswitch_2
        0x7f0904d9 -> :sswitch_2
        0x7f0905ef -> :sswitch_1
        0x7f0905f0 -> :sswitch_1
        0x7f0905f1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickFavThisVideo()V
    .locals 2

    .prologue
    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    .line 620
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->doLoveScaleAnimation(Landroid/view/View;)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->doLoveScaleAnimation(Landroid/view/View;)V

    .line 628
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Fav Video"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 629
    const-string v0, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public onClickUnFavThisVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f080123

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    .line 635
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->confirmUnFavThisVideo(Ljava/lang/String;)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 639
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    :cond_1
    const-string v0, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1478
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1479
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 1480
    return-void
.end method

.method public onConnectionLost()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 390
    const v0, 0x7f0f0144

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 391
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1592
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1596
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/q/b;->b()V

    .line 1600
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 1602
    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    .line 1603
    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$a;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    .line 1604
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 1606
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initDialogs()V

    .line 1608
    const-string v4, "0"

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1609
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->addEventObserver()V

    .line 1611
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->registerWatchers()V

    .line 1613
    if-eqz p1, :cond_0

    .line 1614
    const-string v4, "KEY_LAND_WIDTH"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    .line 1615
    const-string v4, "KEY_LAND_HEIGHT"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    .line 1618
    const-string v4, "KEY_PORT_WIDTH"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    .line 1619
    const-string v4, "KEY_PORT_HEIGHT"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    .line 1622
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v4, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1625
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepareMediaPlayer()V

    .line 1627
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1628
    .local v3, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1629
    .local v2, "extra":Z
    if-eqz v3, :cond_3

    .line 1630
    const-string v4, "from_practise"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    .line 1631
    const-string v4, "has_model"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHasModel:Z

    .line 1632
    const-string v4, "IS_WATCH"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsWatch:Z

    .line 1633
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsWatch:Z

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setIsWatch(Z)V

    .line 1634
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    .line 1636
    const-string v4, "rid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 1637
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "PARAM_COURSE_TICKET"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 1638
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "mc_pc_sub_task_ticket"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 1640
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v4, :cond_1

    .line 1641
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 1644
    :cond_1
    const-string v4, "channel"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1645
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1647
    const-string v4, "26"

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1649
    :cond_2
    const-string v4, "extra"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1650
    const-string v4, "channel_nm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 1651
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "The Kiboomers"

    :goto_1
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 1657
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v4

    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/q/b;->b(Z)V

    .line 1667
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v4, :cond_4

    .line 1668
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Watch View"

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 1671
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->initUI()V

    .line 1672
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeVisibilityViaRid()V

    .line 1674
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    .line 1675
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/g/e;->h()Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "chnId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1677
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    .line 1678
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/g/e;->i()Ljava/lang/String;

    move-result-object v1

    .line 1679
    .local v1, "chnName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1680
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    .line 1685
    .end local v0    # "chnId":Ljava/lang/String;
    .end local v1    # "chnName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isMcPhCourse()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setMcPhCourse(Z)V

    .line 1688
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayRecord()V

    .line 1692
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    new-instance v5, Lcom/jiliguala/niuwa/module/video/VideoActivity$22;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$22;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    const-wide/16 v6, 0x320

    invoke-virtual {v4, v5, v6, v7}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1700
    return-void

    :cond_6
    move v4, v5

    .line 1634
    goto/16 :goto_0

    .line 1651
    :cond_7
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1042
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onDestroy()V

    .line 1045
    :cond_0
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 1046
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 1047
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->releaseSurface()V

    .line 1048
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSeekBarLand:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v0, :cond_3

    .line 1055
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$c;->a(Lcom/jiliguala/niuwa/module/video/VideoActivity$c;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1056
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    .line 1059
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1060
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1062
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_5

    .line 1063
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 1065
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_6

    .line 1066
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1067
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a(Lcom/jiliguala/niuwa/module/video/VideoActivity$b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1068
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    .line 1070
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->stop()V

    .line 1071
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_0

    .line 1144
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    if-nez v0, :cond_2

    .line 1145
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNotModelLesson()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1146
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showPauseDialog()V

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    goto :goto_0

    .line 1151
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_3

    .line 1152
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->changeScreenOrientation()V

    goto :goto_0

    .line 1154
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    goto :goto_0
.end method

.method public onExitClick()V
    .locals 0

    .prologue
    .line 3209
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->performExit()V

    .line 3210
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 2673
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 2674
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2675
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2676
    packed-switch p1, :pswitch_data_0

    .line 2687
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2678
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    move v0, v1

    .line 2680
    goto :goto_0

    .line 2682
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    move v0, v1

    .line 2684
    goto :goto_0

    .line 2676
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 2530
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2531
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2532
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 2537
    :cond_0
    :goto_0
    return-void

    .line 2535
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showAddBabyPage()V

    goto :goto_0
.end method

.method public onNetworkUnavailable()V
    .locals 1

    .prologue
    .line 786
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public onNoneWifiConnection()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 382
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    .line 383
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestChannelWhileGainNetworkConnection()V

    .line 384
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 1028
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onPause()V

    .line 1029
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 1032
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_end_time:J

    .line 1035
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_end_time:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_start_time:J

    sub-long v0, v2, v4

    .line 1036
    .local v0, "total":J
    const-string v2, "Watch View"

    const/4 v3, 0x0

    long-to-int v4, v0

    invoke-static {p0, v2, v3, v4}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 1037
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 3204
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V

    .line 3205
    return-void
.end method

.method public onPlayComplete()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 755
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onComplete()V

    .line 756
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 757
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

    .line 775
    :goto_0
    return v1

    .line 759
    :cond_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v1, :cond_2

    .line 761
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v0

    .line 762
    .local v0, "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendMcPcProgress(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;Ljava/lang/String;)V

    :cond_1
    move v1, v2

    .line 765
    goto :goto_0

    .line 771
    .end local v0    # "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHasModel:Z

    if-eqz v1, :cond_3

    .line 772
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->justExitPge()V

    move v1, v2

    .line 773
    goto :goto_0

    .line 775
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPlayError()Z
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onStopTimer()V

    .line 712
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 713
    return-void
.end method

.method public onPlayPauseOnUi()V
    .locals 1

    .prologue
    .line 662
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$18;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$18;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 669
    return-void
.end method

.method public onPlayPrepared(J)V
    .locals 4
    .param p1, "duration"    # J

    .prologue
    const/4 v3, 0x1

    .line 718
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideLoadingProgress()V

    .line 719
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 720
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 721
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    if-eqz v2, :cond_1

    .line 722
    const-string v2, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 723
    .local v1, "enabled":Z
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    if-nez v2, :cond_1

    .line 726
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 734
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 735
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 739
    .end local v1    # "enabled":Z
    :cond_1
    return-void

    .line 729
    .restart local v1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPlayResume()V
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updatePlayButton(Z)V

    .line 648
    return-void
.end method

.method public onPlayResumeOnUi()V
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$12;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$12;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 658
    return-void
.end method

.method public onPrepareAdjustVideoSize(II)V
    .locals 2
    .param p1, "videoW"    # I
    .param p2, "videoH"    # I

    .prologue
    const/4 v1, 0x1

    .line 2318
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_1

    .line 2320
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    .line 2324
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->resumeUpdateProgress()V

    .line 2325
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 2328
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoWidth:I

    .line 2329
    iput p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoHeight:I

    .line 2331
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v0, :cond_2

    .line 2332
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2333
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 2334
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 2336
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 2337
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestSurfaceLayout(II)V

    .line 2347
    :cond_2
    :goto_0
    return-void

    .line 2338
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showStatusBar(Z)V

    .line 2340
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateViewViaOrientation()V

    .line 2341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2343
    const/4 v0, -0x1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestParentLayout(II)V

    .line 2344
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
    .line 325
    if-nez p3, :cond_0

    .line 338
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDuration:J

    int-to-long v6, p2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 330
    .local v0, "new_pos":J
    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "time":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mInstantSeeking:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
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
    .line 743
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    if-nez v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 746
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 747
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 748
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 751
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onRenderPlayConntected()V
    .locals 1

    .prologue
    .line 2447
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$9;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$9;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2463
    return-void
.end method

.method public onRenderPlayDisConntected()V
    .locals 1

    .prologue
    .line 2466
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$10;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2491
    return-void
.end method

.method public onRenderPlaySeek()V
    .locals 0

    .prologue
    .line 2503
    return-void
.end method

.method public onRenderPlayStart()V
    .locals 1

    .prologue
    .line 2432
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$8;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$8;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2444
    return-void
.end method

.method public onRenderPlayStop()V
    .locals 1

    .prologue
    .line 2495
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2496
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onPlay()V

    .line 2498
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1000
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 1001
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 1002
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->m_start_time:J

    .line 1005
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1007
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelNameLand:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mChannelTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isScreenLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1013
    :cond_0
    return-void

    .line 1007
    :cond_1
    const-string v0, "\u9891\u9053"

    goto :goto_0

    .line 1008
    :cond_2
    const-string v0, "\u9891\u9053"

    goto :goto_1
.end method

.method public onResumeClick()V
    .locals 1

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    if-eqz v0, :cond_0

    .line 3215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->dismiss()V

    .line 3217
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayResume()V

    .line 3218
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2035
    const-string v0, "KEY_LAND_WIDTH"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2036
    const-string v0, "KEY_LAND_HEIGHT"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->landVideoContainerHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2039
    const-string v0, "KEY_PORT_WIDTH"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2040
    const-string v0, "KEY_PORT_HEIGHT"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->portVideoContainerHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2041
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2042
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2044
    :cond_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2045
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 3198
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3199
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V

    .line 3201
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .prologue
    .line 3193
    return-void
.end method

.method public onSearchAction()V
    .locals 0

    .prologue
    .line 2127
    return-void
.end method

.method public onSendProgressFail()V
    .locals 4

    .prologue
    .line 695
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1025

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 696
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    .line 697
    return-void
.end method

.method public onSendProgressSuccess()V
    .locals 4

    .prologue
    .line 673
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$19;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$19;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    .line 691
    return-void
.end method

.method public onShowVideoLimitDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2259
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 2260
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    .line 2262
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2263
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2264
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0134

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2268
    :goto_0
    const/4 v1, 0x0

    .line 2269
    .local v1, "width":I
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2270
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v1, v2, 0xa

    .line 2275
    :cond_1
    :goto_1
    const/4 v0, -0x2

    .line 2276
    .local v0, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 2277
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2278
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2287
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0901b6

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2288
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0900fa

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$4;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2297
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2298
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2303
    :cond_2
    :goto_2
    return-void

    .line 2266
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTakeBreakDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0133

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    .line 2271
    .restart local v1    # "width":I
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2272
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v1, v2, 0xa

    goto :goto_1

    .line 2300
    .restart local v0    # "height":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public onStartTimer()V
    .locals 1

    .prologue
    .line 3122
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_0

    .line 3123
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->start()V

    .line 3127
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 342
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/b;->b()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    .line 344
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showController()V

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCurrentTimeTvLand:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onStopTimer()V
    .locals 1

    .prologue
    .line 3131
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-nez v0, :cond_0

    .line 3132
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTimeRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$TimeRunnable;->stop()V

    .line 3136
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mInstantSeeking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
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

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareForFadeOut()V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mDragging:Z

    .line 363
    return-void
.end method

.method public onSubCourseReportFailed()V
    .locals 0

    .prologue
    .line 2373
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->cancelSubCourse()V

    .line 2374
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V

    .line 2375
    return-void
.end method

.method public onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$5;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCourseFinished:Z

    .line 2369
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x7

    const v7, 0x7f0600fa

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2826
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090130

    if-ne v3, v4, :cond_6

    .line 2827
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2912
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 2829
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2830
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 2832
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->currentCounter:I

    .line 2833
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 2834
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

    .line 2835
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    const v4, 0x7f0f0254

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2836
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2838
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2839
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2840
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2843
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_0

    .line 2844
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_2

    .line 2845
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2847
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    if-eqz v2, :cond_0

    .line 2848
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2854
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 2855
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    const v4, 0x7f0f0117

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2856
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080114

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2857
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2858
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2859
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2860
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v2, :cond_4

    .line 2861
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_3

    .line 2862
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2864
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    if-eqz v2, :cond_4

    .line 2865
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2868
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareChildrenLockerFadeOut()V

    goto/16 :goto_0

    .line 2872
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 2874
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    const v4, 0x7f0f0117

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2875
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080114

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2876
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2877
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2878
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2879
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v2, :cond_0

    .line 2880
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    if-eqz v2, :cond_5

    .line 2881
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$c;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2883
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    if-eqz v2, :cond_0

    .line 2884
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->countDownRunnable:Lcom/jiliguala/niuwa/module/video/VideoActivity$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2890
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0905f7

    if-eq v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090048

    if-ne v3, v4, :cond_0

    .line 2891
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    move v1, v2

    .line 2909
    goto/16 :goto_0

    .line 2893
    :pswitch_4
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isChildrenLock:Z

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2894
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShowing:Z

    if-eqz v2, :cond_8

    .line 2895
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hideController()V

    goto/16 :goto_0

    .line 2897
    :cond_8
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showController()V

    goto/16 :goto_0

    .line 2900
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 2901
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showChildrenUnlock(Z)V

    goto/16 :goto_0

    .line 2903
    :cond_a
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showChildrenUnlock(Z)V

    .line 2904
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->prepareChildrenLockerFadeOut()V

    goto/16 :goto_0

    .line 2827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2891
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
    .line 2383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMirrorRenderBtnLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2384
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$6;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;ZZ)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2394
    :cond_0
    return-void
.end method

.method public onWifiConnection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 369
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->requestChannel()V

    .line 370
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    if-nez v0, :cond_0

    .line 372
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mLastHasNetWork:Z

    .line 373
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isNoneWifiState:Z

    .line 374
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

    .line 376
    :cond_0
    return-void

    :cond_1
    move v4, v2

    .line 374
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1017
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onWindowFocusChanged(Z)V

    .line 1018
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isScreenLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    if-eqz p1, :cond_0

    .line 1020
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1023
    :cond_0
    return-void
.end method

.method public pausePlayOnChannelShow()V
    .locals 0

    .prologue
    .line 3141
    return-void
.end method

.method public prepareChildrenLockerFadeOut()V
    .locals 4

    .prologue
    const/4 v2, 0x7

    .line 965
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 968
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 971
    :cond_0
    return-void
.end method

.method public prepareForFadeOut()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 956
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 959
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 962
    :cond_0
    return-void
.end method

.method protected registerWatchers()V
    .locals 1

    .prologue
    .line 1717
    new-instance v0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .line 1718
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;)V

    .line 1719
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->c()V

    .line 1721
    new-instance v0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    .line 1722
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;)V

    .line 1723
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->c()V

    .line 1724
    return-void
.end method

.method public reportSubLessonExit()V
    .locals 5

    .prologue
    .line 2943
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-nez v3, :cond_0

    .line 2952
    :goto_0
    return-void

    .line 2944
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2945
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ID"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getResId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    const-string v3, "Position"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    const-string v3, "Type"

    const-string v4, "MC-video"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2948
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/i/b;->d()J

    move-result-wide v0

    .line 2950
    .local v0, "lastRecordSeconds":J
    const-string v3, "Time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2951
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Sub Lesson Exit"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 2931
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 2932
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2933
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2935
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    const-string v1, "Step"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    const-string v1, "Time"

    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/i/b;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2940
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public sendExitReport()V
    .locals 1

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 2922
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->sendCourseTaskExitReport()V

    .line 2925
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v0, :cond_1

    .line 2926
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->reportSubLessonExit()V

    .line 2928
    :cond_1
    return-void
.end method

.method public setControllerEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1329
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$20;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1354
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1514
    packed-switch p1, :pswitch_data_0

    .line 1522
    :pswitch_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->setRequestedOrientation(I)V

    .line 1523
    return-void

    .line 1514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public show3GNetStateDialog()V
    .locals 3

    .prologue
    .line 1568
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

    .line 1569
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 1572
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1573
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    :cond_2
    :goto_0
    return-void

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showAddBabyPage()V
    .locals 3

    .prologue
    .line 612
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 613
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 614
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->overridePendingTransition(II)V

    .line 615
    return-void
.end method

.method public showChannel(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2962
    return-void
.end method

.method public showErrorAlertDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2307
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v1, :cond_1

    .line 2308
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2309
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->removeMessages(I)V

    .line 2311
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2312
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2314
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public showLoadingProgress()V
    .locals 4

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    const/4 v1, 0x6

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1361
    :cond_0
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .prologue
    .line 3063
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

    .line 3064
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 3066
    :cond_1
    return-void
.end method

.method public showLoginPage()V
    .locals 2

    .prologue
    .line 606
    const v1, 0x7f0f00cb

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 607
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 608
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 609
    return-void
.end method

.method public showMoreToolsDlg()V
    .locals 10

    .prologue
    const v7, 0x7f1000b3

    const/16 v5, 0x8

    const/4 v9, 0x1

    const v8, 0x7f0600fa

    const/4 v4, 0x0

    .line 2691
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-nez v3, :cond_0

    .line 2692
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    .line 2694
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2695
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 2697
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2698
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x50

    invoke-virtual {v3, v6}, Landroid/view/Window;->setGravity(I)V

    .line 2699
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2700
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0b0197

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 2702
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v3, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 2703
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2704
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2706
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0902fc

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRid:Ljava/lang/String;

    .line 2707
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 2706
    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2708
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0901f8

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2709
    .local v0, "favContainer":Landroid/view/View;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2710
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0901fb

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    .line 2711
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2712
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2713
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    if-nez v3, :cond_5

    const v3, 0x7f080123

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2714
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0902fa

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    .line 2715
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2716
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    if-eqz v3, :cond_6

    const v3, 0x7f080116

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2717
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2718
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0902fb

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopTipsTv:Landroid/widget/TextView;

    .line 2719
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopTipsTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2720
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->loopTipsTv:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    if-eqz v3, :cond_7

    const v3, 0x7f0f01be

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2722
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f09012e

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    .line 2723
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2724
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenLockIv:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2725
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f09012f

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenTipsTv:Landroid/widget/TextView;

    .line 2726
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->childrenTipsTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2728
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0904d9

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShareBtn:Landroid/widget/ImageView;

    .line 2729
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShareBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2730
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mShareBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2731
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0904cf

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->shareTipsTv:Landroid/widget/TextView;

    .line 2732
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->shareTipsTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2734
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0905ef

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    .line 2735
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2736
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2737
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0905f1

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    .line 2738
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2739
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlIv:Landroid/widget/ImageView;

    const v6, 0x7f0801b2

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2740
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2741
    const-string v3, "PREFS_KEY_VIDEO_CTRL_TIME"

    sget-object v6, Lcom/jiliguala/niuwa/logic/q/b;->b:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v3, v6}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v2

    .line 2742
    .local v2, "limit":I
    if-nez v2, :cond_2

    .line 2743
    sget-object v3, Lcom/jiliguala/niuwa/logic/q/b;->b:[I

    aget v2, v3, v9

    .line 2745
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

    .line 2746
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2747
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f0905f0

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    .line 2748
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2751
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v6, 0x7f090440

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mRemaingTimeLimit:Landroid/widget/TextView;

    .line 2753
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2754
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2755
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

    .line 2760
    :goto_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    const v5, 0x7f0905f8

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 2761
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2762
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    move-result v1

    .line 2763
    .local v1, "lastTimeLimitSet":I
    if-nez v1, :cond_9

    .line 2764
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 2771
    .end local v1    # "lastTimeLimitSet":I
    :goto_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$15;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$15;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    invoke-virtual {v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2818
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2822
    :goto_7
    return-void

    .end local v0    # "favContainer":Landroid/view/View;
    .end local v2    # "limit":I
    :cond_3
    move v3, v5

    .line 2707
    goto/16 :goto_0

    .restart local v0    # "favContainer":Landroid/view/View;
    :cond_4
    move v3, v5

    .line 2709
    goto/16 :goto_1

    .line 2713
    :cond_5
    const v3, 0x7f080110

    goto/16 :goto_2

    .line 2716
    :cond_6
    const v3, 0x7f080115

    goto/16 :goto_3

    .line 2720
    :cond_7
    const v3, 0x7f0f003d

    goto/16 :goto_4

    .line 2757
    .restart local v2    # "limit":I
    :cond_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlTv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2766
    .restart local v1    # "lastTimeLimitSet":I
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_6

    .line 2769
    .end local v1    # "lastTimeLimitSet":I
    :cond_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->videoLmtCtlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_6

    .line 2819
    :catch_0
    move-exception v3

    goto :goto_7
.end method

.method public showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V
    .locals 19
    .param p1, "mCurrentPlayItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .prologue
    .line 3102
    .line 3103
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 3102
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    move-result-object v1

    .line 3104
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    move-object/from16 v18, v0

    .line 3105
    .local v18, "meta":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6211\u548c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    .line 3106
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

    .line 3107
    .local v3, "shareTitle":Ljava/lang/String;
    const-string v4, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 3108
    .local v4, "content":Ljava/lang/String;
    const-string v2, "Watch View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setEventName(Ljava/lang/String;)V

    .line 3109
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

    const v13, 0x7f08036f

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

    .line 3110
    const-string v2, "watch"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setSource(Ljava/lang/String;)V

    .line 3111
    const v2, 0x7f0801e5

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setTopIconRes(I)V

    .line 3112
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f026a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setShareText(Ljava/lang/String;)V

    .line 3113
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    .end local v3    # "shareTitle":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v18    # "meta":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;
    :goto_0
    return-void

    .line 3114
    :catch_0
    move-exception v17

    .line 3116
    .local v17, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showRenderChooser()V
    .locals 4

    .prologue
    .line 2411
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2412
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->dismiss()V

    .line 2414
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getMirrorRenderInfo()Ljava/util/Map;

    move-result-object v0

    .line 2415
    .local v0, "renders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    new-instance v2, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$7;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    .line 2425
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    .line 2426
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->setCanceledOnTouchOutside(Z)V

    .line 2427
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mConnectDialog:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->show()V

    .line 2428
    return-void
.end method

.method public showSingleLoopDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2217
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v0, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2218
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2219
    const v3, 0x7f0b0183

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2221
    const/4 v2, 0x0

    .line 2222
    .local v2, "width":I
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationLandScape()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2223
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa

    .line 2228
    :cond_0
    :goto_0
    const/4 v1, -0x2

    .line 2229
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 2230
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2231
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2233
    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$2;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2242
    const v3, 0x7f0900fa

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity$3;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2251
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    :goto_1
    return-void

    .line 2224
    .end local v1    # "height":I
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isOrientationPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2225
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    goto :goto_0

    .line 2252
    .restart local v1    # "height":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public showSurfaceCover(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 701
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mSurfaceCover:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 702
    return-void

    .line 701
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 706
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2590
    const-string v0, "[surfaceChanged]"

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2591
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 2593
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2594
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->handleMalFormedVideo()V

    .line 2597
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2557
    const-string v1, "[surfaceCreated]..."

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2558
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 2560
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2561
    :cond_0
    const-string v1, "[set visibility]...surface is inValid."

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2562
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid surface view."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 2564
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2565
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoSurface:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2575
    :cond_1
    :goto_0
    return-void

    .line 2569
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2570
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->showLoadingProgress()V

    .line 2572
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2573
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
    .line 2610
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2614
    :goto_0
    const-string v1, "[surfaceDestroyed]"

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2616
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->savePosWhilePause()V

    .line 2618
    :cond_0
    return-void

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected unregisterWatchers()V
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->d()V

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    if-eqz v0, :cond_1

    .line 1732
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->d()V

    .line 1734
    :cond_1
    return-void
.end method

.method public updateArtist(Ljava/lang/String;)V
    .locals 3
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    .line 2657
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

    .line 2658
    return-void
.end method

.method public updateChannelName(Ljava/lang/String;)V
    .locals 1
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 2622
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$14;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2634
    return-void
.end method

.method public updateFavIcon(Z)V
    .locals 4
    .param p1, "isFav"    # Z

    .prologue
    const v1, 0x7f080123

    const v2, 0x7f080110

    .line 914
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mIsCurrentFav:Z

    .line 915
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideo:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 916
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mFavVideoLand:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 915
    goto :goto_0

    :cond_2
    move v1, v2

    .line 917
    goto :goto_1
.end method

.method public updateFavImg(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3162
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3173
    return-void
.end method

.method public updateLoopBtn(Z)V
    .locals 1
    .param p1, "singleLoop"    # Z

    .prologue
    .line 802
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->singleLoop:Z

    .line 803
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateMoreToolsIcons()V

    .line 804
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 807
    :cond_0
    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 2648
    const v0, 0x7f090503

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2649
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isFromPractice:Z

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2651
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->titleLand:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2653
    :cond_0
    return-void
.end method

.method public updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ttl"    # Ljava/lang/String;
    .param p2, "art"    # Ljava/lang/String;

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mHandler:Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/VideoActivity$16;-><init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->post(Ljava/lang/Runnable;)Z

    .line 3158
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
    .line 2638
    .local p1, "videoChannelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity;->mVideoChannelData:Ljava/util/ArrayList;

    .line 2640
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2641
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    if-eqz v1, :cond_0

    .line 2642
    check-cast v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->refreshList(Ljava/util/ArrayList;)V

    .line 2644
    :cond_0
    return-void
.end method
