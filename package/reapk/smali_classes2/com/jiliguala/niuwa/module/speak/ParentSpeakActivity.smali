.class public Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/flashcard/FlashCardInterface;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;
.implements Lcom/jiliguala/niuwa/module/speak/MaskListener;
.implements Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;
.implements Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;
.implements Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;,
        Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;,
        Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;,
        Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    }
.end annotation


# static fields
.field private static final AUTO_RECORD_DELAY_CARD:J = 0x1770L

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

.field private lastPosIndex:I

.field private mAudioSavePath:Ljava/lang/String;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mCancelCd:Z

.field private mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

.field private mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCountDownDlg:Landroid/app/Dialog;

.field private mCountDownTv:Landroid/widget/TextView;

.field private mCounter:I

.field private mCourseId:Ljava/lang/String;

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

.field private mEvaluateScoreTips:Landroid/widget/TextView;

.field private mExcellentSoundId:I

.field private mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

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

.field mNoTouchListener:Landroid/view/View$OnTouchListener;

.field private mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

.field private mOldScore:Landroid/widget/TextView;

.field private mPageNum:Landroid/widget/TextView;

.field private mPerfectSoundId:I

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mRecordSoundId:I

.field private mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;

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

.field private mShowScore:Z

.field private mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

.field private mSpeakCardModelTemplete:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

.field public mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

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

.field private mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

.field private mSubTaskID:Ljava/lang/String;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

.field private mTotalHeight:I

.field private mTryAgainSoundId:I

.field private mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field private needRedownload:Z

.field private resourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSentence:Ljava/util/ArrayList;

    .line 110
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFocus:Z

    .line 111
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$1;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->canTouchListener:Landroid/view/View$OnTouchListener;

    .line 117
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$4;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNoTouchListener:Landroid/view/View$OnTouchListener;

    .line 123
    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    .line 124
    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->lastPosIndex:I

    .line 132
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->needRedownload:Z

    .line 159
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->startPlay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->playRecordByXunFeiKeDa()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasAddSpeakView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasAddScoreView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->isNextBtnVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->removeAllMaskView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->enablePlayFlashCardOrVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTotalHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCounter:I

    return v0
.end method

.method static synthetic access$2010(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCounter:I

    return v0
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->playCountDownAudioEffect()V

    return-void
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->autoRecord()V

    return-void
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->autoShowRecord()V

    return-void
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->pauseAll()V

    return-void
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->scaleItem(I)V

    return-void
.end method

.method static synthetic access$2802(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    return v0
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showOldScoreText()V

    return-void
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->setUiHasBg()V

    return-void
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFlashCardRecorded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showRecordError()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->putRealScore(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mPageNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mShowScore:Z

    return v0
.end method

.method private addCaptionsView()V
    .locals 4

    .prologue
    .line 844
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 845
    .local v1, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 846
    new-instance v2, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    .line 847
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    const v3, 0x7f090150

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setId(I)V

    .line 848
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->updateWithColorStyle()V

    .line 849
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->et:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setEngTxt(Ljava/lang/String;)V

    .line 850
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->ct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setChineseTxt(Ljava/lang/String;)V

    .line 851
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 853
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 854
    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 855
    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 856
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :goto_0
    return-void

    .line 858
    .restart local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v2

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->et:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setEngTxt(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v2

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->ct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setChineseTxt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    .end local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private addScoreView()V
    .locals 3

    .prologue
    .line 1170
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->addScoreView(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private autoRecord()V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->toggleRecord()V

    .line 1526
    :cond_0
    return-void
.end method

.method private autoShowRecord()V
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mHasAddedSpeakView:Z

    if-nez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addSpeakView()V

    .line 810
    :cond_0
    return-void
.end method

.method private enablePlayFlashCardOrVideo()V
    .locals 1

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->enablePlayFlashCard()V

    .line 1345
    :cond_0
    return-void
.end method

.method private executeUpload()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->updateMergeAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onFinishSubTask()V

    goto :goto_0
.end method

.method private getCountDownDlg()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1947
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1948
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1950
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 1951
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1000b4

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    .line 1952
    const v1, 0x7f0b0110

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1953
    .local v0, "contentView":Landroid/view/View;
    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownTv:Landroid/widget/TextView;

    .line 1954
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1955
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1956
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1958
    .end local v0    # "contentView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    return-object v1
.end method

.method private getDelayTimeBySound(I)J
    .locals 3
    .param p1, "soundId"    # I

    .prologue
    const-wide/16 v0, 0x3e8

    .line 1328
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTryAgainSoundId:I

    if-ne p1, v2, :cond_1

    .line 1329
    const-wide/16 v0, 0xbb8

    .line 1337
    :cond_0
    :goto_0
    return-wide v0

    .line 1330
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mGoodJobSoundId:I

    if-ne p1, v2, :cond_2

    .line 1331
    const-wide/16 v0, 0x7d0

    goto :goto_0

    .line 1332
    :cond_2
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mGreatSoundId:I

    if-eq p1, v2, :cond_0

    .line 1334
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mExcellentSoundId:I

    if-ne p1, v2, :cond_0

    goto :goto_0
.end method

.method private getNormaCaptionslView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;
    .locals 7

    .prologue
    .line 872
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 873
    .local v3, "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    iget-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;

    .line 874
    .local v2, "englishTxt":Ljava/lang/String;
    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->cword:Ljava/lang/String;

    .line 875
    .local v0, "chineseTxt":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    if-nez v5, :cond_0

    .line 876
    new-instance v5, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    .line 877
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->updateNormalColorStyle()V

    .line 878
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 879
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 880
    const/16 v5, 0xc

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 881
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setEngTxt(Ljava/lang/String;)V

    .line 884
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;->setChineseTxt(Ljava/lang/String;)V

    .line 885
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mNormalCaptionsView:Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v0    # "chineseTxt":Ljava/lang/String;
    .end local v2    # "englishTxt":Ljava/lang/String;
    .end local v3    # "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :goto_0
    return-object v5

    .line 886
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getScore()Ljava/lang/String;
    .locals 4

    .prologue
    .line 894
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakCardModelTemplete:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;->sentences:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;

    .line 895
    .local v1, "speakSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->score:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .end local v1    # "speakSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    :goto_0
    return-object v2

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getScoreView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1417
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1418
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1419
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09048f

    if-ne v2, v3, :cond_0

    .line 1423
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1417
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1423
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

    .line 1354
    if-ge p1, v0, :cond_0

    .line 1355
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTryAgainSoundId:I

    .line 1363
    :goto_0
    return v0

    .line 1356
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 1357
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mGoodJobSoundId:I

    goto :goto_0

    .line 1358
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 1359
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mGreatSoundId:I

    goto :goto_0

    .line 1360
    :cond_2
    if-lt p1, v2, :cond_3

    const/16 v0, 0x5a

    if-ge p1, v0, :cond_3

    .line 1361
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mExcellentSoundId:I

    goto :goto_0

    .line 1363
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mPerfectSoundId:I

    goto :goto_0
.end method

.method private getSpeakView()Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
    .locals 3

    .prologue
    .line 1437
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1438
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1439
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v2, :cond_0

    .line 1440
    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .line 1443
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1437
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1443
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hasAddScoreView()Z
    .locals 4

    .prologue
    .line 1447
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1448
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1449
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09048f

    if-ne v2, v3, :cond_0

    .line 1450
    const/4 v2, 0x1

    .line 1453
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v2

    .line 1447
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasAddSpeakView()Z
    .locals 3

    .prologue
    .line 1427
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1428
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1429
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    if-eqz v2, :cond_0

    .line 1430
    const/4 v2, 0x1

    .line 1433
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v2

    .line 1427
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1433
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasFlashCardRecorded()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method private hasVideoRecorded()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 908
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 909
    .local v1, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->audiourl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 912
    .end local v1    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :cond_0
    :goto_0
    return v2

    .line 910
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private hideFlashCardMask()V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1520
    :cond_0
    return-void
.end method

.method private hideLoadingProgress()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1076
    :cond_0
    return-void
.end method

.method private initSoundPool()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/jiliguala/niuwa/logic/o/a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/o/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->countingSoundId:I

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTryAgainSoundId:I

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mExcellentSoundId:I

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mGoodJobSoundId:I

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mGreatSoundId:I

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mPerfectSoundId:I

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mRecordSoundId:I

    .line 187
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 328
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->setContentView(I)V

    .line 329
    const v0, 0x7f090546

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->e()V

    .line 331
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 336
    const v0, 0x7f0903bf

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mPageNum:Landroid/widget/TextView;

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mPageNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    const v0, 0x7f0903a6

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    const v0, 0x7f09059a

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 345
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .line 346
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    sget-object v1, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_PARENT_SPEAK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setType(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setSpeakView(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V

    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSubTaskID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setSubTaskId(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setRid(Ljava/lang/String;)V

    .line 350
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    .line 351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->registerMediaPlayService()V

    .line 353
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setNoScroll(Z)V

    .line 354
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;-><init>(Landroid/support/v4/app/ag;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->setNeedBottomBarPlaceHolder(Z)V

    .line 356
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->setBgColorId(I)V

    .line 357
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->setFlashCard(Z)V

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 359
    const v0, 0x7f09020f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    .line 361
    const v0, 0x7f0901ec

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    .line 363
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->registerScreenIntentFilter()V

    .line 364
    return-void
.end method

.method private isNextBtnVisible()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isNextBtnVisible()Z

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private justSetVideoSourceButNotPrepare()V
    .locals 3

    .prologue
    .line 903
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "filePath":Ljava/lang/String;
    return-void
.end method

.method private onShowScore()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1285
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showFlashCardMask()V

    .line 1286
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    move-result-object v0

    .line 1287
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->disablePlayFlashCard()V

    .line 1289
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->hideWordContainer()V

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mEvaluateScoreTips:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1295
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    :cond_2
    return-void
.end method

.method private pauseAll()V
    .locals 4

    .prologue
    .line 819
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x1003

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 824
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopVideoAudioPlay(Z)V

    .line 826
    :cond_1
    return-void
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 291
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->releaseSoundPool()V

    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onBackPressed()V

    .line 293
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->finish()V

    .line 294
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->overridePendingTransition(II)V

    .line 295
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private playCountDownAudioEffect()V
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->countingSoundId:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;->b(I)V

    .line 1533
    :cond_0
    return-void
.end method

.method private playRecordByXunFeiKeDa()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onStartPlayRecord(I)V

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/o/a;->b(I)V

    .line 193
    :cond_0
    return-void
.end method

.method private putRealScore(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "score"    # I

    .prologue
    .line 496
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v1, v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->putRealScores(Ljava/lang/String;I)V

    .line 498
    return-void
.end method

.method private putScore(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "score"    # I

    .prologue
    .line 491
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v1, v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->putScores(Ljava/lang/String;I)V

    .line 493
    return-void
.end method

.method private registerScreenIntentFilter()V
    .locals 3

    .prologue
    .line 367
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mScreenFilter:Landroid/content/IntentFilter;

    .line 368
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mScreenBroadcastReceiver:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$d;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mScreenFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private releaseSoundPool()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/o/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/o/a;->a()V

    .line 199
    :cond_0
    return-void
.end method

.method private removeAllMaskView()V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->removeSpeakView()V

    .line 765
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->removeScoreView()V

    .line 766
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideNextBtn()V

    .line 767
    return-void
.end method

.method private removeSpeakView()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasAddSpeakView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSpeakView()Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 773
    :cond_0
    return-void
.end method

.method private reportSublessonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "button"    # Ljava/lang/String;

    .prologue
    .line 1161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1162
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const-string v1, "BUTTON"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sublesson Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1165
    return-void
.end method

.method private scaleItem(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 1034
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    if-nez v5, :cond_1

    .line 1048
    :cond_0
    return-void

    .line 1035
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    invoke-virtual {v5, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v3

    .line 1036
    .local v3, "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    if-eqz v3, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1038
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v2

    .line 1039
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

    .line 1040
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    instance-of v5, v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    if-eqz v5, :cond_2

    move-object v5, v1

    .line 1041
    check-cast v5, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    .line 1042
    .local v4, "picUrl":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1043
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

    .line 1321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeMessages(I)V

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getDelayTimeBySound(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1325
    return-void
.end method

.method private sendMessageEnablePlay(I)V
    .locals 4
    .param p1, "soundId"    # I

    .prologue
    const/16 v1, 0x100b

    .line 1314
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeMessages(I)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getDelayTimeBySound(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1318
    return-void
.end method

.method private setUiHasBg()V
    .locals 4

    .prologue
    .line 1829
    const/4 v1, 0x0

    .line 1830
    .local v1, "hasBg":Z
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    if-le v2, v3, :cond_0

    .line 1831
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 1832
    .local v0, "fc":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->clr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1834
    .end local v0    # "fc":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    const v2, 0x7f080196

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1835
    return-void

    .line 1832
    .restart local v0    # "fc":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1834
    .end local v0    # "fc":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :cond_2
    const v2, 0x7f0802d1

    goto :goto_1
.end method

.method private showCountDownPage()V
    .locals 2

    .prologue
    .line 1962
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCancelCd:Z

    if-nez v0, :cond_0

    .line 1963
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCountDownDlg()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    .line 1964
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCountDownDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1965
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCounter:I

    .line 1966
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x100d

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessage(I)Z

    .line 1970
    :goto_0
    return-void

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showFlashCardMask()V
    .locals 2

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardMaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1514
    :cond_0
    return-void
.end method

.method private showLoadingProgress()V
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1070
    :cond_1
    return-void
.end method

.method private showOldScoreText()V
    .locals 5

    .prologue
    .line 1812
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mShowScore:Z

    if-eqz v2, :cond_0

    .line 1813
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1814
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->getScores()Landroid/util/SparseArray;

    move-result-object v1

    .line 1815
    .local v1, "scores":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    if-le v2, v3, :cond_2

    .line 1816
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1817
    .local v0, "score":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1818
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u5206"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    .end local v0    # "score":Ljava/lang/String;
    .end local v1    # "scores":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1820
    .restart local v0    # "score":Ljava/lang/String;
    .restart local v1    # "scores":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1823
    .end local v0    # "score":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showRecordError()V
    .locals 1

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onShowScore()V

    .line 1622
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->onError()V

    .line 1625
    :cond_0
    return-void
.end method

.method private startPlay()V
    .locals 6

    .prologue
    .line 1080
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1082
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v2, 0x100f

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1090
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopPlayAudioRecordAndResetProgress()V
    .locals 2

    .prologue
    const/16 v1, 0x1004

    .line 1057
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeMessages(I)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onStopPlayRecord(I)V

    .line 1061
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setProgress(I)V

    .line 1064
    :cond_1
    return-void
.end method

.method private stopVideoAudioPlay(Z)V
    .locals 1
    .param p1, "isNeedShowReplayBtn"    # Z

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1054
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->initContainer(Ljava/util/ArrayList;)V

    .line 833
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSentence:Ljava/util/ArrayList;

    .line 834
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mPageNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSentence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSentence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 836
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSentence:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5206"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mOldScore:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addHomeKeyWatcher()V
    .locals 1

    .prologue
    .line 1973
    new-instance v0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    .line 1974
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;)V

    .line 1975
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->c()V

    .line 1976
    return-void
.end method

.method public addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fl"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "removeScoreView"    # Z

    .prologue
    .line 1095
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;-><init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 1096
    .local v1, "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v3, 0x1008

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1097
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1098
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v0, v4, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1099
    return-void
.end method

.method public addSpeakView()V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mHasAddedSpeakView:Z

    .line 777
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 799
    return-void
.end method

.method public addView(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;)V
    .locals 4
    .param p1, "obj"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    .prologue
    .line 1409
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1410
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1411
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1413
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;->a:Landroid/view/View;

    iget-object v3, p1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    return-void
.end method

.method public calculateGrade()V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 980
    return-void
.end method

.method public cancelCurrentAudioRecord()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public checkVideoPlay()V
    .locals 0

    .prologue
    .line 1223
    return-void
.end method

.method public clickFlashCardItemToPlay()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 994
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isTranslateUp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isWaitingRecord()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 999
    .local v0, "isTranslateUp":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 1000
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1001
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v2, :cond_2

    .line 1002
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(IZ)V

    .line 1004
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideSpeaViewAndScoreView()V

    .line 1005
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showOldScoreText()V

    goto :goto_0

    .line 998
    .end local v0    # "isTranslateUp":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->sendCourseTaskExitReport()V

    .line 962
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->performExit()V

    .line 963
    return-void
.end method

.method protected createSpeakViewWidget()Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;
    .locals 1

    .prologue
    .line 802
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public doAfterCourseDone()V
    .locals 4

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x1003

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1188
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->executeUpload()V

    goto :goto_0
.end method

.method public getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;
    .locals 4

    .prologue
    .line 567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 568
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 569
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090150

    if-ne v2, v3, :cond_0

    .line 570
    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    .line 573
    .end local v0    # "childView":Landroid/view/View;
    :goto_1
    return-object v0

    .line 567
    .restart local v0    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method public getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1476
    :try_start_0
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    iget v9, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v1

    .line 1477
    .local v1, "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    if-eqz v1, :cond_1

    .line 1478
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v5

    .line 1479
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

    .line 1480
    .local v4, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_0

    instance-of v9, v4, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    if-eqz v9, :cond_0

    .line 1481
    move-object v0, v4

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    move-object v3, v0

    .line 1482
    .local v3, "flashCardFragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->getSentenceId()Ljava/lang/String;

    move-result-object v6

    .line 1483
    .local v6, "id":Ljava/lang/String;
    if-eqz v6, :cond_0

    iget-object v9, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .line 1492
    .end local v1    # "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    .end local v3    # "flashCardFragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    .end local v4    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v5    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "id":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v1    # "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :cond_1
    move-object v3, v7

    .line 1489
    goto :goto_0

    .line 1490
    .end local v1    # "dataModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v7

    .line 1492
    goto :goto_0
.end method

.method public getEvluateStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1371
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardAdapter:Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v1

    .line 1372
    .local v1, "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->DEFAULT_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mAudioSavePath:Ljava/lang/String;

    .line 1373
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1374
    :cond_0
    const/4 v2, 0x0

    .line 1379
    .end local v1    # "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :goto_0
    return-object v2

    .line 1376
    .restart local v1    # "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :cond_1
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1377
    .end local v1    # "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :catch_0
    move-exception v0

    .line 1379
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public getFragmentMgr()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method

.method public getSaveFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1386
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 1387
    .local v1, "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    .end local v1    # "flashCardModel":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    :goto_0
    return-object v2

    .line 1388
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public getSubTaskTicket()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    return-object v0
.end method

.method public hideNextBtn()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->hideNextBtn()V

    .line 270
    :cond_0
    return-void
.end method

.method public hideSpeaViewAndScoreView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1012
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setVisibility(I)V

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    .line 1016
    .local v0, "scoreView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    :cond_1
    return-void
.end method

.method public initSpeachVp(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V
    .locals 5
    .param p1, "speakCardModelTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .prologue
    .line 731
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 732
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showCountDownPage()V

    .line 737
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->hasSentences()Z

    move-result v3

    if-nez v3, :cond_1

    .line 751
    :goto_1
    return-void

    .line 735
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 740
    :cond_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakCardModelTemplete:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .line 741
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;->sentences:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakSentences:Ljava/util/ArrayList;

    .line 742
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v1, "sentencess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakSentences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;

    .line 744
    .local v0, "s":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;-><init>()V

    .line 745
    .local v2, "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->_id:Ljava/lang/String;

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->_id:Ljava/lang/String;

    .line 746
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->audiourl:Ljava/lang/String;

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->audiourl:Ljava/lang/String;

    .line 747
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->score:Ljava/lang/String;

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    .line 748
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 750
    .end local v0    # "s":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    .end local v2    # "videoSentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->initContainer(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public isLastPage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1196
    :try_start_0
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1199
    :cond_0
    :goto_0
    return v1

    .line 1197
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onAudioRecordCancel(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 534
    return-void
.end method

.method public onAudioRecordStart()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onStopPlayVideo(Z)V

    .line 525
    return-void
.end method

.method public onAudioRecordStop()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mIsCourseFinished:Z

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 276
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 280
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->performExit()V

    goto :goto_0
.end method

.method public onBiginOfSpeech()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x1009

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessage(I)Z

    .line 1274
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 393
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 398
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onBackPressed()V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x7f09059a
        :pswitch_0
    .end packed-switch
.end method

.method public onClickNextBtn()V
    .locals 4

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onStopPlayRecord(I)V

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->isLastPage()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    const-string v2, "next"

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->reportSublessonClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :goto_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    .line 1134
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideFlashCardMask()V

    .line 1136
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardViewPager:Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->setCurrentItem(I)V

    .line 1138
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFlashCardRecorded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1139
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(IZ)V

    .line 1144
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFlashCardRecorded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1145
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1149
    :goto_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1150
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mPageNum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showOldScoreText()V

    .line 1153
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->setUiHasBg()V

    .line 1158
    :goto_3
    return-void

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addSpeakView()V

    goto :goto_1

    .line 1147
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addScoreView()V

    goto :goto_2

    .line 1155
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->doAfterCourseDone()V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 209
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTotalHeight:I

    .line 212
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->initSoundPool()V

    .line 213
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addHomeKeyWatcher()V

    .line 214
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;)V

    .line 216
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    .line 217
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .line 218
    if-eqz p1, :cond_2

    .line 219
    const-string v0, "key_template"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onBackPressed()V

    .line 241
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->initUI()V

    .line 225
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->updateView()V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->resourceId:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subtask_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSubTaskID:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "course_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCourseId:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PARAM_COURSE_TICKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 233
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mc_pc_sub_task_ticket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 234
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancel_cd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCancelCd:Z

    .line 235
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_score"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mShowScore:Z

    .line 240
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->initUI()V

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 1556
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onDestroy()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->unRegisterMediaPlayService()V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->removeCallBack()V

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopHomeKeyWatcher()V

    .line 317
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a()Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$5;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public onDownloadVideoFailed()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public onDownloadVideoProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 628
    return-void
.end method

.method public onDownloadVideoSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "full_path"    # Ljava/lang/String;

    .prologue
    .line 633
    return-void
.end method

.method public onEncodeEnd()V
    .locals 4

    .prologue
    .line 693
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isFinishBtnClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->executeUpload()V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x1003

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 706
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    goto :goto_0

    .line 708
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onStartPlayRecord(I)V

    goto :goto_0
.end method

.method public onEncodePermissionError()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 719
    :cond_0
    const v0, 0x7f0f018e

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 720
    return-void
.end method

.method public onEncodeStart()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 689
    :cond_1
    return-void
.end method

.method public onEndOfOpenRecordUI()V
    .locals 0

    .prologue
    .line 1228
    return-void
.end method

.method public onEndOfProgressAnim(I)V
    .locals 3
    .param p1, "scoreNum"    # I

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1305
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSoundByScore(I)I

    move-result v0

    .line 1306
    .local v0, "soundId":I
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFocus:Z

    if-eqz v1, :cond_1

    .line 1307
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->playSound(I)V

    .line 1309
    :cond_1
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->sendMessageEnablePlay(I)V

    .line 1310
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->sendMessDoAfterPalyScoreSound(I)V

    .line 1311
    return-void
.end method

.method public onEndOfShowPartOfRecordUI()V
    .locals 0

    .prologue
    .line 1238
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mAudioSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->addToAudioList(ILjava/lang/String;)V

    .line 1397
    return-void
.end method

.method public onEndOfTranslateUI()V
    .locals 0

    .prologue
    .line 1233
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f018e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1561
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$11;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$11;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1566
    return-void
.end method

.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onBackPressed()V

    .line 1472
    return-void
.end method

.method public onFinishSubTask()V
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mIsCourseFinished:Z

    .line 680
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onBackPressed()V

    .line 681
    return-void
.end method

.method public onHomeLongPressed()V
    .locals 0

    .prologue
    .line 1649
    return-void
.end method

.method public onHomePressed()V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopPlayAudioRecordAndResetProgress()V

    .line 1644
    :cond_0
    return-void
.end method

.method public onInitFailed()V
    .locals 1

    .prologue
    .line 1629
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$3;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1636
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 421
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 422
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 423
    packed-switch p1, :pswitch_data_0

    .line 432
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 425
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->lowerVolume()V

    goto :goto_0

    .line 428
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->raiseVolume()V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 953
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 954
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onPause()V

    .line 957
    :cond_0
    return-void
.end method

.method public onRecordPlayComplete(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v1, 0x1004

    .line 472
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeMessages(I)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->getRecordDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setProgress(I)V

    .line 478
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updatePlayStatusIv(I)V

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$6;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$6;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    return-void
.end method

.method public onRecordPlayError(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    const v1, 0x7f0802f5

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updatePlayStatusIv(I)V

    .line 509
    :cond_0
    return-void
.end method

.method public onRecordPlayPrepared(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->getRecordDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setMax(I)V

    .line 460
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updatePlayStatusIv(I)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method

.method public onRecordPlayStart(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updatePlayStatusIv(I)V

    .line 450
    :cond_0
    return-void
.end method

.method public onRecordPlayStop(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updatePlayStatusIv(I)V

    .line 517
    :cond_0
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->doServerRequest()V

    .line 1461
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 257
    return-void
.end method

.method public onResult(ILcom/jiliguala/niuwa/module/speak/model/Result;)V
    .locals 3
    .param p1, "score"    # I
    .param p2, "result"    # Lcom/jiliguala/niuwa/module/speak/model/Result;

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->validAudioExist(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->changeRecordIconByRecordStatus(Z)V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->disableRecordButton()V

    .line 1217
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-direct {p0, v0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->putScore(II)V

    .line 1218
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 938
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 940
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 942
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onResume()V

    .line 945
    :cond_0
    return-void
.end method

.method public onRetryClick()V
    .locals 3

    .prologue
    .line 1263
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    const-string v2, "redo"

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->reportSublessonClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideFlashCardMask()V

    .line 1268
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->clickFlashCardItemToPlay()V

    .line 1269
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRun(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1571
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1618
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string v0, "key_template"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTemplate:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 924
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onStart()V

    .line 925
    return-void
.end method

.method public onStartDownloadVideo()V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 621
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a()V

    .line 623
    :cond_0
    return-void
.end method

.method public onStartProgressAnim()V
    .locals 2

    .prologue
    .line 1278
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onShowScore()V

    .line 1279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mBackBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1282
    :cond_0
    return-void
.end method

.method public onStartRecord()V
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mRecordSoundId:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->playSound(I)V

    .line 1257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->stopVideoAudioPlay(Z)V

    .line 1258
    return-void
.end method

.method public onStartVideoRecord()V
    .locals 4

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addSpeakView()V

    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->validAudioExist(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    const/16 v1, 0x100e

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 761
    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 1537
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$9;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$9;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1542
    return-void
.end method

.method public onStopEvluate()V
    .locals 3

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mAudioSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->addToAudioList(ILjava/lang/String;)V

    .line 1206
    return-void
.end method

.method public onStopped()V
    .locals 1

    .prologue
    .line 1546
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$10;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$10;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1551
    return-void
.end method

.method public onUpLoadFailed()V
    .locals 1

    .prologue
    .line 657
    const-string v0, "\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 658
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideLoadingProgress()V

    .line 659
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->showNextButton()V

    .line 662
    :cond_0
    return-void
.end method

.method public onUpLoadProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 649
    return-void
.end method

.method public onUpLoadStart()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showLoadingProgress()V

    .line 644
    return-void
.end method

.method public onUpLoadSucceed()V
    .locals 4

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideLoadingProgress()V

    .line 671
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->getSectionCompleteTemplete()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->setSectionScoreMap(Ljava/util/Map;)V

    .line 674
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1023

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 675
    return-void
.end method

.method public onVideoCheckPause()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$7;-><init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->post(Ljava/lang/Runnable;)Z

    .line 589
    return-void
.end method

.method public onVideoPlayComplete()V
    .locals 0

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->removeCaptionView()V

    .line 564
    return-void
.end method

.method public onVideoPlayError(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 608
    return-void
.end method

.method public onVideoPlayPaused()V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method public onVideoPlayPrepared()V
    .locals 1

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasVideoRecorded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addCaptionsView()V

    .line 558
    :cond_0
    return-void
.end method

.method public onVideoPlayResume()V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addCaptionsView()V

    .line 601
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideSpeaViewAndScoreView()V

    .line 603
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 613
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 984
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 986
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFocus:Z

    .line 987
    if-eqz p1, :cond_0

    .line 988
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 990
    :cond_0
    return-void
.end method

.method public playFlashCard(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;Ljava/lang/String;)V
    .locals 0
    .param p1, "mSimpleMediaPlayer"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 815
    invoke-virtual {p1, p2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public playRecordFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "currentSaveAudioFilePath"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x1007

    .line 1108
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mFlashCardPlayList:Ljava/util/List;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    const-string v2, "play"

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->reportSublessonClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeMessages(I)V

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessage(I)Z

    .line 1117
    return-void

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public prepareFlashCardLogic()V
    .locals 2

    .prologue
    .line 1498
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFlashCardRecorded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->validAudioExist(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    :goto_0
    return-void

    .line 1504
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showFlashCardMask()V

    .line 1505
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addSpeakView()V

    .line 1506
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addScoreView()V

    goto :goto_0
.end method

.method public removeCaptionView()V
    .locals 2

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCaptionView()Lcom/jiliguala/niuwa/module/speak/view/CaptionsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 595
    :cond_0
    return-void
.end method

.method public removeScoreView()V
    .locals 2

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasAddScoreView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1401
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    .line 1402
    .local v0, "scoreView":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1406
    .end local v0    # "scoreView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 3

    .prologue
    .line 966
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 968
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v1, "Step"

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->currentPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v1, "Time"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 975
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public showFadeAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1465
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

    .line 1466
    return-void

    .line 1465
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

    .line 1023
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakViewWidget:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setVisibility(I)V

    .line 1026
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getScoreView()Landroid/view/View;

    move-result-object v0

    .line 1027
    .local v0, "scoreView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    :cond_1
    return-void
.end method

.method public startRecordByChiShen()V
    .locals 3

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getEvluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_0
    return-void
.end method

.method public stopHomeKeyWatcher()V
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->d()V

    .line 1982
    :cond_0
    return-void
.end method

.method public stopRecordByChiShen()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->stopRecordByChiShen()V

    .line 1252
    :cond_0
    return-void
.end method
