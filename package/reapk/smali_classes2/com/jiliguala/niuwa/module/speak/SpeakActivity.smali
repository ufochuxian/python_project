.class public Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/flashcard/FlashCardInterface;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;
.implements Lcom/jiliguala/niuwa/module/speak/MaskListener;
.implements Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;
.implements Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;
.implements Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;,
        Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;,
        Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;,
        Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    }
.end annotation


# static fields
.field private static final AUTO_RECORD_DELAY_CARD:J = 0x1770L

.field private static final AUTO_RECORD_DELAY_VIDEO:J = 0x2710L

.field private static final COUNT_DOWN_NUM:I = 0x3

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "key_template"

.field private static final MSG_ADD_MASK_VIEW:I = 0x1008

.field private static final MSG_ADD_SPEAK_VIEW_DELAY:I = 0x100f

.field private static final MSG_AUTO_RECORD:I = 0x100e

.field private static final MSG_DO_AFTER_SCORE_SOUND_PLAY:I = 0x100c

.field private static final MSG_ENABLE_PLAY:I = 0x100b

.field private static final MSG_PLAY_AUDIO_RECORD:I = 0x1007

.field private static final MSG_REMOVE_ALL_MASK_VIEW:I = 0x100a

.field private static final MSG_RESTORE_SPEAK_VIEW:I = 0x1009

.field private static final MSG_SHOW_COUNT_DOWN_DIALOG:I = 0x100d

.field private static final MSG_START_PLAY_VIDEO:I = 0x1006

.field private static final MSG_START_RECORD:I = 0x1002

.field private static final MSG_STOP_RECORD:I = 0x1003

.field private static final MSG_UPDATE_PROGRESS:I = 0x1004

.field private static final REFRESH_DELAY:I = 0xc8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field canTouchListener:Landroid/view/View$OnTouchListener;

.field private countingSoundId:I

.field private currentPageIndex:I

.field hasFocus:Z

.field private isShowVideo:Z

.field private lastPosIndex:I

.field private mAudioSavePath:Ljava/lang/String;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

.field private mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCountDownDlg:Landroid/app/Dialog;

.field private mCountDownTv:Landroid/widget/TextView;

.field private mCounter:I

.field private mCourseId:Ljava/lang/String;

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

.field private mEvaluateScoreTips:Landroid/widget/TextView;

.field private mExcellentSoundId:I

.field private mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

.field private mFlashCardMaskView:Landroid/widget/FrameLayout;

.field private mFlashCardPlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

.field private mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

.field private mGoodJobSoundId:I

.field private mGreatSoundId:I

.field private mHasAddedSpeakView:Z

.field private mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

.field private mIsCourseFinished:Z

.field private mIsRedownload:Z

.field private mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

.field mNoTouchListener:Landroid/view/View$OnTouchListener;

.field private mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

.field private mPageNum:Landroid/widget/TextView;

.field private mPerfectSoundId:I

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;

.field private mScreenFilter:Landroid/content/IntentFilter;

.field public mSentence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

.field private mSpeakCardModelTemplete:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

.field public mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

.field private mSpeakSentences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

.field public mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

.field private mTotalHeight:I

.field private mTryAgainSoundId:I

.field private mVideoMask:Landroid/view/View;

.field private mVideoPlayBtn:Landroid/widget/ImageView;

.field private needRedownload:Z

.field private resourceId:Ljava/lang/String;

.field private rid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSentence:Ljava/util/ArrayList;

    .line 121
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFocus:Z

    .line 122
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$1;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->canTouchListener:Landroid/view/View$OnTouchListener;

    .line 128
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$8;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$8;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNoTouchListener:Landroid/view/View$OnTouchListener;

    .line 134
    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    .line 135
    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->lastPosIndex:I

    .line 147
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->needRedownload:Z

    .line 148
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    .line 174
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/a/f;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->performExit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasVideoRecorded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTotalHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->startPlay()V

    return-void
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->playRecordByXunFeiKeDa()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->requestSpeak()V

    return-void
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasAddSpeakView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasAddScoreView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isNextBtnVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->removeAllMaskView()V

    return-void
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enablePlayFlashCardOrVideo()V

    return-void
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCounter:I

    return v0
.end method

.method static synthetic access$2610(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCounter:I

    return v0
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->playCountDownAudioEffect()V

    return-void
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->autoRecord()V

    return-void
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->autoShowRecord()V

    return-void
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->pauseAll()V

    return-void
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->scaleItem(I)V

    return-void
.end method

.method static synthetic access$3402(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFlashCardRecorded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showFlashCardMask()V

    return-void
.end method

.method static synthetic access$3800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideFlashCardMask()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    return v0
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;)Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->updateView()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    return-object v0
.end method

.method static synthetic access$902(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    return-object p1
.end method

.method private addCaptionsView()V
    .locals 4

    .prologue
    .line 1287
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 1288
    .local v1, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1289
    new-instance v2, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    .line 1290
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    const v3, 0x7f090150

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setId(I)V

    .line 1291
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->updateWithColorStyle()V

    .line 1292
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->et:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setEngTxt(Ljava/lang/String;)V

    .line 1293
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->ct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setChineseTxt(Ljava/lang/String;)V

    .line 1294
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1296
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1297
    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1298
    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1299
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1308
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :goto_0
    return-void

    .line 1301
    .restart local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v2

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->et:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setEngTxt(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v2

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->ct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setChineseTxt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1305
    .end local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private addScoreView()V
    .locals 3

    .prologue
    .line 1662
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->addScoreView(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private autoRecord()V
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->toggleRecord()V

    .line 2096
    :cond_0
    return-void
.end method

.method private autoShowRecord()V
    .locals 1

    .prologue
    .line 1139
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mHasAddedSpeakView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V

    .line 1142
    :cond_0
    return-void
.end method

.method private checkRequestNoWifi()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 273
    .local v1, "networkType":I
    const-string v3, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v3, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 274
    .local v0, "enabled":Z
    sget-boolean v3, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 276
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    if-nez v2, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->initNetworkChangeFragment()V

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/f;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/f;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/a/f;->a(Landroid/support/v4/app/ag;)V

    .line 283
    :cond_2
    const/4 v2, 0x0

    .line 285
    :cond_3
    return v2
.end method

.method private enableBtn(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setEnabled(Z)V

    .line 532
    :cond_0
    return-void
.end method

.method private enablePlayFlashCardOrVideo()V
    .locals 2

    .prologue
    .line 1884
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1887
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->enablePlayFlashCard()V

    goto :goto_0
.end method

.method private executeUpload()V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->updateMergeAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private getCountDownDlg()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2493
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2494
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2496
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 2497
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1000b4

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    .line 2498
    const v1, 0x7f0b010f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2499
    .local v0, "contentView":Landroid/view/View;
    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownTv:Landroid/widget/TextView;

    .line 2500
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2501
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2502
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2504
    .end local v0    # "contentView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    return-object v1
.end method

.method private getDelayTimeBySound(I)J
    .locals 3
    .param p1, "soundId"    # I

    .prologue
    const-wide/16 v0, 0x3e8

    .line 1870
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTryAgainSoundId:I

    if-ne p1, v2, :cond_1

    .line 1871
    const-wide/16 v0, 0xbb8

    .line 1879
    :cond_0
    :goto_0
    return-wide v0

    .line 1872
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mGoodJobSoundId:I

    if-ne p1, v2, :cond_2

    .line 1873
    const-wide/16 v0, 0x7d0

    goto :goto_0

    .line 1874
    :cond_2
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mGreatSoundId:I

    if-eq p1, v2, :cond_0

    .line 1876
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mExcellentSoundId:I

    if-ne p1, v2, :cond_0

    goto :goto_0
.end method

.method private getFlag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    const-string v1, "speak"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :cond_2
    const-string v1, "speakcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;
    .locals 8

    .prologue
    .line 1315
    :try_start_0
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v6, :cond_1

    .line 1316
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v7, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 1317
    .local v5, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v2, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->et:Ljava/lang/String;

    .line 1318
    .local v2, "englishTxt":Ljava/lang/String;
    iget-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->ct:Ljava/lang/String;

    .line 1324
    .end local v5    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    .local v0, "chineseTxt":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    if-nez v6, :cond_0

    .line 1325
    new-instance v6, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    .line 1326
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->updateNormalColorStyle()V

    .line 1327
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1328
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v6, 0x43160000    # 150.0f

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1329
    const/16 v6, 0xc

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1330
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v6, v2}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setEngTxt(Ljava/lang/String;)V

    .line 1333
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v6, v0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setChineseTxt(Ljava/lang/String;)V

    .line 1334
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    .line 1337
    .end local v0    # "chineseTxt":Ljava/lang/String;
    .end local v2    # "englishTxt":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 1320
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v7, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 1321
    .local v3, "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    iget-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;

    .line 1322
    .restart local v2    # "englishTxt":Ljava/lang/String;
    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->cword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "chineseTxt":Ljava/lang/String;
    goto :goto_0

    .line 1335
    .end local v0    # "chineseTxt":Ljava/lang/String;
    .end local v2    # "englishTxt":Ljava/lang/String;
    .end local v3    # "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :catch_0
    move-exception v1

    .line 1337
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getScore()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1343
    :try_start_0
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v3, :cond_0

    .line 1344
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 1345
    .local v2, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    .line 1351
    .end local v2    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :goto_0
    return-object v3

    .line 1347
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakCardModelTemplete:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;->sentences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;

    .line 1348
    .local v1, "speakSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->score:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1350
    .end local v1    # "speakSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getScoreView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1982
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1983
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1984
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090486

    if-ne v2, v3, :cond_0

    .line 1988
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1982
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1988
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSoundByScore(I)I
    .locals 3
    .param p1, "scoreNum"    # I

    .prologue
    const/16 v2, 0x50

    const/16 v1, 0x46

    const/16 v0, 0x3c

    .line 1903
    if-ge p1, v0, :cond_0

    .line 1904
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTryAgainSoundId:I

    .line 1912
    :goto_0
    return v0

    .line 1905
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 1906
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mGoodJobSoundId:I

    goto :goto_0

    .line 1907
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 1908
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mGreatSoundId:I

    goto :goto_0

    .line 1909
    :cond_2
    if-lt p1, v2, :cond_3

    const/16 v0, 0x5a

    if-ge p1, v0, :cond_3

    .line 1910
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mExcellentSoundId:I

    goto :goto_0

    .line 1912
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPerfectSoundId:I

    goto :goto_0
.end method

.method private getSpeakView()Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
    .locals 3

    .prologue
    .line 2002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2003
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2004
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v2, :cond_0

    .line 2005
    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .line 2008
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 2002
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2008
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hasAddScoreView()Z
    .locals 4

    .prologue
    .line 2012
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2013
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2014
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090486

    if-ne v2, v3, :cond_0

    .line 2015
    const/4 v2, 0x1

    .line 2018
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v2

    .line 2012
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2018
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasAddSpeakView()Z
    .locals 3

    .prologue
    .line 1992
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1993
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1994
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v2, :cond_0

    .line 1995
    const/4 v2, 0x1

    .line 1998
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v2

    .line 1992
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1998
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasFlashCardRecorded()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1398
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakSentences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;

    .line 1399
    .local v1, "speakSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->audiourl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 1402
    .end local v1    # "speakSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    :cond_0
    :goto_0
    return v2

    .line 1400
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private hasVideoRecorded()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1388
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 1389
    .local v1, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->audiourl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 1392
    .end local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :cond_0
    :goto_0
    return v2

    .line 1390
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private hideFlashCardMask()V
    .locals 2

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2090
    :cond_0
    return-void
.end method

.method private hideLoadingProgress()V
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1565
    :cond_0
    return-void
.end method

.method private hideVideoPauseAndVideoMak()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 783
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 789
    :cond_1
    return-void
.end method

.method private initNetworkChangeFragment()V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/f;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/f;->a(Z)V

    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/f;->a(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNetworkChangeFragment:Lcom/jiliguala/niuwa/common/a/f;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$10;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$10;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/f;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 327
    return-void
.end method

.method private initSoundPool()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/jiliguala/niuwa/logic/n/a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/n/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->countingSoundId:I

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTryAgainSoundId:I

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mExcellentSoundId:I

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mGoodJobSoundId:I

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mGreatSoundId:I

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPerfectSoundId:I

    .line 198
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 464
    const v0, 0x7f0b012b

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->setContentView(I)V

    .line 465
    const v0, 0x7f09053c

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 466
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->e()V

    .line 467
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 468
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 471
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 472
    const v0, 0x7f0903b8

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    .line 473
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 479
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .line 481
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    sget-object v1, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_FLASH_CARD_SPEAK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setType(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setSpeakView(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V

    .line 483
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCourseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setCourseId(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setRid(Ljava/lang/String;)V

    .line 485
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    .line 486
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->registerMediaPlayService()V

    .line 488
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setNoScroll(Z)V

    .line 489
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;-><init>(Landroid/support/v4/app/ag;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    .line 490
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->setNeedBottomBarPlaceHolder(Z)V

    .line 491
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->setBgColorId(I)V

    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->setFlashCard(Z)V

    .line 493
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 494
    const v0, 0x7f09020f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    .line 497
    :cond_0
    const v0, 0x7f0901ec

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    .line 499
    const v0, 0x7f0905f7

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 500
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 503
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 505
    const v0, 0x7f0905f5

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    .line 506
    const v0, 0x7f0905f2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->registerScreenIntentFilter()V

    .line 513
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isNextBtnVisible()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isNextBtnVisible()Z

    .line 395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private justSetVideoSourceButNotPrepare()V
    .locals 3

    .prologue
    .line 1361
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1362
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->startAndPauseWhilePrepared(Ljava/lang/String;)V

    .line 1363
    return-void
.end method

.method private pauseAll()V
    .locals 4

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x1003

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1157
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopVideoAudioPlay(Z)V

    .line 1159
    :cond_1
    return-void
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;

    if-eqz v0, :cond_0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->releaseSoundPool()V

    .line 428
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onBackPressed()V

    .line 429
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->finish()V

    .line 430
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->overridePendingTransition(II)V

    .line 431
    return-void

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private playCountDownAudioEffect()V
    .locals 2

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->countingSoundId:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->b(I)V

    .line 2103
    :cond_0
    return-void
.end method

.method private playRecordByXunFeiKeDa()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-nez v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 634
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopPlayVideo(Z)V

    goto :goto_0

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStartPlayRecord(I)V

    goto :goto_1
.end method

.method private playSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/n/a;->b(I)V

    .line 204
    :cond_0
    return-void
.end method

.method private prepareVideoLogic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1241
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasVideoRecorded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->justSetVideoSourceButNotPrepare()V

    .line 1244
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 1245
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V

    .line 1246
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addScoreView()V

    .line 1247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1259
    :cond_1
    :goto_0
    return-void

    .line 1254
    :cond_2
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mIsRedownload:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1255
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showCountDownPage()V

    goto :goto_0
.end method

.method private putScore(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "score"    # I

    .prologue
    .line 716
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v1, v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->putScores(Ljava/lang/String;I)V

    .line 718
    return-void
.end method

.method private reDownload()V
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->videourl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->downloadVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method private registerScreenIntentFilter()V
    .locals 3

    .prologue
    .line 516
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mScreenFilter:Landroid/content/IntentFilter;

    .line 517
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$d;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mScreenFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private releaseSoundPool()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/n/a;->a()V

    .line 210
    :cond_0
    return-void
.end method

.method private removeAllMaskView()V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->removeSpeakView()V

    .line 1097
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->removeScoreView()V

    .line 1098
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideNextBtn()V

    .line 1099
    return-void
.end method

.method private removeSpeakView()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasAddSpeakView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSpeakView()Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1105
    :cond_0
    return-void
.end method

.method private requestSpeak()V
    .locals 5

    .prologue
    .line 330
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->rid:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 336
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/jiliguala/niuwa/logic/network/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 337
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 338
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 339
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    .line 340
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestSurfaceLayout(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 871
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->c(Landroid/app/Activity;)I

    move-result v4

    .line 875
    .local v4, "videoW":I
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->b(Landroid/app/Activity;)I

    move-result v3

    .line 877
    .local v3, "videoH":I
    int-to-float v5, p1

    int-to-float v6, p2

    div-float v1, v5, v6

    .line 878
    .local v1, "realRatio":F
    int-to-float v5, v4

    int-to-float v6, v3

    div-float v2, v5, v6

    .line 880
    .local v2, "surfaceRatio":F
    cmpl-float v5, v1, v2

    if-ltz v5, :cond_2

    .line 883
    int-to-float v5, v4

    div-float/2addr v5, v1

    float-to-int v3, v5

    .line 889
    :goto_1
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v4, v5

    .line 890
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 891
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 892
    .local v0, "llp":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 893
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 895
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->requestLayout()V

    goto :goto_0

    .line 886
    .end local v0    # "llp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v4, v5

    goto :goto_1
.end method

.method private resetDownloadProgressNumber()V
    .locals 3

    .prologue
    .line 924
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getLoadingView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getLoadingView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 926
    .local v0, "progressBar":Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setProgress(I)V

    .line 928
    .end local v0    # "progressBar":Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
    :cond_0
    return-void
.end method

.method private scaleItem(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 1520
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    if-nez v5, :cond_1

    .line 1534
    :cond_0
    return-void

    .line 1521
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v5, p1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v3

    .line 1522
    .local v3, "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    if-eqz v3, :cond_0

    .line 1523
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1524
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v2

    .line 1525
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1526
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    instance-of v5, v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    if-eqz v5, :cond_2

    move-object v5, v1

    .line 1527
    check-cast v5, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    .line 1528
    .local v4, "picUrl":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1529
    check-cast v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->doScale()V

    goto :goto_0
.end method

.method private sendMessDoAfterPalyScoreSound(I)V
    .locals 4
    .param p1, "soundId"    # I

    .prologue
    const/16 v1, 0x100c

    .line 1863
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeMessages(I)V

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getDelayTimeBySound(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1867
    return-void
.end method

.method private sendMessageEnablePlay(I)V
    .locals 4
    .param p1, "soundId"    # I

    .prologue
    const/16 v1, 0x100b

    .line 1856
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeMessages(I)V

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getDelayTimeBySound(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1860
    return-void
.end method

.method private sendMsgPlayerVideo()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessage(I)Z

    .line 1357
    return-void
.end method

.method private setVideoSource()V
    .locals 3

    .prologue
    .line 1367
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->setVideoSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    .end local v0    # "filePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 1369
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showCountDownPage()V
    .locals 2

    .prologue
    .line 2508
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundResource(I)V

    .line 2513
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCountDownDlg()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    .line 2514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2516
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCounter:I

    .line 2517
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x100d

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessage(I)Z

    .line 2521
    :goto_0
    return-void

    .line 2519
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showFlashCardMask()V
    .locals 2

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2084
    :cond_0
    return-void
.end method

.method private showLoadingProgress()V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1559
    :cond_1
    return-void
.end method

.method private startPlay()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1569
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1570
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v5, :cond_1

    .line 1572
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->startPlayVideo()V

    .line 1573
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v3, :cond_3

    const-wide/16 v0, 0x2710

    .line 1587
    .local v0, "delay":J
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v4, 0x100f

    invoke-virtual {v3, v4, v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1588
    return-void

    .line 1575
    .end local v0    # "delay":J
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1576
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v5, :cond_0

    .line 1577
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFlashCardRecorded()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    invoke-virtual {v5, v6, v3}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v2

    .line 1582
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 1577
    goto :goto_2

    .line 1586
    :cond_3
    const-wide/16 v0, 0x1770

    goto :goto_1
.end method

.method private startPlayVideo()V
    .locals 1

    .prologue
    .line 1376
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->setVideoSource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_0
    return-void

    .line 1381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopPlayAudioRecordAndResetProgress()V
    .locals 2

    .prologue
    const/16 v1, 0x1004

    .line 1546
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeMessages(I)V

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopPlayRecord(I)V

    .line 1550
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_1

    .line 1551
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setProgress(I)V

    .line 1553
    :cond_1
    return-void
.end method

.method private stopVideoAudioPlay(Z)V
    .locals 1
    .param p1, "isNeedShowReplayBtn"    # Z

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopPlayVideo(Z)V

    .line 1543
    :cond_1
    return-void
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->videourl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->downloadVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->initContainer(Ljava/util/ArrayList;)V

    .line 1281
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSentence:Ljava/util/ArrayList;

    .line 1282
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSentence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    return-void
.end method


# virtual methods
.method public addHomeKeyWatcher()V
    .locals 1

    .prologue
    .line 2524
    new-instance v0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    .line 2525
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;)V

    .line 2526
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->c()V

    .line 2527
    return-void
.end method

.method public addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fl"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "removeScoreView"    # Z

    .prologue
    .line 1593
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;-><init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 1594
    .local v1, "obj":Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v3, 0x1008

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1595
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1596
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v0, v4, v5}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1597
    return-void
.end method

.method public addSpeakView()V
    .locals 1

    .prologue
    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mHasAddedSpeakView:Z

    .line 1109
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1131
    return-void
.end method

.method public addView(Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;)V
    .locals 4
    .param p1, "obj"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;

    .prologue
    .line 1974
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1975
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1976
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1978
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->a:Landroid/view/View;

    iget-object v3, p1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    return-void
.end method

.method public calculateGrade()V
    .locals 0

    .prologue
    .line 1056
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 1466
    return-void
.end method

.method public cancelCurrentAudioRecord()V
    .locals 0

    .prologue
    .line 759
    return-void
.end method

.method public checkVideoPlay()V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->checkVideoPlay()V

    .line 1729
    :cond_0
    return-void
.end method

.method public clickFlashCardItemToPlay()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1480
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isTranslateUp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isWaitingRecord()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1486
    .local v0, "isTranslateUp":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 1487
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1488
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v2, :cond_2

    .line 1489
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(IZ)V

    .line 1491
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideSpeaViewAndScoreView()V

    goto :goto_0

    .line 1485
    .end local v0    # "isTranslateUp":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->sendCourseTaskExitReport()V

    .line 1448
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->performExit()V

    .line 1449
    return-void
.end method

.method protected createSpeakViewWidget()Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
    .locals 1

    .prologue
    .line 1134
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public doAfterCourseDone()V
    .locals 4

    .prologue
    .line 1672
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 1673
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_2

    .line 1674
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopPlayVideo(Z)V

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1681
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1683
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x1003

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1688
    :cond_2
    :goto_0
    return-void

    .line 1685
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->executeUpload()V

    goto :goto_0
.end method

.method public getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;
    .locals 4

    .prologue
    .line 798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 800
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090150

    if-ne v2, v3, :cond_0

    .line 801
    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    .line 804
    .end local v0    # "childView":Landroid/view/View;
    :goto_1
    return-object v0

    .line 798
    .restart local v0    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method public getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 2045
    :try_start_0
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    iget v9, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v1

    .line 2046
    .local v1, "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    if-eqz v1, :cond_1

    .line 2047
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v5

    .line 2048
    .local v5, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 2049
    .local v4, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_0

    instance-of v9, v4, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    if-eqz v9, :cond_0

    .line 2050
    move-object v0, v4

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    move-object v3, v0

    .line 2051
    .local v3, "flashCardFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getPicUrl()Ljava/lang/String;

    move-result-object v6

    .line 2052
    .local v6, "picUrl":Ljava/lang/String;
    if-eqz v6, :cond_0

    iget-object v9, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .line 2062
    .end local v1    # "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    .end local v3    # "flashCardFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    .end local v4    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v5    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "picUrl":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v1    # "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :cond_1
    move-object v3, v7

    .line 2059
    goto :goto_0

    .line 2060
    .end local v1    # "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v7

    .line 2062
    goto :goto_0
.end method

.method public getEvluateStr()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1920
    :try_start_0
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v4, :cond_1

    .line 1921
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1922
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 1923
    .local v2, "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->DEFAULT_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mAudioSavePath:Ljava/lang/String;

    .line 1925
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->et:Ljava/lang/String;

    .line 1939
    .end local v2    # "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :cond_0
    :goto_0
    return-object v3

    .line 1929
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    iget v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v1

    .line 1930
    .local v1, "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->DEFAULT_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mAudioSavePath:Ljava/lang/String;

    .line 1931
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1934
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1937
    .end local v1    # "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :catch_0
    move-exception v0

    .line 1939
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method

.method public getFragmentMgr()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method

.method public getSaveFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1946
    :try_start_0
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v3, :cond_0

    .line 1947
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 1948
    .local v2, "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->_id:Ljava/lang/String;

    .line 1955
    .end local v2    # "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :goto_0
    return-object v3

    .line 1950
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 1951
    .local v1, "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1953
    .end local v1    # "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method

.method public hideNextBtn()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->hideNextBtn()V

    .line 402
    :cond_0
    return-void
.end method

.method public hideSpeaViewAndScoreView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1498
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v1, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setVisibility(I)V

    .line 1501
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    .line 1502
    .local v0, "scoreView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1503
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    :cond_1
    return-void
.end method

.method public initSpeachVp(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V
    .locals 5
    .param p1, "speakCardModelTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .prologue
    .line 1061
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-nez v3, :cond_0

    .line 1062
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 1063
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1064
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showCountDownPage()V

    .line 1069
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->hasSentences()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1083
    :goto_1
    return-void

    .line 1066
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1072
    :cond_2
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakCardModelTemplete:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .line 1073
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;->sentences:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakSentences:Ljava/util/ArrayList;

    .line 1074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v1, "sentencess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakSentences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;

    .line 1076
    .local v0, "s":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;-><init>()V

    .line 1077
    .local v2, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->_id:Ljava/lang/String;

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->_id:Ljava/lang/String;

    .line 1078
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->audiourl:Ljava/lang/String;

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->audiourl:Ljava/lang/String;

    .line 1079
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->score:Ljava/lang/String;

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    .line 1080
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1082
    .end local v0    # "s":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    .end local v2    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->initContainer(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public isLastPage()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1693
    :try_start_0
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v3, :cond_2

    .line 1694
    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1694
    goto :goto_0

    .line 1696
    :cond_2
    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 1700
    goto :goto_0
.end method

.method public onAudioRecordCancel(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 754
    return-void
.end method

.method public onAudioRecordStart()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopPlayVideo(Z)V

    .line 745
    return-void
.end method

.method public onAudioRecordStop()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 406
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mIsCourseFinished:Z

    if-nez v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 408
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 412
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->performExit()V

    goto :goto_0
.end method

.method public onBiginOfSpeech()V
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x1009

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessage(I)Z

    .line 1823
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v12, 0xc8

    const/16 v10, 0x1003

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 542
    .local v2, "id":I
    sparse-switch v2, :sswitch_data_0

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 545
    :sswitch_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 549
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    if-eqz v6, :cond_0

    .line 550
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "file_path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 553
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/i;->g(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 555
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->needRedownload:Z

    .line 565
    :goto_1
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->needRedownload:Z

    if-eqz v6, :cond_3

    .line 567
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 568
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->reDownload()V

    goto :goto_0

    .line 558
    :cond_1
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->needRedownload:Z

    goto :goto_1

    .line 562
    :cond_2
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->needRedownload:Z

    goto :goto_1

    .line 571
    :cond_3
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v6, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasVideoRecorded()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 574
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v7, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    iget v7, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->start:I

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->end:I

    invoke-virtual {v6, v7, v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStartPlayVideo(II)V

    .line 575
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onResumePlayVideo()V

    .line 591
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isAudioRecording()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 593
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v5, v10, v12, v13}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 595
    :cond_5
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isRecordPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 597
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v5, v10, v12, v13}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 598
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    goto/16 :goto_0

    .line 577
    :cond_6
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isVideoPlaying()Z

    move-result v6

    if-nez v6, :cond_4

    .line 583
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isTranslateUp()Z

    move-result v6

    if-eqz v6, :cond_9

    move v3, v5

    .line 584
    .local v3, "isTranslateUp":Z
    :goto_3
    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-nez v6, :cond_8

    :cond_7
    move v0, v5

    .line 585
    .local v0, "canPlay":Z
    :cond_8
    if-eqz v0, :cond_4

    .line 586
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onResumePlayVideo()V

    goto :goto_2

    .end local v0    # "canPlay":Z
    .end local v3    # "isTranslateUp":Z
    :cond_9
    move v3, v0

    .line 583
    goto :goto_3

    .line 605
    .end local v1    # "file_path":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 608
    :sswitch_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isAudioRecording()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 610
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v5, v10, v12, v13}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 613
    :cond_a
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v6, 0x1007

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeMessages(I)V

    .line 615
    iget v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->lastPosIndex:I

    add-int/lit8 v4, v5, 0x1

    .line 616
    .local v4, "nextPos":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    if-eqz v5, :cond_0

    .line 617
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090383 -> :sswitch_2
        0x7f090590 -> :sswitch_1
        0x7f0905f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClickNextBtn()V
    .locals 4

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopPlayRecord(I)V

    .line 1618
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1619
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    .line 1621
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_5

    .line 1622
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_1

    .line 1623
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    iget v2, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->start:I

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->end:I

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStartPlayVideo(II)V

    .line 1624
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasVideoRecorded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1625
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onResumePlayVideo()V

    .line 1630
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasVideoRecorded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1631
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1635
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSentence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    :cond_2
    :goto_2
    return-void

    .line 1627
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V

    goto :goto_0

    .line 1633
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addScoreView()V

    goto :goto_1

    .line 1638
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_6

    .line 1639
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setCurrentItem(I)V

    .line 1640
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFlashCardRecorded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1641
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(IZ)V

    .line 1646
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFlashCardRecorded()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1647
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1651
    :goto_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mPageNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1643
    :cond_7
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V

    goto :goto_3

    .line 1649
    :cond_8
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addScoreView()V

    goto :goto_4

    .line 1656
    :cond_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->doAfterCourseDone()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 218
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v3

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 219
    .local v1, "screenHeight":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    sub-int v3, v1, v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTotalHeight:I

    .line 222
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->initSoundPool()V

    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addHomeKeyWatcher()V

    .line 224
    new-instance v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .line 225
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v3, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;)V

    .line 226
    new-instance v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    .line 227
    new-instance v3, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .line 228
    if-eqz p1, :cond_2

    .line 229
    const-string v3, "key_template"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    .line 230
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    if-nez v3, :cond_1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onBackPressed()V

    .line 264
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->rid:Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->initUI()V

    .line 236
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->updateView()V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 240
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "rid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->rid:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "rid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->resourceId:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "courseId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCourseId:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "sub_res_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "subResType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "sub"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 245
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PARAM_COURSE_TICKET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 247
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->rid:Ljava/lang/String;

    .line 250
    :cond_3
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getFlag(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    .line 252
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v3, :cond_4

    .line 253
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->checkRequestNoWifi()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->requestSpeak()V

    .line 262
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->initUI()V

    .line 263
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "bid":Ljava/lang/String;
    .end local v2    # "subResType":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 2126
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 439
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 440
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onDestroy()V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->unRegisterMediaPlayService()V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->removeCallBack()V

    .line 451
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopHomeKeyWatcher()V

    .line 453
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a()Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$12;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$12;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method public onDownloadVideoFailed()V
    .locals 1

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 961
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 962
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 963
    const v0, 0x7f0f0093

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 965
    :cond_0
    return-void
.end method

.method public onDownloadVideoProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getLoadingView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getLoadingView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 917
    .local v0, "progressBar":Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setProgress(I)V

    .line 919
    .end local v0    # "progressBar":Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 921
    :cond_1
    return-void
.end method

.method public onDownloadVideoSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "full_path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 932
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 934
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->resetDownloadProgressNumber()V

    .line 935
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 936
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 938
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/i;->g(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 941
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->needRedownload:Z

    .line 942
    const v0, 0x7f0f0093

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 953
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mIsRedownload:Z

    .line 954
    return-void

    .line 945
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->prepareVideoLogic()V

    .line 947
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->needRedownload:Z

    goto :goto_0
.end method

.method public onEncodeEnd()V
    .locals 4

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isFinishBtnClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->executeUpload()V

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1028
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x1003

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1030
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1032
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1036
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopPlayVideo(Z)V

    goto :goto_0

    .line 1034
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStartPlayRecord(I)V

    goto :goto_1
.end method

.method public onEncodePermissionError()V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1049
    :cond_0
    const v0, 0x7f0f018e

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1050
    return-void
.end method

.method public onEncodeStart()V
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1015
    :cond_1
    return-void
.end method

.method public onEndOfOpenRecordUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1733
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_2

    .line 1734
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showVideoPlayBtnWithOutReplay()V

    .line 1741
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1742
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setVisibility(I)V

    .line 1744
    :cond_1
    return-void

    .line 1736
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1738
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onEndOfProgressAnim(I)V
    .locals 3
    .param p1, "scoreNum"    # I

    .prologue
    .line 1846
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSoundByScore(I)I

    move-result v0

    .line 1847
    .local v0, "soundId":I
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->playSound(I)V

    .line 1848
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 1849
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1851
    :cond_0
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->sendMessageEnablePlay(I)V

    .line 1852
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->sendMessDoAfterPalyScoreSound(I)V

    .line 1853
    return-void
.end method

.method public onEndOfShowPartOfRecordUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1788
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1789
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setVisibility(I)V

    .line 1791
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_2

    .line 1792
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1793
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1799
    :cond_1
    :goto_0
    return-void

    .line 1796
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->canTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1797
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mAudioSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->addToAudioList(ILjava/lang/String;)V

    .line 1962
    return-void
.end method

.method public onEndOfTranslateUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1770
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setVisibility(I)V

    .line 1773
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_3

    .line 1774
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1775
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1781
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1782
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1784
    :cond_2
    return-void

    .line 1778
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mNoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1779
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 2130
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f018e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 2131
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$5;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$5;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2138
    return-void
.end method

.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onBackPressed()V

    .line 2041
    return-void
.end method

.method public onFinishSubTask()V
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mIsCourseFinished:Z

    .line 1006
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onBackPressed()V

    .line 1007
    return-void
.end method

.method public onHomeLongPressed()V
    .locals 0

    .prologue
    .line 2214
    return-void
.end method

.method public onHomePressed()V
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 2209
    :cond_0
    return-void
.end method

.method public onInitFailed()V
    .locals 1

    .prologue
    .line 2192
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$7;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$7;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2201
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 646
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 647
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 648
    packed-switch p1, :pswitch_data_0

    .line 657
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 650
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->lowerVolume()V

    goto :goto_0

    .line 653
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->raiseVolume()V

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1439
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 1440
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onPause()V

    .line 1443
    :cond_0
    return-void
.end method

.method public onRecordPlayComplete(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v1, 0x1004

    .line 697
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeMessages(I)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->getRecordDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setProgress(I)V

    .line 703
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updatePlayStatusIv(I)V

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$13;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$13;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 712
    return-void
.end method

.method public onRecordPlayError(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updatePlayStatusIv(I)V

    .line 729
    :cond_0
    return-void
.end method

.method public onRecordPlayPrepared(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->getRecordDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setMax(I)V

    .line 685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updatePlayStatusIv(I)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessage(I)Z

    .line 688
    return-void
.end method

.method public onRecordPlayStart(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updatePlayStatusIv(I)V

    .line 675
    :cond_0
    return-void
.end method

.method public onRecordPlayStop(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 734
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updatePlayStatusIv(I)V

    .line 737
    :cond_0
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 2023
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_1

    .line 2024
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->requestSpeak()V

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2026
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->doServerRequest()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 387
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 389
    return-void
.end method

.method public onResult(ILcom/jiliguala/niuwa/module/speak/model/Result;)V
    .locals 3
    .param p1, "score"    # I
    .param p2, "result"    # Lcom/jiliguala/niuwa/module/speak/model/Result;

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->validAudioExist(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->changeRecordIconByRecordStatus(Z)V

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v0, :cond_1

    .line 1719
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->disableRecordButton()V

    .line 1721
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-direct {p0, v0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->putScore(II)V

    .line 1722
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1424
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 1426
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1428
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onResume()V

    .line 1431
    :cond_0
    return-void
.end method

.method public onRun(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 2142
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2188
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 382
    const-string v0, "key_template"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 383
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1410
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onStart()V

    .line 1411
    return-void
.end method

.method public onStartDownloadVideo()V
    .locals 1

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 906
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 907
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a()V

    .line 909
    :cond_0
    return-void
.end method

.method public onStartProgressAnim()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1827
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_3

    .line 1828
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1830
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1835
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1836
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1838
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1839
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1841
    :cond_2
    return-void

    .line 1833
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->disablePlayFlashCard()V

    goto :goto_0
.end method

.method public onStartRecord()V
    .locals 1

    .prologue
    .line 1817
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->stopVideoAudioPlay(Z)V

    .line 1818
    return-void
.end method

.method public onStartVideoRecord()V
    .locals 4

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V

    .line 1088
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->validAudioExist(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    const/16 v1, 0x100e

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1093
    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 2107
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$3;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2112
    return-void
.end method

.method public onStopEvluate()V
    .locals 3

    .prologue
    .line 1706
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isShowVideo:Z

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mAudioSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->addToAudioList(ILjava/lang/String;)V

    .line 1710
    return-void
.end method

.method public onStopped()V
    .locals 1

    .prologue
    .line 2116
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$4;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2121
    return-void
.end method

.method public onUpLoadFailed()V
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->enableBtn(Z)V

    .line 990
    const-string v0, "\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 991
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideLoadingProgress()V

    .line 992
    return-void
.end method

.method public onUpLoadProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 981
    return-void
.end method

.method public onUpLoadStart()V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showLoadingProgress()V

    .line 976
    return-void
.end method

.method public onUpLoadSucceed()V
    .locals 0

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideLoadingProgress()V

    .line 1001
    return-void
.end method

.method public onVideoCheckPause()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$15;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->post(Ljava/lang/Runnable;)Z

    .line 834
    return-void
.end method

.method public onVideoPlayComplete()V
    .locals 1

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->removeCaptionView()V

    .line 794
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showVideoPlayBtnWithReplay(Z)V

    .line 795
    return-void
.end method

.method public onVideoPlayError(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 856
    const/16 v0, -0x26

    if-ne p1, v0, :cond_0

    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showVideoPlayBtnWithReplay(Z)V

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showVideoPlayBtnWithReplay(Z)V

    goto :goto_0
.end method

.method public onVideoPlayPaused()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;-><init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->post(Ljava/lang/Runnable;)Z

    .line 818
    return-void
.end method

.method public onVideoPlayPrepared()V
    .locals 4

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasVideoRecorded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideVideoPauseAndVideoMak()V

    .line 775
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addCaptionsView()V

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    iget v2, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->start:I

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->end:I

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStartPlayVideo(II)V

    .line 780
    return-void
.end method

.method public onVideoPlayResume()V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addCaptionsView()V

    .line 847
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideVideoPauseAndVideoMak()V

    .line 850
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideSpeaViewAndScoreView()V

    .line 852
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 866
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->requestSurfaceLayout(II)V

    .line 867
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1470
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 1472
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFocus:Z

    .line 1473
    if-eqz p1, :cond_0

    .line 1474
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 1476
    :cond_0
    return-void
.end method

.method public playFlashCard(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;Ljava/lang/String;)V
    .locals 0
    .param p1, "mSimpleMediaPlayer"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1148
    invoke-virtual {p1, p2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method public playRecordFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "currentSaveAudioFilePath"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x1007

    .line 1604
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeMessages(I)V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessage(I)Z

    .line 1608
    return-void
.end method

.method public prepareFlashCardLogic()V
    .locals 2

    .prologue
    .line 2068
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFlashCardRecorded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->validAudioExist(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    :goto_0
    return-void

    .line 2074
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showFlashCardMask()V

    .line 2075
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V

    .line 2076
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addScoreView()V

    goto :goto_0
.end method

.method public removeCaptionView()V
    .locals 2

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 840
    :cond_0
    return-void
.end method

.method public removeScoreView()V
    .locals 2

    .prologue
    .line 1965
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasAddScoreView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1966
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    .line 1967
    .local v0, "scoreView":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1968
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1971
    .end local v0    # "scoreView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 3

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 1453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1454
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const-string v1, "Step"

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->currentPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    const-string v1, "Time"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1461
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public showFadeAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2034
    const-string v0, "alpha"

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 2035
    return-void

    .line 2034
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showSpeaViewAndScoreView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1509
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v1, :cond_0

    .line 1510
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setVisibility(I)V

    .line 1512
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    .line 1513
    .local v0, "scoreView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1514
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1516
    :cond_1
    return-void
.end method

.method public showVideoPlayBtnWithOutReplay()V
    .locals 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1750
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1751
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1753
    :cond_1
    return-void
.end method

.method public showVideoPlayBtnWithReplay(Z)V
    .locals 3
    .param p1, "isNeedShowReplyBtn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1757
    if-eqz p1, :cond_2

    .line 1758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1763
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1764
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoMask:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    :cond_1
    return-void

    .line 1760
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mVideoPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startRecordByChiShen()V
    .locals 3

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getEvluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    :cond_0
    return-void
.end method

.method public stopHomeKeyWatcher()V
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->d()V

    .line 2533
    :cond_0
    return-void
.end method

.method public stopRecordByChiShen()V
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->stopRecordByChiShen()V

    .line 1813
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1204
    const-string v0, "[surfaceChanged]"

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 1205
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->handleMalFormedVideo()V

    .line 1211
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1173
    const-string v1, "[surfaceCreated]..."

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 1174
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1176
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1177
    :cond_0
    const-string v1, "[set visibility]...surface is inValid."

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 1178
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid surface view."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 1180
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1181
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1188
    :cond_1
    :goto_0
    return-void

    .line 1185
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v1, :cond_1

    .line 1186
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1229
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :goto_0
    const-string v1, "[surfaceDestroyed]"

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
