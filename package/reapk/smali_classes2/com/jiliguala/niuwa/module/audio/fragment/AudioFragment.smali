.class public Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;
.implements Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;,
        Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;,
        Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;
    }
.end annotation


# static fields
.field private static final AUDIO_LIMIT_TIME_REACHED:I = 0x1004

.field private static final DEFAULT_BG_COLOR:Ljava/lang/String; = "#FFFB992D"

.field public static final DELAY_MILLIS:I = 0x1f4

.field private static final DISMISS_DIALOG:I = 0x1001

.field private static final DISMISS_PROGRESS_DIALOG:I = 0x1003

.field private static final FETCH_CHANNEL:I = 0x1000

.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final LONG_CLICK_TIME:I = 0xbb8

.field private static final PAUSE_AUDIO_PLAY:I = 0x1006

.field private static final REFRESH_PROGRESS:I = 0x1000

.field private static final ROTATION_ANIMATION_DURATION:I = 0x7530

.field public static final SEARCH_AUDIO:I = 0x1001

.field private static final SHOW_AUDIO_CHANNEL:I = 0x1005

.field private static final SHOW_PROGRESS_DIALOG:I = 0x1002

.field public static final TAG:Ljava/lang/String;

.field private static final UNLOCK_COUNTER:I = 0x3

.field private static final UNLOCK_TICK_TIME:I = 0x3e8

.field private static final X_ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private bottomContainer:Landroid/view/View;

.field private childrenLockIv:Landroid/widget/ImageView;

.field private childrenTipsTv:Landroid/widget/TextView;

.field private childrenUnlockTv:Landroid/widget/TextView;

.field private countDownRunnable:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

.field private coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

.field private coverRotateAnimation:Lcom/nineoldandroids/a/l;

.field private currentColor:I

.field private currentCounter:I

.field private currentDownloadStatus:I

.field private currentLrcMode:I

.field private dialog:Landroid/app/Dialog;

.field private downloadThisSongBtn:Landroid/widget/ImageView;

.field private downloadTipsTv:Landroid/widget/TextView;

.field private hasClickListTip:Z

.field private isChildrenLock:Z

.field isFromPractise:Z

.field private isLyricsShowMore:Z

.field private isNoneWifiState:Z

.field private isPaused:Z

.field private loopBtn:Landroid/widget/ImageView;

.field private loopTipsTv:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mArtist:Landroid/widget/TextView;

.field private mArtistNext:Landroid/widget/TextView;

.field private mAudioChannelData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioCoverContainer:Landroid/view/View;

.field private mAudioTimeCtrlIcon:Landroid/widget/ImageView;

.field private mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

.field private mAudioTimeCtrlText:Landroid/widget/TextView;

.field private mAudioTimeLeftText:Landroid/widget/TextView;

.field private mBtnChannel:Landroid/widget/ImageButton;

.field private mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private mCdCoverCenter:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private mCdCoverContainer:Landroid/view/View;

.field private mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private mCdCoverNextCenter:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private mCdCoverNextContainer:Landroid/view/View;

.field private mChannel:Ljava/lang/String;

.field private mChannelName:Landroid/widget/TextView;

.field private mChannelTitle:Ljava/lang/String;

.field private mContainer:Landroid/view/View;

.field private mCountDownSwitcher:Landroid/widget/TextSwitcher;

.field private mCoverAnimSet:Lcom/nineoldandroids/a/d;

.field private mCurrentTimeTv:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

.field mDragging:Z

.field private mDuration:I

.field private mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFromRoadMap:Z

.field private mGetTimeLimitInfo:Ljava/lang/Runnable;

.field private mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

.field private mHardwareAccelerated:Z

.field private mHasModel:Z

.field private mIsCourseFinished:Z

.field private mIsLoop:Z

.field private mLastHasNetWork:Z

.field private mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field private mLoveThisSong:Landroid/widget/ImageView;

.field private mLrcMaskBottom:Landroid/widget/FrameLayout;

.field private mLrcMaskTop:Landroid/widget/FrameLayout;

.field private mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

.field private mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

.field private mMoreToolsBottomCenterMark:Landroid/widget/ImageView;

.field private mMoreToolsBottomCenterText:Landroid/widget/TextView;

.field private mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

.field private mMoreToolsBottomLeftMark:Landroid/widget/ImageView;

.field private mMoreToolsBottomLeftText:Landroid/widget/TextView;

.field private mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

.field private mMoreToolsBottomRightMark:Landroid/widget/ImageView;

.field private mMoreToolsBottomRightText:Landroid/widget/TextView;

.field private mMoreToolsDlg:Landroid/app/Dialog;

.field private mNavMenu:Landroid/widget/TextView;

.field private mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

.field private mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

.field private mPrevButton:Landroid/widget/ImageButton;

.field mRid:Ljava/lang/String;

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShareThisSong:Landroid/widget/ImageView;

.field private mShowListTip:Landroid/widget/TextView;

.field private mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleContainer:Landroid/view/View;

.field private mTitleNext:Landroid/widget/TextView;

.field private mTotalTimeTv:Landroid/widget/TextView;

.field private m_end_time:J

.field private m_start_time:J

.field private moreToolsBtn:Landroid/widget/ImageView;

.field private progressBar:Landroid/view/View;

.field private progressContainer:Landroid/view/View;

.field run:Ljava/lang/Runnable;

.field screenWidth:I

.field searchFirstPos:I

.field searchKeyword:Ljava/lang/String;

.field searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation
.end field

.field private shareTipsTv:Landroid/widget/TextView;

.field private showMoreLyricsIv:Landroid/widget/ImageView;

.field private singleLoop:Z

.field private topContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->TAG:Ljava/lang/String;

    .line 124
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 141
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    iput-wide v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_start_time:J

    .line 181
    iput-wide v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_end_time:J

    .line 196
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isLyricsShowMore:Z

    .line 213
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    .line 220
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isNoneWifiState:Z

    .line 221
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    .line 232
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleChildrenLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isLyricsShowMore:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isLyricsShowMore:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->setHasClickedListTip()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateMoreToolsBtn()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentCounter:I

    return v0
.end method

.method static synthetic access$2002(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentCounter:I

    return p1
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    return v0
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->countDownRunnable:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateLyricMaskColor(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->checkNetworkAndChannelLogic()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateCurrentCover(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateNextCover(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/nineoldandroids/a/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsCourseFinished:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateAudioLimitTime()V

    return-void
.end method

.method static synthetic access$3700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mGetTimeLimitInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->setProgress(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isPaused:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleLyricFullScreen(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onPlayNext()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onPlayPrev()V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->checkNetworkWhileClickDownload()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 910
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$2;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 911
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 909
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 930
    return-void
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 2357
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 2358
    return-void
.end method

.method private changeBackGroundAnim(I)V
    .locals 2
    .param p1, "nextColor"    # I

    .prologue
    const/4 v1, 0x4

    .line 1369
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1375
    :cond_1
    return-void
.end method

.method private changeCoverImageAnimation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 1613
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 1615
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v8}, Lcom/nineoldandroids/a/d;->f()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1619
    :cond_0
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v8, 0x3f99999a    # 1.2f

    invoke-direct {v3, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 1621
    .local v3, "mOvershootInterpolator":Landroid/view/animation/OvershootInterpolator;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    invoke-direct {p0, v8, v3, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 1622
    .local v0, "cdCoverAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    invoke-direct {p0, v8, v3, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 1624
    .local v1, "cdCoverNextAnimator":Lcom/nineoldandroids/a/l;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1626
    .local v2, "mDecelerateInterpolator":Landroid/view/animation/DecelerateInterpolator;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v6

    .line 1627
    .local v6, "titleAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v7

    .line 1629
    .local v7, "titleNextAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtist:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v4

    .line 1630
    .local v4, "singerAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v5

    .line 1632
    .local v5, "singerNextAnimator":Lcom/nineoldandroids/a/l;
    new-instance v8, Lcom/nineoldandroids/a/d;

    invoke-direct {v8}, Lcom/nineoldandroids/a/d;-><init>()V

    iput-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    .line 1633
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    const/4 v9, 0x6

    new-array v9, v9, [Lcom/nineoldandroids/a/a;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v10, 0x4

    aput-object v6, v9, v10

    const/4 v10, 0x5

    aput-object v7, v9, v10

    invoke-virtual {v8, v9}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 1634
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v8}, Lcom/nineoldandroids/a/d;->a()V

    .line 1636
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->preloadCDCover(Ljava/lang/String;)V

    .line 1637
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    new-instance v9, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;

    invoke-direct {v9, p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    goto :goto_0
.end method

.method private changeVisibilityViaRid()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1063
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1067
    return-void

    .line 1063
    :cond_0
    const-string v0, "\u7535\u53f0"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1064
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1065
    goto :goto_2
.end method

.method private checkNetworkAndChannelLogic()Z
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    .line 619
    :goto_0
    return v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    const/4 v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    goto :goto_0
.end method

.method private checkNetworkWhileClickDownload()V
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    sget-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioResNoneWifiDownloadEnable:Z

    if-nez v1, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 475
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/c;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

    .line 477
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 478
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 505
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 499
    .restart local v0    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->clickDownloadThisSong()V

    goto :goto_0

    .line 502
    .end local v0    # "type":I
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->clickDownloadThisSong()V

    goto :goto_0
.end method

.method private createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "delayTime"    # J

    .prologue
    .line 1463
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1465
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v1, v2

    .line 1470
    .local v1, "endPos":I
    :goto_0
    const-string v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 1472
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 1473
    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 1500
    invoke-virtual {v0, p3, p4}, Lcom/nineoldandroids/a/l;->a(J)V

    .line 1501
    return-object v0

    .line 1468
    .end local v0    # "animator":Lcom/nineoldandroids/a/l;
    .end local v1    # "endPos":I
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    .restart local v1    # "endPos":I
    goto :goto_0
.end method

.method private createXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "delayTime"    # J

    .prologue
    .line 1513
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1514
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v1, v2

    .line 1518
    .local v1, "endPos":I
    :goto_0
    const-string v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 1520
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 1521
    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 1550
    invoke-virtual {v0, p3, p4}, Lcom/nineoldandroids/a/l;->a(J)V

    .line 1551
    return-object v0

    .line 1516
    .end local v0    # "animator":Lcom/nineoldandroids/a/l;
    .end local v1    # "endPos":I
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    .restart local v1    # "endPos":I
    goto :goto_0
.end method

.method private doLoveScaleAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 1034
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 1035
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1036
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1037
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1038
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1058
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1060
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 401
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .line 402
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;-><init>()V

    .line 405
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    :cond_0
    return-object v0
.end method

.method private initDialogs()V
    .locals 2

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/f;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    .line 847
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 879
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/b;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    .line 880
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 906
    return-void
.end method

.method private initTextSwitcher(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 820
    const v2, 0x7f0905d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    .line 821
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 822
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 835
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 837
    .local v0, "in":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 840
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 841
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 843
    .end local v0    # "in":Landroid/view/animation/Animation;
    .end local v1    # "out":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private initUI(Landroid/view/View;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1097
    const v1, 0x7f09036c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    .line 1098
    const v1, 0x7f090366

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    .line 1099
    const v1, 0x7f090372

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    .line 1101
    const v1, 0x7f090371

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightMark:Landroid/widget/ImageView;

    .line 1102
    const v1, 0x7f090365

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterMark:Landroid/widget/ImageView;

    .line 1103
    const v1, 0x7f09036b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftMark:Landroid/widget/ImageView;

    .line 1104
    const v1, 0x7f09036f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftText:Landroid/widget/TextView;

    .line 1105
    const v1, 0x7f090369

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    .line 1106
    const v1, 0x7f090375

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightText:Landroid/widget/TextView;

    .line 1107
    const v1, 0x7f0900b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->bottomContainer:Landroid/view/View;

    .line 1108
    const v1, 0x7f09059b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->topContainer:Landroid/view/View;

    .line 1109
    const v1, 0x7f09040c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->progressContainer:Landroid/view/View;

    .line 1111
    const v1, 0x7f09032a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 1112
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1113
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1114
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1116
    const v1, 0x7f090189

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    .line 1117
    const v1, 0x7f0905b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTotalTimeTv:Landroid/widget/TextView;

    .line 1118
    const v1, 0x7f09006f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    .line 1122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    const v1, 0x7f09006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    .line 1124
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    const v1, 0x7f090072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    .line 1126
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    const v1, 0x7f090306

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    .line 1128
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    const v1, 0x7f090383

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNavMenu:Landroid/widget/TextView;

    .line 1130
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNavMenu:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    const v1, 0x7f090409

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->progressBar:Landroid/view/View;

    .line 1135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->progressBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    const v1, 0x7f090364

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->moreToolsBtn:Landroid/widget/ImageView;

    .line 1137
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->moreToolsBtn:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    const v1, 0x7f090130

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    .line 1139
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1201
    const v1, 0x7f09011c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    .line 1203
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeVisibilityViaRid()V

    .line 1207
    const v1, 0x7f090079

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1208
    .local v0, "btn":Landroid/widget/ImageButton;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_0

    .line 1209
    const v1, 0x7f0802d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1212
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    const v1, 0x7f090309

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    .line 1218
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    .line 1220
    const v1, 0x7f090308

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    .line 1221
    const v1, 0x7f090307

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    .line 1222
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1223
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1225
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1245
    const v1, 0x7f090148

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    .line 1246
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    const v1, 0x7f09006d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mContainer:Landroid/view/View;

    .line 1249
    const v1, 0x7f09058b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleContainer:Landroid/view/View;

    .line 1250
    const v1, 0x7f090065

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioCoverContainer:Landroid/view/View;

    .line 1251
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHardwareAccelerated:Z

    if-eqz v1, :cond_1

    .line 1253
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioCoverContainer:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1256
    :cond_1
    const v1, 0x7f09050d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    .line 1257
    const v1, 0x7f09050e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    .line 1259
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    iget v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v6, v6

    invoke-direct {p0, v1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    .line 1261
    const v1, 0x7f0904fd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtist:Landroid/widget/TextView;

    .line 1262
    const v1, 0x7f0904fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    .line 1263
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    iget v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v6, v6

    invoke-direct {p0, v1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    .line 1265
    const v1, 0x7f090066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1266
    const v1, 0x7f090067

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverCenter:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1268
    const v1, 0x7f090068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1269
    const v1, 0x7f090069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextCenter:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1272
    const v1, 0x7f090182

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    .line 1274
    const v1, 0x7f090184

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    .line 1276
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    iget v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v6, v6

    invoke-direct {p0, v1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    .line 1279
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNavMenu:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1281
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->moreToolsBtn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1282
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v5, :cond_5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1290
    const v1, 0x7f0904fc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    .line 1291
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$6;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$6;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1297
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v1, :cond_7

    .line 1298
    const-string v1, "AUDIO_LIST_TIPS_CLICK_FLAG"

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    .line 1299
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    if-nez v4, :cond_6

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    :goto_5
    return-void

    :cond_2
    move v1, v3

    .line 1279
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1280
    goto :goto_1

    :cond_4
    move v1, v3

    .line 1281
    goto :goto_2

    :cond_5
    move v4, v3

    .line 1282
    goto :goto_3

    :cond_6
    move v3, v2

    .line 1299
    goto :goto_4

    .line 1301
    :cond_7
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private isCurrentViewVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1448
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1449
    const/4 v0, 0x1

    .line 1451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPlayNext()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 555
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->checkNetworkAndChannelLogic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 562
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 563
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext()V

    goto :goto_0
.end method

.method private onPlayPrev()V
    .locals 2

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->checkNetworkAndChannelLogic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playPrev()V

    goto :goto_0
.end method

.method private pauseAudioPlay()V
    .locals 2

    .prologue
    .line 2041
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 2046
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 2047
    return-void

    .line 2042
    :catch_0
    move-exception v0

    .line 2043
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private preloadCDCover(Ljava/lang/String;)V
    .locals 4
    .param p1, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1396
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1397
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1396
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1402
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1403
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1404
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1403
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1406
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1409
    :cond_3
    return-void
.end method

.method private requestChannel()V
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioChannel()V

    .line 455
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioFav()V

    .line 456
    return-void
.end method

.method private requestChannelWhileGainNetworkConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->requestChannel()V

    .line 450
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 451
    return-void
.end method

.method private resetCoverImageRotation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setRotation(F)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setRotation(F)V

    .line 754
    :cond_1
    return-void
.end method

.method private rotateCoverImageAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/l;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1778
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v4

    const/4 v5, 0x0

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 1779
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v3

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 1778
    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 1780
    .local v0, "animateRotation":Lcom/nineoldandroids/a/l;
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 1781
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 1782
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 1783
    invoke-virtual {v0, v6}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 1785
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 1786
    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$10;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$10;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 1807
    return-object v0
.end method

.method private setHasClickedListTip()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1306
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    if-nez v0, :cond_0

    .line 1307
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    .line 1308
    const-string v0, "AUDIO_LIST_TIPS_CLICK_FLAG"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 1309
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    :cond_0
    return-void
.end method

.method private setProgress(II)V
    .locals 6
    .param p1, "curPos"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2581
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDragging:Z

    if-nez v2, :cond_1

    .line 2583
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 2584
    if-lez p2, :cond_0

    .line 2585
    const-wide/16 v2, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v2, v4

    int-to-long v4, p2

    div-long v0, v2, v4

    .line 2587
    .local v0, "pos":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2588
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2592
    .end local v0    # "pos":J
    :cond_0
    iput p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDuration:I

    .line 2594
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTotalTimeTv:Landroid/widget/TextView;

    int-to-long v4, p2

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2595
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2597
    :cond_1
    return-void
.end method

.method private showDeleteOfflineDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2228
    new-instance v1, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1000b4

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2229
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2230
    const v4, 0x7f0b0091

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2232
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 2233
    .local v3, "width":I
    const/4 v2, -0x2

    .line 2234
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 2235
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2236
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2238
    const v4, 0x7f09004c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2239
    .local v0, "alertText":Landroid/widget/TextView;
    const-string v4, "\u786e\u5b9a\u5c06\u6b64\u6b4c\u66f2\u4ece\u79bb\u7ebf\u6b4c\u5355\u4e2d\u5220\u9664\uff1f"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2240
    const v4, 0x7f0900fa

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$18;

    invoke-direct {v5, p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$18;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2246
    const v4, 0x7f090156

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;

    invoke-direct {v5, p0, v1, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2258
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2262
    :goto_0
    return-void

    .line 2259
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOfflineAlertDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1855
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    if-nez v3, :cond_1

    .line 1856
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1000b4

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    .line 1863
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1864
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b014e

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1865
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1866
    const v3, 0x7f090156

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$14;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$14;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1873
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x5

    .line 1874
    .local v2, "width":I
    const/4 v0, -0x2

    .line 1875
    .local v0, "height":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1876
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1877
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1879
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    :goto_1
    return-void

    .line 1858
    .end local v0    # "height":I
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "width":I
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1859
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1880
    .restart local v0    # "height":I
    .restart local v1    # "view":Landroid/view/View;
    .restart local v2    # "width":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 19
    .param p1, "mCurrentPlayItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 414
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    move-result-object v1

    .line 415
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    move-object/from16 v18, v0

    .line 416
    .local v18, "meta":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6211\u548c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u542c\u4e86\u300c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\u300d\u6b4c\u66f2!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "shareTitle":Ljava/lang/String;
    const-string v4, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 418
    .local v4, "content":Ljava/lang/String;
    const-string v2, "Listen View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setEventName(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "0"

    const/4 v12, 0x0

    const v13, 0x7f080375

    const v14, 0x7f0f0074

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0f0048

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x3f3ae148    # 0.73f

    invoke-virtual/range {v1 .. v16}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ILjava/lang/String;Ljava/lang/String;F)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    .line 420
    const-string v2, "listen"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setSource(Ljava/lang/String;)V

    .line 421
    const v2, 0x7f0801ed

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setTopIconRes(I)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f0048

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setShareText(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    .end local v3    # "shareTitle":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v18    # "meta":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v17

    .line 426
    .local v17, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showSingleLoopDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1822
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1000b4

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1823
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1824
    const v3, 0x7f0b0188

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1826
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 1827
    .local v2, "width":I
    const/4 v1, -0x2

    .line 1828
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1829
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1830
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1832
    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$11;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$11;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1839
    const v3, 0x7f0900fa

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1848
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    :goto_0
    return-void

    .line 1849
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private startCoverAnimation()V
    .locals 1

    .prologue
    .line 1768
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 1769
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->rotateCoverImageAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    .line 1771
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->rotateCoverImageAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    .line 1773
    return-void
.end method

.method private stopCoverRotation()V
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 1819
    :cond_1
    return-void
.end method

.method private toggleChildrenLock()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1070
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    .line 1072
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->bottomContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->topContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1075
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTotalTimeTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentLrcMode:I

    packed-switch v0, :pswitch_data_0

    .line 1087
    :goto_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v3, :cond_a

    :cond_0
    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    return-void

    :cond_1
    move v0, v1

    .line 1070
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1072
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1073
    goto :goto_2

    :cond_4
    move v0, v1

    .line 1074
    goto :goto_3

    :cond_5
    move v0, v1

    .line 1075
    goto :goto_4

    :cond_6
    move v0, v1

    .line 1076
    goto :goto_5

    .line 1080
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_a

    .line 1083
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_8
    move v0, v1

    .line 1087
    goto :goto_7

    :cond_9
    move v0, v2

    .line 1089
    goto :goto_8

    .line 1091
    :cond_a
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    if-nez v3, :cond_0

    move v2, v1

    goto :goto_9

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private toggleLyricFullScreen(Z)V
    .locals 7
    .param p1, "isLyricsShowMore"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x2

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 525
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentLrcMode:I

    packed-switch v1, :pswitch_data_0

    .line 536
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioCoverContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 539
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 540
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 542
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    if-eqz p1, :cond_4

    .line 543
    const v1, 0x7f09059b

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 544
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 550
    :goto_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->d()V

    .line 552
    return-void

    .line 527
    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_0

    .line 530
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_0

    .line 533
    :pswitch_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_4

    :cond_2
    move v1, v2

    .line 536
    goto :goto_1

    :cond_3
    move v3, v2

    .line 537
    goto :goto_2

    .line 546
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const v1, 0x7f090065

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 547
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 548
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAudioLimitTime()V
    .locals 11

    .prologue
    const v3, 0x7f0f0045

    const/4 v10, 0x0

    .line 2532
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v0

    .line 2533
    .local v0, "control":Lcom/jiliguala/niuwa/logic/r/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/a;->g()I

    move-result v1

    .line 2534
    .local v1, "remainSeconds":I
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2535
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2541
    if-lez v1, :cond_1

    .line 2542
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    const v3, 0x7f0f0044

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/a;->g()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2555
    :cond_0
    :goto_0
    return-void

    .line 2544
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2548
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 2549
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2551
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    if-eqz v2, :cond_0

    .line 2552
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v2, v10}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateCurrentCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1413
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1415
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1416
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1415
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1417
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1427
    :cond_1
    :goto_0
    return-void

    .line 1420
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1421
    :cond_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1422
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1421
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1424
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateDownloadBtnStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2410
    packed-switch p1, :pswitch_data_0

    .line 2424
    :goto_0
    :pswitch_0
    return-void

    .line 2412
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2415
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateLyricMaskColor(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "reverse"    # Z

    .prologue
    .line 1315
    invoke-static {p2, p3}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->makeLinearGradient(IZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1316
    .local v0, "radialTint":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/module/story/helpers/CompatibilityHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1317
    return-void
.end method

.method private updateMoreToolsBtn()V
    .locals 7

    .prologue
    const v6, 0x7f080204

    const v5, 0x7f0801b7

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1698
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v1

    .line 1699
    .local v1, "audioTimerController":Lcom/jiliguala/niuwa/logic/r/a;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/a;->h()Z

    move-result v0

    .line 1700
    .local v0, "audioTimeLimitOn":Z
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v2, :cond_2

    .line 1704
    if-eqz v0, :cond_1

    .line 1708
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1709
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1710
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1712
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1713
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1715
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1716
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1717
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1751
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v2, :cond_4

    const v2, 0x7f080118

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1753
    :cond_0
    return-void

    .line 1722
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1723
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1724
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1726
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1728
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1730
    :cond_2
    if-eqz v0, :cond_3

    .line 1734
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1735
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1736
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1738
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1740
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1741
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1746
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1747
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1748
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1751
    :cond_4
    const v2, 0x7f080117

    goto :goto_1
.end method

.method private updateNextCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1433
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1434
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1433
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1435
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1445
    :cond_1
    :goto_0
    return-void

    .line 1438
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1440
    :cond_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1441
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1440
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1442
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateNextTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "titleStr"    # Ljava/lang/String;
    .param p2, "artistStr"    # Ljava/lang/String;

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtist:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtist:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1388
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    :cond_3
    return-void
.end method

.method private updatePlayButton(Z)V
    .locals 2
    .param p1, "isPaused"    # Z

    .prologue
    .line 1321
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isPaused:Z

    .line 1322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const v0, 0x7f080120

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f08011e

    goto :goto_1
.end method

.method private updateView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1555
    if-nez p1, :cond_0

    .line 1580
    :goto_0
    return-void

    .line 1559
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1560
    .local v2, "x":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1561
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 1562
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    .line 1563
    .local v0, "left":I
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    mul-int/lit8 v1, v3, 0x2

    .line 1578
    .local v1, "right":I
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    goto :goto_0

    .line 1565
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1566
    .restart local v0    # "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v1, v0, v3

    .restart local v1    # "right":I
    goto :goto_1

    .line 1569
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_2
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    .line 1570
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v0, v3

    .line 1571
    .restart local v0    # "left":I
    const/4 v1, 0x0

    .restart local v1    # "right":I
    goto :goto_1

    .line 1573
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1574
    .restart local v0    # "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v1, v0, v3

    .restart local v1    # "right":I
    goto :goto_1
.end method

.method private updateViewPos(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1584
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    .line 1585
    invoke-virtual {p1, p3}, Landroid/view/View;->setRight(I)V

    .line 1586
    int-to-float v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    .line 1588
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1590
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    if-ne p2, v1, :cond_0

    .line 1591
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int p3, v1

    .line 1593
    :cond_0
    if-nez p2, :cond_1

    .line 1594
    const/4 p3, 0x0

    .line 1596
    :cond_1
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v1, v1

    if-ne p2, v1, :cond_2

    .line 1597
    iget p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    .line 1600
    :cond_2
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1601
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1602
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1604
    return-void
.end method


# virtual methods
.method public changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "singleRes"    # Z

    .prologue
    const/4 v2, 0x0

    .line 683
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 684
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 685
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setRid(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 690
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 692
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 693
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleLyricFullScreen(Z)V

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeVisibilityViaRid()V

    .line 697
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 698
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 699
    return-void
.end method

.method public dismissLoadingProgress()V
    .locals 2

    .prologue
    const/16 v1, 0x1002

    .line 2269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->removeMessages(I)V

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->sendEmptyMessage(I)Z

    .line 2273
    return-void
.end method

.method public doShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;
    .param p3, "art"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 2203
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 2204
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 2205
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2206
    :cond_0
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2207
    const-string v1, "listen"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 2210
    :cond_1
    return-void
.end method

.method public enableButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1667
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1668
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1669
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1671
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1672
    return-void
.end method

.method public getAudioChannelData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioChannelData:Ljava/util/ArrayList;

    return-object v0
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
    .line 2406
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    return-object v0
.end method

.method public getSearchFirstPos()I
    .locals 1

    .prologue
    .line 2401
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    return v0
.end method

.method public getSearchKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getThisFragmentManager()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method

.method public gotoChannelSelect(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgClr"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "channel"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v1, "title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v1, "bg_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->showChannel(Landroid/os/Bundle;)V

    .line 711
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public isChildrenLock()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    return v0
.end method

.method public isCourseFinished()Z
    .locals 1

    .prologue
    .line 2311
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsCourseFinished:Z

    return v0
.end method

.method public isFromPractise()Z
    .locals 1

    .prologue
    .line 2362
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    return v0
.end method

.method public isFromRoadMap()Z
    .locals 1

    .prologue
    .line 2391
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mFromRoadMap:Z

    return v0
.end method

.method public isNotModelLesson()Z
    .locals 1

    .prologue
    .line 2643
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHasModel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartOfSong()Z
    .locals 1

    .prologue
    .line 2600
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDuration:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchOfflineMode()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1893
    const-string v1, "-1"

    const-string v2, ""

    const-string v3, "\u5df2\u4e0b\u8f7d"

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1894
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 636
    packed-switch p1, :pswitch_data_0

    .line 673
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 676
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeVisibilityViaRid()V

    .line 677
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 678
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 679
    :cond_1
    return-void

    .line 638
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 639
    if-eqz p3, :cond_1

    .line 642
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    .line 643
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    .line 644
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    .line 646
    const-string v1, "KEY_SEARCH_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "_id":Ljava/lang/String;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 648
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1, v0, v3, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 650
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 652
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 653
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleLyricFullScreen(Z)V

    .line 660
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onBackPressed(Z)V

    goto :goto_0

    .line 663
    .end local v0    # "_id":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_0

    .line 664
    if-eqz p3, :cond_1

    .line 667
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    .line 668
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    .line 669
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    goto :goto_0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onAlreadySwitchToFirst()V
    .locals 1

    .prologue
    .line 1980
    const-string v0, "\u5df2\u662f\u7b2c\u4e00\u9996"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1981
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 1982
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 758
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/app/Activity;)V

    .line 759
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    .line 760
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 761
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 731
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->stopPlay()V

    .line 732
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendPlayerExit()V

    .line 738
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/r/a;->a(Z)V

    .line 739
    return-void
.end method

.method public onChildGained()V
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 2225
    return-void
.end method

.method public onClickFavThisSong()V
    .locals 2

    .prologue
    .line 2178
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Fav Audio"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 2179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->doLoveScaleAnimation(Landroid/view/View;)V

    .line 2180
    const-string v0, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2181
    return-void
.end method

.method public onClickUnFavThisSong(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->confirmUnFavThisSong(Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2188
    const-string v0, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2189
    return-void
.end method

.method public onConnectionLost()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 468
    const v0, 0x7f0f0144

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 469
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 778
    const/4 v0, 0x5

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->TAG:Ljava/lang/String;

    const-string v2, "[onCreate]"

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
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
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 942
    new-instance v6, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v6, v8, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .line 943
    new-instance v6, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    .line 944
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v6

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 945
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->registerWatcher()V

    .line 947
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initDialogs()V

    .line 949
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->addEventObserver()V

    .line 951
    if-eqz p3, :cond_0

    .line 952
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v6, p3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 955
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 956
    .local v4, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 957
    .local v3, "extra":Z
    if-eqz v4, :cond_3

    .line 958
    const-string v6, "rid"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 959
    const-string v6, "channel"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 960
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 962
    const-string v6, "18"

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 964
    :cond_1
    const-string v6, "extra"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 966
    const-string v6, "channel_nm"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 967
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "The Kibommers"

    :goto_0
    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 968
    const-string v6, "from_practise"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    .line 969
    const-string v6, "has_model"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHasModel:Z

    .line 970
    const-string v6, "is_loop"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsLoop:Z

    .line 971
    const-string v6, "roadmap_listen"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mFromRoadMap:Z

    .line 972
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsCourseFinished:Z

    .line 973
    const-string v6, "PARAM_COURSE_TICKET"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 974
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v6, :cond_2

    .line 975
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 977
    :cond_2
    const-string v6, "hardwareAccelerated"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHardwareAccelerated:Z

    .line 980
    :cond_3
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v6, :cond_4

    .line 981
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 982
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "Channel"

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Listen View"

    invoke-virtual {v6, v7, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 987
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromRoadMap()Z

    move-result v6

    if-nez v6, :cond_6

    .line 988
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/g/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "chnId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 991
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 992
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 994
    :cond_5
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/g/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "chnName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 997
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 1002
    .end local v0    # "chnId":Ljava/lang/String;
    .end local v1    # "chnName":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setRid(Ljava/lang/String;)V

    .line 1003
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioChannel()V

    .line 1005
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioFav()V

    .line 1007
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->registerMediaPlayService()V

    .line 1010
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->changeOfflineStatus()V

    .line 1012
    const v6, 0x7f0b005f

    invoke-virtual {p1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1013
    .local v2, "content":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initUI(Landroid/view/View;)V

    .line 1014
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initTextSwitcher(Landroid/view/View;)V

    .line 1015
    new-instance v6, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->countDownRunnable:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    .line 1017
    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateBackGround(Ljava/lang/String;)V

    .line 1018
    new-instance v6, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mGetTimeLimitInfo:Ljava/lang/Runnable;

    .line 1020
    return-object v2

    .line 967
    .end local v2    # "content":Landroid/view/View;
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move v6, v7

    .line 972
    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1331
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 1333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->d()V

    .line 1336
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 1337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unRegisterService()V

    .line 1338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unRegisterAll()V

    .line 1339
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->e()V

    .line 1340
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 1352
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroyView()V

    .line 1354
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 769
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 771
    return-void
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 2213
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 2220
    :cond_0
    :goto_0
    return-void

    .line 2216
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showAddBabyPage()V

    goto :goto_0
.end method

.method public onLyricLoadComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2099
    .local p1, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->post(Ljava/lang/Runnable;)Z

    .line 2141
    return-void
.end method

.method public onLyricLoadFailed()V
    .locals 2

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->post(Ljava/lang/Runnable;)Z

    .line 2174
    return-void
.end method

.method public onLyricTxtLoadComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2145
    .local p1, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->post(Ljava/lang/Runnable;)Z

    .line 2155
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 1

    .prologue
    .line 2094
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2095
    return-void
.end method

.method public onNoneWifiConnection()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isNoneWifiState:Z

    .line 461
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 462
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->requestChannelWhileGainNetworkConnection()V

    .line 463
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 811
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 812
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->releasePowerLock()V

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_end_time:J

    .line 814
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_end_time:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_start_time:J

    sub-long v0, v2, v4

    .line 815
    .local v0, "total":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "Listen View"

    const/4 v4, 0x0

    long-to-int v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 816
    return-void
.end method

.method public onPlayComplete()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2059
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2060
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Listen"

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 2061
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v3, :cond_0

    .line 2062
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    :goto_0
    return v1

    .line 2065
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 2070
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2071
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHasModel:Z

    if-eqz v3, :cond_2

    .line 2072
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    if-eqz v3, :cond_2

    .line 2073
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsLoop:Z

    if-nez v3, :cond_1

    .line 2074
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    .line 2075
    .local v0, "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->performExit()V

    goto :goto_0

    .end local v0    # "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    :cond_1
    move v1, v2

    .line 2078
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2081
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2083
    goto :goto_0
.end method

.method public onPlayError()Z
    .locals 1

    .prologue
    .line 2089
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 2003
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 2004
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 2005
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateMoreToolsBtn()V

    .line 2006
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateAudioLimitTime()V

    .line 2007
    return-void
.end method

.method public onPlayPrepared(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 2011
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startCoverAnimation()V

    .line 2024
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v1, :cond_0

    .line 2028
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v0

    .line 2029
    .local v0, "audioTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/r/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2033
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v2, 0x1004

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->sendEmptyMessage(I)Z

    .line 2036
    .end local v0    # "audioTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/a;
    :cond_0
    return-void
.end method

.method public onPlayResume()V
    .locals 1

    .prologue
    .line 1997
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 1998
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startCoverAnimation()V

    .line 1999
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 2568
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDuration:I

    mul-int/2addr v3, p2

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    .line 2569
    .local v0, "new_pos":J
    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 2573
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 2574
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2575
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    if-eqz v3, :cond_1

    .line 2576
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onProgressChangedUpdateLyric(I)V

    .line 2578
    :cond_1
    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 3
    .param p1, "currentPosition"    # J
    .param p3, "duration"    # J

    .prologue
    .line 2051
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2052
    .local v0, "msg":Landroid/os/Message;
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2053
    long-to-int v1, p3

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2054
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2055
    return-void
.end method

.method public onResetLyricView()V
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 2283
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 789
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 791
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    .line 792
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->acquirePowerLock()V

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_start_time:J

    .line 795
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 801
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 802
    return-void

    .line 798
    :cond_1
    const-string v0, "\u7535\u53f0"

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2159
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2160
    const/4 v0, 0x5

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->TAG:Ljava/lang/String;

    const-string v2, "[onSaveInstanceState]"

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2162
    return-void
.end method

.method public onSearchAction(Ljava/lang/String;)V
    .locals 6
    .param p1, "bgClr"    # Ljava/lang/String;

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/search/model/SearchModel;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    iget v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/search/model/SearchModel;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->makeAudioSearchIntent(Landroid/content/Context;Lcom/jiliguala/niuwa/module/search/model/SearchModel;)Landroid/content/Intent;

    move-result-object v0

    .line 717
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x1001

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 718
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 720
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDragging:Z

    .line 2612
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2616
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2626
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 2627
    .local v0, "pos":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDuration:I

    mul-int/2addr v2, v0

    div-int/lit16 v1, v2, 0x3e8

    .line 2629
    .local v1, "realAudioPos":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->seekTo(I)V

    .line 2631
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDragging:Z

    .line 2632
    return-void
.end method

.method public onSubCourseReportFailed()V
    .locals 1

    .prologue
    .line 2350
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->cancelSubCourse()V

    .line 2352
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 2354
    :cond_0
    return-void
.end method

.method public onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2346
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 1025
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1031
    return-void
.end method

.method public onWifiConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 436
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->requestChannel()V

    .line 437
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    if-nez v0, :cond_0

    .line 439
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isNoneWifiState:Z

    .line 440
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 442
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->isCurPLayModeOffline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 446
    :cond_0
    return-void
.end method

.method public pausePlay()V
    .locals 1

    .prologue
    .line 2635
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V

    .line 2636
    return-void
.end method

.method public pausePlayOnChannelShow()V
    .locals 0

    .prologue
    .line 2373
    return-void
.end method

.method protected registerWatcher()V
    .locals 2

    .prologue
    .line 933
    new-instance v0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    .line 934
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;)V

    .line 935
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->c()V

    .line 936
    return-void
.end method

.method public reportStationListViewAmplitude()V
    .locals 2

    .prologue
    .line 409
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Station List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public reportSubLessonExit()V
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->sendCourseTaskExitReport()V

    .line 745
    :cond_0
    return-void
.end method

.method public resumePlay()V
    .locals 1

    .prologue
    .line 2639
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resumePlay()V

    .line 2640
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 508
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 510
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v1, "Step"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v1, "Time"

    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/i/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 517
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public show3GNetStateDialog()V
    .locals 2

    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1915
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 1919
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->pauseAudioPlay()V

    .line 1921
    :cond_1
    return-void
.end method

.method public showAddBabyPage()V
    .locals 4

    .prologue
    .line 1762
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1763
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startActivity(Landroid/content/Intent;)V

    .line 1764
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1765
    return-void
.end method

.method public showChangeToOfflineDialog()V
    .locals 2

    .prologue
    .line 1899
    sget-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    if-nez v0, :cond_2

    .line 1900
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1904
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 1907
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->pauseAudioPlay()V

    .line 1909
    :cond_2
    return-void
.end method

.method public showDownloadDeleteDialog(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1757
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showDeleteOfflineDialog(Ljava/lang/String;)V

    .line 1758
    return-void
.end method

.method public showLoadingProgress()V
    .locals 4

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v1, 0x1002

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->sendEmptyMessageDelayed(IJ)Z

    .line 2266
    return-void
.end method

.method public showLoginPage()V
    .locals 2

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1680
    const v1, 0x7f0f00cb

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1681
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1682
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startActivity(Landroid/content/Intent;)V

    .line 1684
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public showMoreToolsDlg()V
    .locals 4

    .prologue
    const v2, 0x7f1000b3

    const/4 v3, 0x1

    .line 2427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 2428
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    .line 2430
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2433
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2434
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 2435
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2436
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 2438
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 2439
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2440
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2442
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2443
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f090301

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    .line 2444
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_3

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2445
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2446
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v0, :cond_4

    const v0, 0x7f080118

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2447
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f090302

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopTipsTv:Landroid/widget/TextView;

    .line 2448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2449
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopTipsTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0f01be

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2451
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0903a4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    .line 2452
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_6

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2453
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2454
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentDownloadStatus:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateDownloadBtnStatus(I)V

    .line 2455
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadTipsTv:Landroid/widget/TextView;

    .line 2456
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2457
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadTipsTv:Landroid/widget/TextView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentDownloadStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    const v0, 0x7f0f00c1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2460
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    .line 2461
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_8

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2462
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2463
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenTipsTv:Landroid/widget/TextView;

    .line 2464
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2466
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0904e2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShareThisSong:Landroid/widget/ImageView;

    .line 2467
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShareThisSong:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_9

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2468
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShareThisSong:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2469
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0904d9

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->shareTipsTv:Landroid/widget/TextView;

    .line 2470
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->shareTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2472
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlIcon:Landroid/widget/ImageView;

    .line 2473
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    .line 2474
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    .line 2475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 2476
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_a

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2477
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/a;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2478
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_b

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2479
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/a;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 2480
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2511
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2512
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2513
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateAudioLimitTime()V

    .line 2514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mGetTimeLimitInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->post(Ljava/lang/Runnable;)Z

    .line 2515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$22;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$22;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2522
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2526
    :goto_a
    return-void

    .line 2442
    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 2444
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_1

    .line 2446
    :cond_4
    const v0, 0x7f080117

    goto/16 :goto_2

    .line 2449
    :cond_5
    const v0, 0x7f0f003d

    goto/16 :goto_3

    .line 2452
    :cond_6
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_4

    .line 2457
    :cond_7
    const v0, 0x7f0f00c2

    goto/16 :goto_5

    .line 2461
    :cond_8
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_6

    .line 2467
    :cond_9
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_7

    .line 2476
    :cond_a
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_8

    .line 2478
    :cond_b
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto :goto_9

    .line 2523
    :catch_0
    move-exception v0

    goto :goto_a
.end method

.method public showOfflineListEmtpyWarning()V
    .locals 1

    .prologue
    .line 1986
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showOfflineAlertDialog()V

    .line 1987
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 1988
    return-void
.end method

.method public showPopFragment(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 0
    .param p1, "mCurrentPlayItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 2367
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 2368
    return-void
.end method

.method public showUnFavDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 579
    new-instance v1, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1000b4

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 580
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 581
    const v4, 0x7f0b0194

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 583
    const v4, 0x7f09004c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 584
    .local v0, "alertText":Landroid/widget/TextView;
    const-string v4, "\u662f\u5426\u53d6\u6d88\u7ea2\u5fc3\u8be5\u6b4c\u66f2?"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 586
    .local v3, "width":I
    const/4 v2, -0x2

    .line 587
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 588
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 589
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 591
    const v4, 0x7f0900fa

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$24;

    invoke-direct {v5, p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$24;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    const v4, 0x7f090156

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;

    invoke-direct {v5, p0, v1, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public switchOnPlayListEmpty()V
    .locals 1

    .prologue
    .line 1992
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 1993
    return-void
.end method

.method public updateAudioChannelData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2381
    .local p1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioChannelData:Ljava/util/ArrayList;

    .line 2383
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2384
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    if-eqz v1, :cond_0

    .line 2385
    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->refreshList(Ljava/util/ArrayList;)V

    .line 2387
    :cond_0
    return-void
.end method

.method public updateBackGround(Ljava/lang/String;)V
    .locals 7
    .param p1, "nextColorStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1933
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1934
    .local v2, "nextColor":I
    iput v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    .line 1947
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeBackGroundAnim(I)V

    .line 1950
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1951
    .local v1, "drs":[Landroid/graphics/drawable/Drawable;
    aget-object v0, v1, v5

    .line 1952
    .local v0, "drLeft":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1953
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1954
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1955
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1956
    return-void
.end method

.method public updateCdCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1972
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->resetCoverImageRotation()V

    .line 1973
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeCoverImageAnimation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    return-void
.end method

.method public updateChannelName(Ljava/lang/String;)V
    .locals 1
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    :cond_0
    return-void
.end method

.method public updateDownloadIcon(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 2198
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentDownloadStatus:I

    .line 2199
    return-void
.end method

.method public updateFavIcon(Z)V
    .locals 2
    .param p1, "isFav"    # Z

    .prologue
    .line 2193
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v0, 0x7f080125

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2194
    return-void

    .line 2193
    :cond_0
    const v0, 0x7f080112

    goto :goto_0
.end method

.method public updateLoopBtn(Z)V
    .locals 1
    .param p1, "singleLoop"    # Z

    .prologue
    .line 1687
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    .line 1688
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateMoreToolsBtn()V

    .line 1689
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1692
    :cond_0
    return-void
.end method

.method public updateLyricView(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/4 v1, 0x0

    .line 2277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(IZZ)V

    .line 2278
    return-void
.end method

.method public updateMoreLyricBtn(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2287
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isLyricsShowMore:Z

    .line 2290
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isLyricsShowMore:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080113

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2291
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleLyricFullScreen(Z)V

    .line 2293
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentLrcMode:I

    .line 2294
    packed-switch p1, :pswitch_data_0

    .line 2308
    :goto_1
    return-void

    .line 2290
    :cond_1
    const v0, 0x7f080119

    goto :goto_0

    .line 2296
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2297
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2296
    goto :goto_2

    .line 2300
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 2300
    goto :goto_3

    .line 2304
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2305
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_1

    .line 2294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 726
    return-void
.end method

.method public updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nextTitle"    # Ljava/lang/String;
    .param p2, "nextArtist"    # Ljava/lang/String;

    .prologue
    .line 1961
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateNextTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    return-void
.end method
