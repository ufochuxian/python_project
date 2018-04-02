.class public Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;


# static fields
.field public static final EXCLUSIVE:I = 0x0

.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final INCLUSIVE:I = 0x1

.field private static final MAX:I = 0x3e8

.field private static final MSG_REFRESH_PROGRESS:I = 0x1000

.field private static final MSG_RESET_PROGRESS:I = 0x1001

.field private static final REFRESH_INTERVAL:I = 0xc8

.field public static final REQUEST_CODE_FAV_TRIGGERED_PHONE_COMPLETE:I = 0xce8

.field public static final REQUEST_CODE_FAV_TRIGGERED_PROFILE_COMPLETE:I = 0xce7

.field public static final REQUEST_CODE_REPLY_TRIGGERED_PHONE_COMPLETE:I = 0xce6

.field public static final REQUEST_CODE_REPLY_TRIGGERED_PROFILE_COMPLETE:I = 0xce5

.field public static final SORTING_JUMP:I = 0x4

.field public static final SORTING_NEW:I = 0x1

.field public static final SORTING_OLD:I = 0x2

.field public static final SORTING_OWNER_ONLY:I = 0x3

.field public static final SORT_ASC:I = 0x0

.field public static final SORT_DESC:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animatorSet:Lcom/nineoldandroids/a/d;

.field private cameraIcon:Landroid/widget/ImageView;

.field private clickToRecordTv:Landroid/widget/TextView;

.field private copyPop:Landroid/widget/PopupWindow;

.field private equalizer:Landroid/widget/ImageView;

.field private firstTime:Z

.field isFirstTime:Z

.field private isReplayShowing:Z

.field private lastClickTime:J

.field private mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

.field public mContent:Ljava/lang/String;

.field private mCurrentId:I

.field private mCurrentScrollState:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mFavCntTv:Landroid/widget/TextView;

.field private mFlr:I

.field private mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

.field private mHandler:Landroid/os/Handler;

.field private mImgPath:Ljava/lang/String;

.field private mIsLoadingMore:Z

.field mJLGLTAGOnClickListener:Landroid/view/View$OnClickListener;

.field private mLock:Z

.field private mModifyPictureCallback:Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPoster:Landroid/view/View;

.field private mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

.field private mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mRecordStatus:Landroid/widget/ImageView;

.field private mRefId:Ljava/lang/String;

.field private mReplyContainer:Landroid/view/View;

.field private mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

.field private mRootId:Ljava/lang/String;

.field private mRoundCornerProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/String;

.field private mTtl:Ljava/lang/String;

.field private m_end_time:J

.field private m_start_time:J

.field private noMoreToLoad:Z

.field private player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

.field private prevSoundIv:Landroid/widget/ImageView;

.field private prevStatusIv:Landroid/widget/ImageView;

.field private progressDlg:Lcom/jiliguala/niuwa/common/a/g;

.field private recordBtn:Landroid/widget/ImageView;

.field private recordContainer:Landroid/view/View;

.field private recordTimeTv:Landroid/widget/TextView;

.field private redDotIv:Landroid/widget/ImageView;

.field private replyContentEt:Landroid/widget/EditText;

.field private replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

.field private retryRecordTv:Landroid/widget/TextView;

.field private rplyContainer:Landroid/view/View;

.field private sortingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->TAG:Ljava/lang/String;

    .line 99
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 596
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isFirstTime:Z

    .line 108
    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    .line 118
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->m_start_time:J

    .line 119
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->m_end_time:J

    .line 123
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isReplayShowing:Z

    .line 127
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->firstTime:Z

    .line 140
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mModifyPictureCallback:Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    .line 157
    new-instance v0, Lcom/nineoldandroids/a/d;

    invoke-direct {v0}, Lcom/nineoldandroids/a/d;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->animatorSet:Lcom/nineoldandroids/a/d;

    .line 162
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 165
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mJLGLTAGOnClickListener:Landroid/view/View$OnClickListener;

    .line 243
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mHandler:Landroid/os/Handler;

    .line 279
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 412
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->noMoreToLoad:Z

    .line 413
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$28;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$28;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    .line 431
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    .line 597
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->cameraIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->stopForumRecordPlay()V

    return-void
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startLoadingAnim(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mCurrentId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mModifyPictureCallback:Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyWithContent()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mCurrentScrollState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mLock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->upVoteOrDownVote()V

    return-void
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->hideReplyWithAnimation()V

    return-void
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startSoundEffect()V

    return-void
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->clickToRecordTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRecordStatus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->equalizer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->stopSoundEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isReplayShowing:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->retryRecordTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->redDotIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->enableBtns(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->toggleRecordContainer()V

    return-void
.end method

.method static synthetic access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Lcom/jiliguala/niuwa/common/a/g;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/common/a/g;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPoster:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showDeleteAudioConfirmDlg()V

    return-void
.end method

.method static synthetic access$3800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->noMoreToLoad:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->noMoreToLoad:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mIsLoadingMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFavCntTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->hideRecordContainer()V

    return-void
.end method

.method static synthetic access$4700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startSoundEffectAnim(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->stopSoundEffectAnim(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->dismissReply()V

    return-void
.end method

.method static synthetic access$5000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/Dialog;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->requestDeletePost(Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->prevSoundIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->prevSoundIv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->stopLoadingAnim(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->prevStatusIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->prevStatusIv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    return-object v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 1630
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 1631
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$19;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$19;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$20;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$20;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 1632
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 1630
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1648
    return-void
.end method

.method private dismissReply()V
    .locals 8

    .prologue
    const v7, 0x7f090156

    const v6, 0x7f0900fa

    const/4 v5, 0x1

    .line 930
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 932
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 933
    const v3, 0x7f0b0197

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 935
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 936
    .local v2, "width":I
    const/4 v1, -0x2

    .line 937
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 938
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 939
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 941
    const v3, 0x7f09004c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u662f\u5426\u505c\u6b62\u5f55\u97f3?"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$2;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u786e\u8ba4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$3;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "height":I
    .end local v2    # "width":I
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 967
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->cancelAudioRecordPlay()V

    .line 969
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->hideReplyWithAnimation()V

    goto :goto_0

    .line 962
    .restart local v0    # "dialog":Landroid/app/Dialog;
    .restart local v1    # "height":I
    .restart local v2    # "width":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "flr"    # I
    .param p3, "inclusive"    # I
    .param p4, "sort"    # I
    .param p5, "uid"    # Ljava/lang/String;

    .prologue
    .line 1495
    if-nez p4, :cond_0

    const-string v4, "asc"

    .line 1496
    .local v4, "sortParam":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v6

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 1497
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    .line 1498
    invoke-interface/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v0

    .line 1499
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 1500
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 1501
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mIsLoadingMore:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 1496
    invoke-virtual {v6, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 1502
    return-void

    .line 1495
    .end local v4    # "sortParam":Ljava/lang/String;
    :cond_0
    const-string v4, "desc"

    goto :goto_0

    .line 1501
    .restart local v4    # "sortParam":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_1
.end method

.method private enableBtns(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1317
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->retryRecordTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->cameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1323
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPoster:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1324
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 600
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .line 601
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;-><init>()V

    .line 605
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    :cond_0
    return-object v0
.end method

.method private hideRecordContainer()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->cancelAudioRecord()V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    return-void
.end method

.method private hideReplyWithAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 974
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->animatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/d;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 975
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isReplayShowing:Z

    .line 976
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 977
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 978
    .local v1, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 979
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 980
    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 1010
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->animatorSet:Lcom/nineoldandroids/a/d;

    new-array v3, v7, [Lcom/nineoldandroids/a/a;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 1011
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->animatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/d;->a()V

    .line 1013
    .end local v0    # "animator":Lcom/nineoldandroids/a/l;
    .end local v1    # "height":I
    :cond_0
    return-void
.end method

.method private initReplyUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 1327
    const v0, 0x7f09043f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->redDotIv:Landroid/widget/ImageView;

    .line 1328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->redDotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->equalizer:Landroid/widget/ImageView;

    .line 1330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->equalizer:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1331
    const v0, 0x7f09044e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    .line 1333
    const v0, 0x7f090438

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordBtn:Landroid/widget/ImageView;

    .line 1334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1336
    const v0, 0x7f090074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordContainer:Landroid/view/View;

    .line 1337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    const v0, 0x7f09045e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->retryRecordTv:Landroid/widget/TextView;

    .line 1340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->retryRecordTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    const v0, 0x7f090147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->clickToRecordTv:Landroid/widget/TextView;

    .line 1343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->clickToRecordTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1344
    const v0, 0x7f09043b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordTimeTv:Landroid/widget/TextView;

    .line 1345
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordTimeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    const v0, 0x7f090439

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    .line 1348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1351
    const v0, 0x7f09043a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRecordStatus:Landroid/widget/ImageView;

    .line 1352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRecordStatus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1354
    const v0, 0x7f09055f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->cameraIcon:Landroid/widget/ImageView;

    .line 1355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->cameraIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    const v0, 0x7f09044f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    .line 1357
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1359
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$14;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$14;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$15;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$15;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1391
    const v0, 0x7f090450

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPoster:Landroid/view/View;

    .line 1392
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPoster:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1394
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1399
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->cameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1401
    :cond_1
    return-void
.end method

.method private loadMoreData()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1592
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getCount()I

    move-result v6

    .line 1593
    .local v6, "count":I
    const/4 v2, 0x0

    .line 1594
    .local v2, "flr":I
    if-lez v6, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 1596
    .local v7, "lastForum":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    if-nez v7, :cond_1

    .line 1597
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$18;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$18;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1627
    .end local v7    # "lastForum":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_0
    :goto_0
    return-void

    .line 1605
    .restart local v7    # "lastForum":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_1
    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    .line 1607
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mIsLoadingMore:Z

    .line 1609
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1612
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    .line 1615
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    .line 1618
    :pswitch_2
    const/4 v5, 0x0

    .line 1619
    .local v5, "rootOwnerUid":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v0, :cond_2

    .line 1620
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->rootuid:Ljava/lang/String;

    .line 1622
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    .line 1609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 609
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    return-object v0
.end method

.method private refreshNewData()V
    .locals 1

    .prologue
    .line 1568
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    packed-switch v0, :pswitch_data_0

    .line 1580
    :goto_0
    return-void

    .line 1571
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doShowAscOrderAction()V

    goto :goto_0

    .line 1574
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doShowDescOrderAction()V

    goto :goto_0

    .line 1577
    :pswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doShowOwnerAction()V

    goto :goto_0

    .line 1568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 668
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    return-object v0
.end method

.method private replyWithContent()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1062
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPoster:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1063
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    .line 1066
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1067
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopPlayAudioRecord()V

    .line 1069
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1071
    const-string v2, "\u8bf7\u5148\u6dfb\u52a0\u56de\u590d\u6587\u5b57\u6216\u5f55\u97f3"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1072
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPoster:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1093
    :cond_2
    :goto_0
    return-void

    .line 1075
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1076
    const-string v0, "[\u4e00\u6bb5\u8bed\u97f3]"

    .line 1078
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1079
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1081
    :cond_6
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRefId:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v0, v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->replyWithContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v5, "Reply"

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 1085
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v2, :cond_2

    .line 1086
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1087
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Room"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->boid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string v5, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRefId:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string v5, "withPhoto"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string v2, "withAudio"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Post Reply"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1088
    :cond_7
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mTtl:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move v2, v4

    .line 1089
    goto :goto_2
.end method

.method private reportAmp(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v1, :cond_0

    .line 1513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1514
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Room"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    const-string v1, "Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Post Action"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1520
    .end local v0    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private requestDeletePost(Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 1723
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 1724
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 1725
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->b(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 1726
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 1727
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 1728
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;

    invoke-direct {v2, p0, p2, p3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;Landroid/view/View;)V

    .line 1729
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 1723
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1762
    return-void
.end method

.method private showConfirmDialog()V
    .locals 8

    .prologue
    const v7, 0x7f090156

    const v6, 0x7f0900fa

    const/4 v5, 0x1

    .line 1765
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1766
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1767
    const v3, 0x7f0b0197

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1769
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 1770
    .local v2, "width":I
    const/4 v1, -0x2

    .line 1771
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1772
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1773
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1775
    const v3, 0x7f09004c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u662f\u5426\u653e\u5f03\u56de\u590d?"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1777
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$25;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$25;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1783
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u786e\u8ba4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1784
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$26;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$26;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1805
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    :goto_0
    return-void

    .line 1806
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private showDeleteAudioConfirmDlg()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1405
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1406
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1407
    const v3, 0x7f0b008f

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1409
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 1410
    .local v2, "width":I
    const/4 v1, -0x2

    .line 1411
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1412
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1413
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1415
    const v3, 0x7f0900fa

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$16;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$16;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$17;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$17;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1441
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    :goto_0
    return-void

    .line 1442
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private showPop(Landroid/view/View;)V
    .locals 9
    .param p1, "tv"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 1096
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1097
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1098
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b0117

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1099
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v3, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    .line 1100
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1101
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1102
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$5;

    invoke-direct {v5, p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$5;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 1115
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1116
    .local v2, "mw":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1117
    .local v1, "mh":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    const/16 v5, 0x11

    invoke-virtual {v4, p1, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1120
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$6;

    invoke-direct {v5, p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$6;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1126
    return-void
.end method

.method private showReplyWithAnimation(Ljava/lang/String;)V
    .locals 8
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 883
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->animatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/d;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 884
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 885
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordTimeTv:Landroid/widget/TextView;

    const-string v3, "0\""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    :cond_0
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isReplayShowing:Z

    .line 889
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 890
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 891
    .local v1, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->rplyContainer:Landroid/view/View;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float v5, v1

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 892
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 893
    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$32;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$32;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 924
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->animatorSet:Lcom/nineoldandroids/a/d;

    new-array v3, v7, [Lcom/nineoldandroids/a/a;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 925
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->animatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/d;->a()V

    .line 927
    .end local v0    # "animator":Lcom/nineoldandroids/a/l;
    .end local v1    # "height":I
    :cond_1
    return-void
.end method

.method private startLoadingAnim(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 809
    const v1, 0x7f0803d6

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 811
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 812
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 815
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 816
    return-void
.end method

.method private startSoundEffect()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->equalizer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->equalizer:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startSoundEffectAnim(Landroid/widget/ImageView;)V

    .line 841
    return-void
.end method

.method private startSoundEffectAnim(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 819
    const v1, 0x7f0803d5

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 820
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 821
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 822
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 825
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 826
    return-void
.end method

.method private stopForumRecordPlay()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->prevSoundIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->prevSoundIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->stopSoundEffectAnim(Landroid/widget/ImageView;)V

    .line 796
    :cond_1
    return-void
.end method

.method private stopLoadingAnim(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 799
    const v1, 0x7f0803d6

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 800
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 801
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 802
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 805
    :cond_0
    const v1, 0x7f080351

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 806
    return-void
.end method

.method private stopSoundEffect()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->equalizer:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->stopSoundEffectAnim(Landroid/widget/ImageView;)V

    .line 845
    return-void
.end method

.method private stopSoundEffectAnim(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 829
    const v1, 0x7f0803d5

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 830
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 831
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 834
    :cond_0
    const v1, 0x7f080351

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    return-void
.end method

.method private toggleRecordContainer()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 854
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->recordContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private upVoteOrDownVote()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 738
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->loveRoot()I

    move-result v0

    .line 739
    .local v0, "count":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFavCntTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->zanOrNot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 742
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v3, :cond_0

    .line 743
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 744
    .local v2, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Room"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->boid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v3, "Title"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Post Like"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 748
    .end local v2    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 749
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 754
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFavCntTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 755
    return-void

    .line 751
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 752
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 1203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$10;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$10;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1211
    :cond_0
    return-void
.end method

.method public doJumpAction(I)V
    .locals 6
    .param p1, "flr"    # I

    .prologue
    .line 1448
    const/4 v0, 0x4

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    .line 1449
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->rply:I

    if-le p1, v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget p1, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->rply:I

    .line 1452
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1453
    const-string v0, "Jump"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->reportAmp(Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method public doResetListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1482
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1484
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->scrollTo(II)V

    .line 1486
    :cond_0
    return-void
.end method

.method public doShowAscOrderAction()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1466
    iput v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    .line 1467
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1468
    const-string v0, "Normal"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->reportAmp(Ljava/lang/String;)V

    .line 1469
    return-void
.end method

.method public doShowDescOrderAction()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1457
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    .line 1460
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1461
    const-string v0, "Reverse"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->reportAmp(Ljava/lang/String;)V

    .line 1462
    return-void
.end method

.method public doShowOwnerAction()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1472
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    .line 1473
    const/4 v5, 0x0

    .line 1474
    .local v5, "rootOwnerUid":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->rootuid:Ljava/lang/String;

    .line 1477
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1478
    const-string v0, "Poster Only"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->reportAmp(Ljava/lang/String;)V

    .line 1479
    return-void
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1158
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getRootPart()Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v0

    .line 1159
    .local v0, "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    return-object v0
.end method

.method public getSortingType()I
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->sortingType:I

    return v0
.end method

.method public getTotalFlr()I
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootForum:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->rply:I

    .line 1508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeRplyLogic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ttl"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "nick"    # Ljava/lang/String;

    .prologue
    .line 1137
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isReplayShowing:Z

    if-nez v1, :cond_0

    .line 1139
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mTtl:Ljava/lang/String;

    .line 1140
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRefId:Ljava/lang/String;

    .line 1141
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->equalizer:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showReplyWithAnimation(Ljava/lang/String;)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    const v1, 0x7f0f019b

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1152
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 759
    .local v0, "time":J
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->lastClickTime:J

    sub-long v2, v0, v4

    .line 760
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 761
    const/4 v4, 0x1

    .line 764
    :goto_0
    return v4

    .line 763
    :cond_0
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->lastClickTime:J

    .line 764
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isLock()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mLock:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xce6

    const/4 v2, -0x1

    .line 1017
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 1018
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 1019
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    packed-switch p1, :pswitch_data_0

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1021
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 1025
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0158

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 1028
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1030
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFavCntTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 1035
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 1036
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFavCntTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 1040
    :pswitch_2
    if-ne p2, v2, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1046
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0156

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 1047
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1049
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyWithContent()V

    goto :goto_0

    .line 1054
    :pswitch_3
    if-ne p2, v2, :cond_0

    .line 1055
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyWithContent()V

    goto :goto_0

    .line 1019
    :pswitch_data_0
    .packed-switch 0xce5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1220
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/app/Activity;)V

    .line 1221
    return-void
.end method

.method public onBack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 864
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isReplayShowing:Z

    if-eqz v1, :cond_4

    .line 865
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 869
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    .line 869
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 870
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 871
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showConfirmDialog()V

    .line 879
    :cond_2
    :goto_0
    return v0

    .line 875
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->dismissReply()V

    goto :goto_0

    .line 879
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1164
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 1165
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->addEventObserver()V

    .line 1166
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Post View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 1167
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .line 1168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$7;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$8;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$9;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$9;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 1199
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1236
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1237
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 1238
    const/4 v1, 0x0

    .line 1312
    :goto_0
    return-object v1

    .line 1240
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    .line 1242
    const-string v2, "rid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    .line 1243
    const-string v2, "lock"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mLock:Z

    .line 1244
    const-string v2, "flr"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFlr:I

    .line 1245
    const v2, 0x7f0b00b1

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1247
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f090221

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 1248
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 1249
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 1250
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$11;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$11;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1261
    const v2, 0x7f0901da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mEmptyView:Landroid/view/View;

    .line 1263
    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    .line 1264
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->setSubscription(Lrx/i/b;)V

    .line 1266
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mJLGLTAGOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->setmOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1267
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->setmOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1268
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1269
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setDescendantFocusability(I)V

    .line 1271
    const v2, 0x7f090451

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFavCntTv:Landroid/widget/TextView;

    .line 1274
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFavCntTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mReplyContainer:Landroid/view/View;

    .line 1278
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$13;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$13;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1307
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->initReplyUI(Landroid/view/View;)V

    .line 1309
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->notifyDataSetChanged()V

    .line 1310
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->autoRefresh()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1544
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 1545
    invoke-static {}, Lcom/jiliguala/niuwa/logic/c/a;->a()Lcom/jiliguala/niuwa/logic/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/c/a;->b()V

    .line 1546
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->onDestroy()V

    .line 1550
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_1

    .line 1551
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->stopForumRecordPlay()V

    .line 1552
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->player:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 1554
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1663
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroyView()V

    .line 1664
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->clearAll()V

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->copyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1669
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1229
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 1230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mContent:Ljava/lang/String;

    .line 1232
    return-void
.end method

.method public onLoginSucceed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1652
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mCurrentId:I

    const v2, 0x7f090451

    if-ne v1, v2, :cond_1

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, "rootNick":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getRootPart()Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1655
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getRootPart()Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->nick:Ljava/lang/String;

    .line 1657
    :cond_0
    invoke-virtual {p0, v3, v3, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->invokeRplyLogic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    .end local v0    # "rootNick":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isReplayShowing:Z

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopPlayAudioRecord()V

    .line 781
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->dismissReply()V

    .line 786
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 783
    :cond_2
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showPop(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1673
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onLowMemory()V

    .line 1674
    return-void
.end method

.method public onPause()V
    .locals 8

    .prologue
    .line 1533
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->m_end_time:J

    .line 1536
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->m_end_time:J

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->m_start_time:J

    sub-long v2, v4, v6

    .line 1537
    .local v2, "total":J
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1538
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Post_name"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v4, "View Post"

    long-to-int v5, v2

    invoke-static {v1, v4, v0, v5}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 1540
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 6
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    const/4 v4, 0x0

    .line 1559
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->firstTime:Z

    if-eqz v0, :cond_0

    .line 1560
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->firstTime:Z

    .line 1561
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mRootId:Ljava/lang/String;

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mFlr:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doServerRequest(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1565
    :goto_0
    return-void

    .line 1563
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->refreshNewData()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1524
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 1526
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    .line 1527
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->notifyDataSetChanged()V

    .line 1528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->m_start_time:J

    .line 1529
    return-void
.end method

.method public showDeleteConfirmDlg(Ljava/lang/String;ILandroid/view/View;Z)V
    .locals 10
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "isRoot"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1679
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1000b4

    invoke-direct {v4, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1681
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1682
    const v0, 0x7f0b0090

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1683
    const v0, 0x7f09004c

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1684
    .local v7, "tips":Landroid/widget/TextView;
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1686
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v8, v0, 0xa

    .line 1687
    .local v8, "width":I
    const/4 v6, -0x2

    .line 1688
    .local v6, "height":I
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Landroid/view/Window;->setLayout(II)V

    .line 1689
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1690
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1692
    const v0, 0x7f0900fa

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$21;

    invoke-direct {v1, p0, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$21;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1699
    const v0, 0x7f090156

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;ZLjava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1715
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v6    # "height":I
    .end local v7    # "tips":Landroid/widget/TextView;
    .end local v8    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 1716
    .restart local v4    # "dialog":Landroid/app/Dialog;
    .restart local v6    # "height":I
    .restart local v7    # "tips":Landroid/widget/TextView;
    .restart local v8    # "width":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1492
    :cond_1
    return-void
.end method

.method public updateThumb(Ljava/lang/String;)V
    .locals 3
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    .line 1584
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1585
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->cameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->replyContentEt:Landroid/widget/EditText;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/ad;->a(Landroid/widget/EditText;I)V

    .line 1588
    return-void
.end method
