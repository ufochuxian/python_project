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
    .line 904
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 905
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$2;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 906
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 904
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 925
    return-void
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 2344
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 2345
    return-void
.end method

.method private changeBackGroundAnim(I)V
    .locals 2
    .param p1, "nextColor"    # I

    .prologue
    const/4 v1, 0x4

    .line 1356
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1362
    :cond_1
    return-void
.end method

.method private changeCoverImageAnimation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 1600
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 1602
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v8}, Lcom/nineoldandroids/a/d;->f()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1649
    :goto_0
    return-void

    .line 1606
    :cond_0
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v8, 0x3f99999a    # 1.2f

    invoke-direct {v3, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 1608
    .local v3, "mOvershootInterpolator":Landroid/view/animation/OvershootInterpolator;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    invoke-direct {p0, v8, v3, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 1609
    .local v0, "cdCoverAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    invoke-direct {p0, v8, v3, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 1611
    .local v1, "cdCoverNextAnimator":Lcom/nineoldandroids/a/l;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1613
    .local v2, "mDecelerateInterpolator":Landroid/view/animation/DecelerateInterpolator;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v6

    .line 1614
    .local v6, "titleAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v7

    .line 1616
    .local v7, "titleNextAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtist:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v4

    .line 1617
    .local v4, "singerAnimator":Lcom/nineoldandroids/a/l;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2, v10, v11}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;

    move-result-object v5

    .line 1619
    .local v5, "singerNextAnimator":Lcom/nineoldandroids/a/l;
    new-instance v8, Lcom/nineoldandroids/a/d;

    invoke-direct {v8}, Lcom/nineoldandroids/a/d;-><init>()V

    iput-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    .line 1620
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

    .line 1621
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCoverAnimSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v8}, Lcom/nineoldandroids/a/d;->a()V

    .line 1623
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->preloadCDCover(Ljava/lang/String;)V

    .line 1624
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

    .line 1054
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1058
    return-void

    .line 1054
    :cond_0
    const-string v0, "\u7535\u53f0"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1055
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1056
    goto :goto_2
.end method

.method private checkNetworkAndChannelLogic()Z
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    .line 615
    :goto_0
    return v0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    const/4 v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    goto :goto_0
.end method

.method private checkNetworkWhileClickDownload()V
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    sget-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioResNoneWifiDownloadEnable:Z

    if-nez v1, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 471
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/c;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

    .line 473
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 474
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDownloadNetworkNotifyDlg:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 501
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 495
    .restart local v0    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->clickDownloadThisSong()V

    goto :goto_0

    .line 498
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
    .line 1450
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v1, v2

    .line 1457
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

    .line 1459
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 1460
    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 1487
    invoke-virtual {v0, p3, p4}, Lcom/nineoldandroids/a/l;->a(J)V

    .line 1488
    return-object v0

    .line 1455
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
    .line 1500
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1501
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v1, v2

    .line 1505
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

    .line 1507
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 1508
    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 1537
    invoke-virtual {v0, p3, p4}, Lcom/nineoldandroids/a/l;->a(J)V

    .line 1538
    return-object v0

    .line 1503
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

    .line 1025
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 1026
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1027
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1028
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1029
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1049
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1051
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 400
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .line 401
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;-><init>()V

    .line 404
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    :cond_0
    return-object v0
.end method

.method private initDialogs()V
    .locals 2

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/f;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    .line 842
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 874
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/b;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    .line 875
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 901
    return-void
.end method

.method private initTextSwitcher(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 815
    const v2, 0x7f0905cc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    .line 816
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 817
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 830
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 832
    .local v0, "in":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 835
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 836
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCountDownSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 838
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

    .line 1084
    const v1, 0x7f090365

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    .line 1085
    const v1, 0x7f09035f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    .line 1086
    const v1, 0x7f09036b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    .line 1088
    const v1, 0x7f09036a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightMark:Landroid/widget/ImageView;

    .line 1089
    const v1, 0x7f09035e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterMark:Landroid/widget/ImageView;

    .line 1090
    const v1, 0x7f090364

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftMark:Landroid/widget/ImageView;

    .line 1091
    const v1, 0x7f090368

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftText:Landroid/widget/TextView;

    .line 1092
    const v1, 0x7f090362

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    .line 1093
    const v1, 0x7f09036e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightText:Landroid/widget/TextView;

    .line 1094
    const v1, 0x7f0900b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->bottomContainer:Landroid/view/View;

    .line 1095
    const v1, 0x7f090591

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->topContainer:Landroid/view/View;

    .line 1096
    const v1, 0x7f090405

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->progressContainer:Landroid/view/View;

    .line 1098
    const v1, 0x7f090323

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 1099
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1100
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1101
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1103
    const v1, 0x7f090189

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    .line 1104
    const v1, 0x7f0905ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTotalTimeTv:Landroid/widget/TextView;

    .line 1105
    const v1, 0x7f09006f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    .line 1109
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    const v1, 0x7f09006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    .line 1111
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    const v1, 0x7f090072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    .line 1113
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    const v1, 0x7f0902ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    .line 1115
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    const v1, 0x7f09037c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNavMenu:Landroid/widget/TextView;

    .line 1117
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNavMenu:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    const v1, 0x7f090402

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->progressBar:Landroid/view/View;

    .line 1122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->progressBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    const v1, 0x7f09035d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->moreToolsBtn:Landroid/widget/ImageView;

    .line 1124
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->moreToolsBtn:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    const v1, 0x7f090130

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    .line 1126
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1188
    const v1, 0x7f09011c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    .line 1190
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeVisibilityViaRid()V

    .line 1194
    const v1, 0x7f090079

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1195
    .local v0, "btn":Landroid/widget/ImageButton;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_0

    .line 1196
    const v1, 0x7f0802cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    const v1, 0x7f090302

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    .line 1205
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    .line 1207
    const v1, 0x7f090301

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    .line 1208
    const v1, 0x7f090300

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    .line 1209
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskTop:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1210
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcMaskBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1212
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1232
    const v1, 0x7f090148

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    .line 1233
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    const v1, 0x7f09006d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mContainer:Landroid/view/View;

    .line 1236
    const v1, 0x7f090581

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleContainer:Landroid/view/View;

    .line 1237
    const v1, 0x7f090065

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioCoverContainer:Landroid/view/View;

    .line 1238
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHardwareAccelerated:Z

    if-eqz v1, :cond_1

    .line 1240
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioCoverContainer:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1243
    :cond_1
    const v1, 0x7f090503

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    .line 1244
    const v1, 0x7f090504

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    .line 1246
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    iget v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v6, v6

    invoke-direct {p0, v1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    .line 1248
    const v1, 0x7f0904f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtist:Landroid/widget/TextView;

    .line 1249
    const v1, 0x7f0904f4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    .line 1250
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    iget v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v6, v6

    invoke-direct {p0, v1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    .line 1252
    const v1, 0x7f090066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1253
    const v1, 0x7f090067

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverCenter:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1255
    const v1, 0x7f090068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1256
    const v1, 0x7f090069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextCenter:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1259
    const v1, 0x7f090182

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    .line 1261
    const v1, 0x7f090184

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    .line 1263
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    iget v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v6, v6

    invoke-direct {p0, v1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    .line 1266
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1267
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNavMenu:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1268
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->moreToolsBtn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1269
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v5, :cond_5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1277
    const v1, 0x7f0904f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    .line 1278
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$6;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$6;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v1, :cond_7

    .line 1285
    const-string v1, "AUDIO_LIST_TIPS_CLICK_FLAG"

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    .line 1286
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    if-nez v4, :cond_6

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1290
    :goto_5
    return-void

    :cond_2
    move v1, v3

    .line 1266
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1267
    goto :goto_1

    :cond_4
    move v1, v3

    .line 1268
    goto :goto_2

    :cond_5
    move v4, v3

    .line 1269
    goto :goto_3

    :cond_6
    move v3, v2

    .line 1286
    goto :goto_4

    .line 1288
    :cond_7
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private isCurrentViewVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1435
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

    .line 1436
    const/4 v0, 0x1

    .line 1438
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

    .line 551
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->checkNetworkAndChannelLogic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 558
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 559
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext()V

    goto :goto_0
.end method

.method private onPlayPrev()V
    .locals 2

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->checkNetworkAndChannelLogic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 571
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playPrev()V

    goto :goto_0
.end method

.method private pauseAudioPlay()V
    .locals 2

    .prologue
    .line 2028
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 2033
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 2034
    return-void

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private preloadCDCover(Ljava/lang/String;)V
    .locals 4
    .param p1, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1381
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

    .line 1383
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

    .line 1384
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1383
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1385
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1389
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

    .line 1390
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

    .line 1391
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1390
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1393
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1396
    :cond_3
    return-void
.end method

.method private requestChannel()V
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioChannel()V

    .line 451
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioFav()V

    .line 452
    return-void
.end method

.method private requestChannelWhileGainNetworkConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->requestChannel()V

    .line 446
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 447
    return-void
.end method

.method private resetCoverImageRotation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setRotation(F)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setRotation(F)V

    .line 749
    :cond_1
    return-void
.end method

.method private rotateCoverImageAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/l;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1765
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v4

    const/4 v5, 0x0

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 1766
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v3

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 1765
    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 1767
    .local v0, "animateRotation":Lcom/nineoldandroids/a/l;
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 1768
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 1769
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 1770
    invoke-virtual {v0, v6}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 1772
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 1773
    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$10;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$10;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 1794
    return-object v0
.end method

.method private setHasClickedListTip()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1293
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    if-nez v0, :cond_0

    .line 1294
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->hasClickListTip:Z

    .line 1295
    const-string v0, "AUDIO_LIST_TIPS_CLICK_FLAG"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 1296
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShowListTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1298
    :cond_0
    return-void
.end method

.method private setProgress(II)V
    .locals 6
    .param p1, "curPos"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2563
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDragging:Z

    if-nez v2, :cond_1

    .line 2565
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 2566
    if-lez p2, :cond_0

    .line 2567
    const-wide/16 v2, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v2, v4

    int-to-long v4, p2

    div-long v0, v2, v4

    .line 2569
    .local v0, "pos":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2570
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2574
    .end local v0    # "pos":J
    :cond_0
    iput p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDuration:I

    .line 2576
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTotalTimeTv:Landroid/widget/TextView;

    int-to-long v4, p2

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2577
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2579
    :cond_1
    return-void
.end method

.method private showDeleteOfflineDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2215
    new-instance v1, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1000b4

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2216
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2217
    const v4, 0x7f0b0091

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2219
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 2220
    .local v3, "width":I
    const/4 v2, -0x2

    .line 2221
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 2222
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2223
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2225
    const v4, 0x7f09004c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2226
    .local v0, "alertText":Landroid/widget/TextView;
    const-string v4, "\u786e\u5b9a\u5c06\u6b64\u6b4c\u66f2\u4ece\u79bb\u7ebf\u6b4c\u5355\u4e2d\u5220\u9664\uff1f"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    const v4, 0x7f0900fa

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$18;

    invoke-direct {v5, p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$18;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2233
    const v4, 0x7f090156

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;

    invoke-direct {v5, p0, v1, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2245
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    :goto_0
    return-void

    .line 2246
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOfflineAlertDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1842
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    if-nez v3, :cond_1

    .line 1843
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1000b4

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    .line 1850
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1851
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0149

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1852
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1853
    const v3, 0x7f090156

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$14;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$14;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1860
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x5

    .line 1861
    .local v2, "width":I
    const/4 v0, -0x2

    .line 1862
    .local v0, "height":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1863
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1864
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1866
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    :goto_1
    return-void

    .line 1845
    .end local v0    # "height":I
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "width":I
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1846
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1867
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
    .line 413
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    move-result-object v1

    .line 414
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    move-object/from16 v18, v0

    .line 415
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

    .line 416
    .local v3, "shareTitle":Ljava/lang/String;
    const-string v4, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 417
    .local v4, "content":Ljava/lang/String;
    const-string v2, "Listen View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setEventName(Ljava/lang/String;)V

    .line 418
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

    const v13, 0x7f080368

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

    .line 419
    const-string v2, "listen"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setSource(Ljava/lang/String;)V

    .line 420
    const v2, 0x7f0801e4

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setTopIconRes(I)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f0048

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setShareText(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    .end local v3    # "shareTitle":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v18    # "meta":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v17

    .line 425
    .local v17, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showSingleLoopDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1809
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1000b4

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1810
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1811
    const v3, 0x7f0b0183

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1813
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 1814
    .local v2, "width":I
    const/4 v1, -0x2

    .line 1815
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1816
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1817
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1819
    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$11;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$11;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1826
    const v3, 0x7f0900fa

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    :goto_0
    return-void

    .line 1836
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private startCoverAnimation()V
    .locals 1

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 1756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->rotateCoverImageAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    .line 1758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->rotateCoverImageAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    .line 1760
    return-void
.end method

.method private stopCoverRotation()V
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 1802
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->coverNextRotateAnimation:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 1806
    :cond_1
    return-void
.end method

.method private toggleChildrenLock()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1061
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    .line 1063
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->bottomContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->topContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1066
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTotalTimeTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentLrcMode:I

    packed-switch v0, :pswitch_data_0

    .line 1078
    :goto_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v3, :cond_8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1081
    return-void

    :cond_0
    move v0, v1

    .line 1061
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1063
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1064
    goto :goto_2

    :cond_3
    move v0, v1

    .line 1065
    goto :goto_3

    :cond_4
    move v0, v1

    .line 1066
    goto :goto_4

    :cond_5
    move v0, v1

    .line 1067
    goto :goto_5

    .line 1071
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_9

    .line 1074
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    move v0, v1

    .line 1078
    goto :goto_7

    :cond_8
    move v1, v2

    .line 1080
    goto :goto_8

    .line 1068
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

    .line 521
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentLrcMode:I

    packed-switch v1, :pswitch_data_0

    .line 532
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioCoverContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 536
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 538
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    if-eqz p1, :cond_4

    .line 539
    const v1, 0x7f090591

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 540
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 546
    :goto_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->d()V

    .line 548
    return-void

    .line 523
    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_0

    .line 529
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

    .line 532
    goto :goto_1

    :cond_3
    move v3, v2

    .line 533
    goto :goto_2

    .line 542
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const v1, 0x7f090065

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 543
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 544
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    .line 521
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

    .line 2514
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v0

    .line 2515
    .local v0, "control":Lcom/jiliguala/niuwa/logic/q/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/a;->g()I

    move-result v1

    .line 2516
    .local v1, "remainSeconds":I
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2517
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2523
    if-lez v1, :cond_1

    .line 2524
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    const v3, 0x7f0f0044

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/a;->g()I

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

    .line 2537
    :cond_0
    :goto_0
    return-void

    .line 2526
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2530
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 2531
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2533
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    if-eqz v2, :cond_0

    .line 2534
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v2, v10}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateCurrentCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
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

    .line 1402
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

    .line 1403
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1402
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1404
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1414
    :cond_1
    :goto_0
    return-void

    .line 1407
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

    .line 1408
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

    .line 1409
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1408
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1411
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCover:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateDownloadBtnStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2392
    packed-switch p1, :pswitch_data_0

    .line 2406
    :goto_0
    :pswitch_0
    return-void

    .line 2394
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2397
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2392
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
    .line 1302
    invoke-static {p2, p3}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->makeLinearGradient(IZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1303
    .local v0, "radialTint":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/module/story/helpers/CompatibilityHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1304
    return-void
.end method

.method private updateMoreToolsBtn()V
    .locals 7

    .prologue
    const v6, 0x7f0801fa

    const v5, 0x7f0801b2

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1685
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v1

    .line 1686
    .local v1, "audioTimerController":Lcom/jiliguala/niuwa/logic/q/a;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v0

    .line 1687
    .local v0, "audioTimeLimitOn":Z
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v2, :cond_2

    .line 1691
    if-eqz v0, :cond_1

    .line 1695
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1696
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1697
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1699
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1700
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1702
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1703
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1704
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1738
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v2, :cond_4

    const v2, 0x7f080116

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1740
    :cond_0
    return-void

    .line 1709
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1710
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1711
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1713
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1715
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1717
    :cond_2
    if-eqz v0, :cond_3

    .line 1721
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1722
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1723
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1725
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1728
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1733
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomCenterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1734
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1735
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsBottomRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1738
    :cond_4
    const v2, 0x7f080115

    goto :goto_1
.end method

.method private updateNextCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNextContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1418
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

    .line 1420
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

    .line 1421
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1420
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1422
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 1432
    :cond_1
    :goto_0
    return-void

    .line 1425
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

    .line 1427
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

    .line 1428
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 1427
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1429
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCdCoverNext:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateNextTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "titleStr"    # Ljava/lang/String;
    .param p2, "artistStr"    # Ljava/lang/String;

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTitleNext:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtist:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1372
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

    .line 1374
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mArtistNext:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCurrentViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1375
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

    .line 1377
    :cond_3
    return-void
.end method

.method private updatePlayButton(Z)V
    .locals 2
    .param p1, "isPaused"    # Z

    .prologue
    .line 1308
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isPaused:Z

    .line 1309
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const v0, 0x7f08011e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f08011c

    goto :goto_1
.end method

.method private updateView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1542
    if-nez p1, :cond_0

    .line 1567
    :goto_0
    return-void

    .line 1546
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1547
    .local v2, "x":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1548
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 1549
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    .line 1550
    .local v0, "left":I
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    mul-int/lit8 v1, v3, 0x2

    .line 1565
    .local v1, "right":I
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateViewPos(Landroid/view/View;II)V

    goto :goto_0

    .line 1552
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1553
    .restart local v0    # "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v1, v0, v3

    .restart local v1    # "right":I
    goto :goto_1

    .line 1556
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_2
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    .line 1557
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v0, v3

    .line 1558
    .restart local v0    # "left":I
    const/4 v1, 0x0

    .restart local v1    # "right":I
    goto :goto_1

    .line 1560
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1561
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
    .line 1571
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    .line 1572
    invoke-virtual {p1, p3}, Landroid/view/View;->setRight(I)V

    .line 1573
    int-to-float v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    .line 1575
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1577
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    if-ne p2, v1, :cond_0

    .line 1578
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int p3, v1

    .line 1580
    :cond_0
    if-nez p2, :cond_1

    .line 1581
    const/4 p3, 0x0

    .line 1583
    :cond_1
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    neg-int v1, v1

    if-ne p2, v1, :cond_2

    .line 1584
    iget p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->screenWidth:I

    .line 1587
    :cond_2
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1588
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1589
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
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

    .line 679
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 680
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 681
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setRid(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 686
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 689
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleLyricFullScreen(Z)V

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeVisibilityViaRid()V

    .line 693
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 694
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 695
    return-void
.end method

.method public dismissLoadingProgress()V
    .locals 2

    .prologue
    const/16 v1, 0x1002

    .line 2256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->removeMessages(I)V

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->sendEmptyMessage(I)Z

    .line 2260
    return-void
.end method

.method public doShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;
    .param p3, "art"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 2190
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 2191
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 2192
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2193
    :cond_0
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2194
    const-string v1, "listen"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 2197
    :cond_1
    return-void
.end method

.method public enableButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1654
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1655
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1656
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1658
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1659
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
    .line 2363
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
    .line 2388
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    return-object v0
.end method

.method public getSearchFirstPos()I
    .locals 1

    .prologue
    .line 2383
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    return v0
.end method

.method public getSearchKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getThisFragmentManager()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method

.method public gotoChannelSelect(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgClr"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 699
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "channel"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v1, "title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v1, "bg_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->showChannel(Landroid/os/Bundle;)V

    .line 707
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public isChildrenLock()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    return v0
.end method

.method public isCourseFinished()Z
    .locals 1

    .prologue
    .line 2298
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsCourseFinished:Z

    return v0
.end method

.method public isFromPractise()Z
    .locals 1

    .prologue
    .line 2349
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    return v0
.end method

.method public isNotModelLesson()Z
    .locals 1

    .prologue
    .line 2625
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
    .line 2582
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

    .line 1880
    const-string v1, "-1"

    const-string v2, ""

    const-string v3, "\u5df2\u4e0b\u8f7d"

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1881
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

    .line 632
    packed-switch p1, :pswitch_data_0

    .line 669
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 672
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeVisibilityViaRid()V

    .line 673
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 674
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 675
    :cond_1
    return-void

    .line 634
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 635
    if-eqz p3, :cond_1

    .line 638
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    .line 639
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    .line 640
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    .line 642
    const-string v1, "KEY_SEARCH_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "_id":Ljava/lang/String;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 644
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v1, v0, v3, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 646
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 648
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 649
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleLyricFullScreen(Z)V

    .line 656
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onBackPressed(Z)V

    goto :goto_0

    .line 659
    .end local v0    # "_id":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_0

    .line 660
    if-eqz p3, :cond_1

    .line 663
    const-string v1, "KEY_KEY_WORD"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    .line 664
    const-string v1, "KEY_FIRST_POSITION"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    .line 665
    const-string v1, "KEY_SEARCH_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onAlreadySwitchToFirst()V
    .locals 1

    .prologue
    .line 1967
    const-string v0, "\u5df2\u662f\u7b2c\u4e00\u9996"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1968
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 1969
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 753
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/app/Activity;)V

    .line 754
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    .line 755
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 756
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 727
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->stopPlay()V

    .line 733
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/q/a;->a(Z)V

    .line 734
    return-void
.end method

.method public onChildGained()V
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 2212
    return-void
.end method

.method public onClickFavThisSong()V
    .locals 2

    .prologue
    .line 2165
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Fav Audio"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 2166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->doLoveScaleAnimation(Landroid/view/View;)V

    .line 2167
    const-string v0, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2168
    return-void
.end method

.method public onClickUnFavThisSong(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->confirmUnFavThisSong(Ljava/lang/String;)V

    .line 2174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2175
    const-string v0, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2176
    return-void
.end method

.method public onConnectionLost()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 464
    const v0, 0x7f0f0144

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 465
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 770
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 773
    const/4 v0, 0x5

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->TAG:Ljava/lang/String;

    const-string v2, "[onCreate]"

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
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
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 937
    new-instance v5, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v7, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .line 938
    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    .line 939
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 940
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->registerWatcher()V

    .line 942
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initDialogs()V

    .line 944
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->addEventObserver()V

    .line 946
    if-eqz p3, :cond_0

    .line 947
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v5, p3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 950
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 951
    .local v4, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 952
    .local v3, "extra":Z
    if-eqz v4, :cond_3

    .line 953
    const-string v5, "rid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 954
    const-string v5, "channel"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 955
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 957
    const-string v5, "18"

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 959
    :cond_1
    const-string v5, "extra"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 961
    const-string v5, "channel_nm"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 962
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "The Kibommers"

    :goto_0
    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 963
    const-string v5, "from_practise"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    .line 964
    const-string v5, "has_model"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHasModel:Z

    .line 965
    const-string v5, "is_loop"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsLoop:Z

    .line 966
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsCourseFinished:Z

    .line 967
    const-string v5, "PARAM_COURSE_TICKET"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 968
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v5, :cond_2

    .line 969
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    .line 971
    :cond_2
    const-string v5, "hardwareAccelerated"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHardwareAccelerated:Z

    .line 974
    :cond_3
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v5, :cond_4

    .line 975
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Listen View"

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 978
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    .line 979
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/g/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "chnId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 982
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 983
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    .line 985
    :cond_5
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/g/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, "chnName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 988
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    .line 993
    .end local v0    # "chnId":Ljava/lang/String;
    .end local v1    # "chnName":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setRid(Ljava/lang/String;)V

    .line 994
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioChannel()V

    .line 996
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioFav()V

    .line 998
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->registerMediaPlayService()V

    .line 1001
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->changeOfflineStatus()V

    .line 1003
    const v5, 0x7f0b005f

    invoke-virtual {p1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1004
    .local v2, "content":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initUI(Landroid/view/View;)V

    .line 1005
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initTextSwitcher(Landroid/view/View;)V

    .line 1006
    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->countDownRunnable:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    .line 1008
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateBackGround(Ljava/lang/String;)V

    .line 1009
    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mGetTimeLimitInfo:Ljava/lang/Runnable;

    .line 1011
    return-object v2

    .line 962
    .end local v2    # "content":Landroid/view/View;
    :cond_7
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move v5, v6

    .line 966
    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1318
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 1320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->d()V

    .line 1323
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 1324
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unRegisterService()V

    .line 1325
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unRegisterAll()V

    .line 1326
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->e()V

    .line 1327
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 1339
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroyView()V

    .line 1341
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 764
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 766
    return-void
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 2200
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2203
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
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
    .line 2086
    .local p1, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->post(Ljava/lang/Runnable;)Z

    .line 2128
    return-void
.end method

.method public onLyricLoadFailed()V
    .locals 2

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->post(Ljava/lang/Runnable;)Z

    .line 2161
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
    .line 2132
    .local p1, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->post(Ljava/lang/Runnable;)Z

    .line 2142
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 1

    .prologue
    .line 2081
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2082
    return-void
.end method

.method public onNoneWifiConnection()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isNoneWifiState:Z

    .line 457
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 458
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->requestChannelWhileGainNetworkConnection()V

    .line 459
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 806
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 807
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->releasePowerLock()V

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_end_time:J

    .line 809
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_end_time:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_start_time:J

    sub-long v0, v2, v4

    .line 810
    .local v0, "total":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "Listen View"

    const/4 v4, 0x0

    long-to-int v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 811
    return-void
.end method

.method public onPlayComplete()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2046
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mForward:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2047
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Listen"

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 2048
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v3, :cond_0

    .line 2049
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    :goto_0
    return v1

    .line 2052
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 2057
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2058
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHasModel:Z

    if-eqz v3, :cond_2

    .line 2059
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    if-eqz v3, :cond_2

    .line 2060
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mIsLoop:Z

    if-nez v3, :cond_1

    .line 2061
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    .line 2062
    .local v0, "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->performExit()V

    goto :goto_0

    .end local v0    # "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    :cond_1
    move v1, v2

    .line 2065
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2068
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2070
    goto :goto_0
.end method

.method public onPlayError()Z
    .locals 1

    .prologue
    .line 2076
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 1990
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 1991
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->stopCoverRotation()V

    .line 1992
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateMoreToolsBtn()V

    .line 1993
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateAudioLimitTime()V

    .line 1994
    return-void
.end method

.method public onPlayPrepared(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 1998
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startCoverAnimation()V

    .line 2011
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v1, :cond_0

    .line 2015
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v0

    .line 2016
    .local v0, "audioTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/q/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2020
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v2, 0x1004

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->sendEmptyMessage(I)Z

    .line 2023
    .end local v0    # "audioTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/q/a;
    :cond_0
    return-void
.end method

.method public onPlayResume()V
    .locals 1

    .prologue
    .line 1984
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updatePlayButton(Z)V

    .line 1985
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startCoverAnimation()V

    .line 1986
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 2550
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDuration:I

    mul-int/2addr v3, p2

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    .line 2551
    .local v0, "new_pos":J
    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/x;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 2555
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 2556
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2557
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    if-eqz v3, :cond_1

    .line 2558
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onProgressChangedUpdateLyric(I)V

    .line 2560
    :cond_1
    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 3
    .param p1, "currentPosition"    # J
    .param p3, "duration"    # J

    .prologue
    .line 2038
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2039
    .local v0, "msg":Landroid/os/Message;
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2040
    long-to-int v1, p3

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2041
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2042
    return-void
.end method

.method public onResetLyricView()V
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 2270
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 784
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 786
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    .line 787
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->acquirePowerLock()V

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->m_start_time:J

    .line 790
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 796
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 797
    return-void

    .line 793
    :cond_1
    const-string v0, "\u7535\u53f0"

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2146
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2147
    const/4 v0, 0x5

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->TAG:Ljava/lang/String;

    const-string v2, "[onSaveInstanceState]"

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2149
    return-void
.end method

.method public onSearchAction(Ljava/lang/String;)V
    .locals 6
    .param p1, "bgClr"    # Ljava/lang/String;

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/search/model/SearchModel;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchKeyword:Ljava/lang/String;

    iget v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchFirstPos:I

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->searchResult:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/search/model/SearchModel;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->makeAudioSearchIntent(Landroid/content/Context;Lcom/jiliguala/niuwa/module/search/model/SearchModel;)Landroid/content/Intent;

    move-result-object v0

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x1001

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 714
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 716
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDragging:Z

    .line 2594
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2595
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2596
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mCurrentTimeTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2598
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2608
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 2609
    .local v0, "pos":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDuration:I

    mul-int/2addr v2, v0

    div-int/lit16 v1, v2, 0x3e8

    .line 2611
    .local v1, "realAudioPos":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mPresenter:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->seekTo(I)V

    .line 2613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mDragging:Z

    .line 2614
    return-void
.end method

.method public onSubCourseReportFailed()V
    .locals 1

    .prologue
    .line 2337
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2338
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->cancelSubCourse()V

    .line 2339
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 2341
    :cond_0
    return-void
.end method

.method public onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2333
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
    .line 1016
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1022
    return-void
.end method

.method public onWifiConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 435
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->requestChannel()V

    .line 436
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    if-nez v0, :cond_0

    .line 438
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isNoneWifiState:Z

    .line 439
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLastHasNetWork:Z

    .line 440
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 442
    :cond_0
    return-void
.end method

.method public pausePlay()V
    .locals 1

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V

    .line 2618
    return-void
.end method

.method public pausePlayOnChannelShow()V
    .locals 0

    .prologue
    .line 2360
    return-void
.end method

.method protected registerWatcher()V
    .locals 2

    .prologue
    .line 928
    new-instance v0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    .line 929
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;)V

    .line 930
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkStateWatcher:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->c()V

    .line 931
    return-void
.end method

.method public reportStationListViewAmplitude()V
    .locals 2

    .prologue
    .line 408
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Station List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public reportSubLessonExit()V
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->sendCourseTaskExitReport()V

    .line 740
    :cond_0
    return-void
.end method

.method public resumePlay()V
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getPresenter()Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resumePlay()V

    .line 2622
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 504
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v1, "Step"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v1, "Time"

    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/i/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 513
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public show3GNetStateDialog()V
    .locals 2

    .prologue
    .line 1900
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 1906
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->pauseAudioPlay()V

    .line 1908
    :cond_1
    return-void
.end method

.method public showAddBabyPage()V
    .locals 4

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1750
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startActivity(Landroid/content/Intent;)V

    .line 1751
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1752
    return-void
.end method

.method public showChangeToOfflineDialog()V
    .locals 2

    .prologue
    .line 1886
    sget-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    if-nez v0, :cond_2

    .line 1887
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mNetworkChangefragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 1893
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLaunchOfflineModeFragment:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 1894
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->pauseAudioPlay()V

    .line 1896
    :cond_2
    return-void
.end method

.method public showDownloadDeleteDialog(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showDeleteOfflineDialog(Ljava/lang/String;)V

    .line 1745
    return-void
.end method

.method public showLoadingProgress()V
    .locals 4

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    const/16 v1, 0x1002

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->sendEmptyMessageDelayed(IJ)Z

    .line 2253
    return-void
.end method

.method public showLoginPage()V
    .locals 2

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    const v1, 0x7f0f00cb

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1668
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1669
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->startActivity(Landroid/content/Intent;)V

    .line 1671
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public showMoreToolsDlg()V
    .locals 4

    .prologue
    const v2, 0x7f1000b3

    const/4 v3, 0x1

    .line 2409
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 2410
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    .line 2412
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2413
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2415
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2416
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 2417
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2418
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 2420
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 2421
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2422
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2424
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0902fc

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0902fa

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    .line 2426
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_3

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2428
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopBtn:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v0, :cond_4

    const v0, 0x7f080116

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2429
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0902fb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopTipsTv:Landroid/widget/TextView;

    .line 2430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2431
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->loopTipsTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0f01be

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2433
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    .line 2434
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_6

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2435
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadThisSongBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2436
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentDownloadStatus:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateDownloadBtnStatus(I)V

    .line 2437
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadTipsTv:Landroid/widget/TextView;

    .line 2438
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2439
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->downloadTipsTv:Landroid/widget/TextView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentDownloadStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    const v0, 0x7f0f00c1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2442
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    .line 2443
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_8

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2444
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenLockIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2445
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenTipsTv:Landroid/widget/TextView;

    .line 2446
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0904d8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShareThisSong:Landroid/widget/ImageView;

    .line 2449
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShareThisSong:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_9

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2450
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mShareThisSong:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2451
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f0904cf

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->shareTipsTv:Landroid/widget/TextView;

    .line 2452
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->shareTipsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2454
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlIcon:Landroid/widget/ImageView;

    .line 2455
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    .line 2456
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeLeftText:Landroid/widget/TextView;

    .line 2457
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 2458
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_a

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2459
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/a;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2460
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    if-nez v0, :cond_b

    const-string v0, "#FFFB992D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2461
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 2462
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2493
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2494
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioTimeCtrlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2495
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateAudioLimitTime()V

    .line 2496
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mHandler:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mGetTimeLimitInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->post(Ljava/lang/Runnable;)Z

    .line 2497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$22;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$22;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2504
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2508
    :goto_a
    return-void

    .line 2424
    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 2426
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_1

    .line 2428
    :cond_4
    const v0, 0x7f080115

    goto/16 :goto_2

    .line 2431
    :cond_5
    const v0, 0x7f0f003d

    goto/16 :goto_3

    .line 2434
    :cond_6
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_4

    .line 2439
    :cond_7
    const v0, 0x7f0f00c2

    goto/16 :goto_5

    .line 2443
    :cond_8
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_6

    .line 2449
    :cond_9
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_7

    .line 2458
    :cond_a
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto/16 :goto_8

    .line 2460
    :cond_b
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    goto :goto_9

    .line 2505
    :catch_0
    move-exception v0

    goto :goto_a
.end method

.method public showOfflineListEmtpyWarning()V
    .locals 1

    .prologue
    .line 1973
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showOfflineAlertDialog()V

    .line 1974
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 1975
    return-void
.end method

.method public showPopFragment(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 0
    .param p1, "mCurrentPlayItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 2354
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 2355
    return-void
.end method

.method public showUnFavDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 575
    new-instance v1, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1000b4

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 576
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 577
    const v4, 0x7f0b018f

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 579
    const v4, 0x7f09004c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    .local v0, "alertText":Landroid/widget/TextView;
    const-string v4, "\u662f\u5426\u53d6\u6d88\u7ea2\u5fc3\u8be5\u6b4c\u66f2?"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 582
    .local v3, "width":I
    const/4 v2, -0x2

    .line 583
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 584
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 585
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 587
    const v4, 0x7f0900fa

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$24;

    invoke-direct {v5, p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$24;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    const v4, 0x7f090156

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;

    invoke-direct {v5, p0, v1, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public switchOnPlayListEmpty()V
    .locals 1

    .prologue
    .line 1979
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    .line 1980
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
    .line 2368
    .local p1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mAudioChannelData:Ljava/util/ArrayList;

    .line 2370
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2371
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    if-eqz v1, :cond_0

    .line 2372
    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->refreshList(Ljava/util/ArrayList;)V

    .line 2374
    :cond_0
    return-void
.end method

.method public updateBackGround(Ljava/lang/String;)V
    .locals 7
    .param p1, "nextColorStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1920
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1921
    .local v2, "nextColor":I
    iput v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    .line 1934
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeBackGroundAnim(I)V

    .line 1937
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1938
    .local v1, "drs":[Landroid/graphics/drawable/Drawable;
    aget-object v0, v1, v5

    .line 1939
    .local v0, "drLeft":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1940
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1941
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1942
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->childrenUnlockTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1943
    return-void
.end method

.method public updateCdCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "nextImgUrl"    # Ljava/lang/String;

    .prologue
    .line 1959
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->resetCoverImageRotation()V

    .line 1960
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeCoverImageAnimation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    return-void
.end method

.method public updateChannelName(Ljava/lang/String;)V
    .locals 1
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    :cond_0
    return-void
.end method

.method public updateDownloadIcon(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 2185
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentDownloadStatus:I

    .line 2186
    return-void
.end method

.method public updateFavIcon(Z)V
    .locals 2
    .param p1, "isFav"    # Z

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLoveThisSong:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v0, 0x7f080123

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2181
    return-void

    .line 2180
    :cond_0
    const v0, 0x7f080110

    goto :goto_0
.end method

.method public updateLoopBtn(Z)V
    .locals 1
    .param p1, "singleLoop"    # Z

    .prologue
    .line 1674
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->singleLoop:Z

    .line 1675
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateMoreToolsBtn()V

    .line 1676
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mMoreToolsDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1679
    :cond_0
    return-void
.end method

.method public updateLyricView(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/4 v1, 0x0

    .line 2264
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(IZZ)V

    .line 2265
    return-void
.end method

.method public updateMoreLyricBtn(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2274
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isLyricsShowMore:Z

    .line 2277
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isLyricsShowMore:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080111

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2278
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->toggleLyricFullScreen(Z)V

    .line 2280
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->currentLrcMode:I

    .line 2281
    packed-switch p1, :pswitch_data_0

    .line 2295
    :goto_1
    return-void

    .line 2277
    :cond_1
    const v0, 0x7f080117

    goto :goto_0

    .line 2283
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2284
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2283
    goto :goto_2

    .line 2287
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2288
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 2287
    goto :goto_3

    .line 2291
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreLyricsIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->mLrcView:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    goto :goto_1

    .line 2281
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
    .line 722
    return-void
.end method

.method public updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nextTitle"    # Ljava/lang/String;
    .param p2, "nextArtist"    # Ljava/lang/String;

    .prologue
    .line 1948
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateNextTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    return-void
.end method
