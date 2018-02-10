.class public Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/flashcard/FlashCardInterface;
.implements Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;
.implements Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_CHANNEL_BG_COLOR:Ljava/lang/String; = "color"

.field public static final KEY_CHANNEL_DATA:Ljava/lang/String; = "data"

.field public static final KEY_CHANNEL_TTL:Ljava/lang/String; = "title"

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_LEVEL:Ljava/lang/String; = "LEVEL"

.field private static final MSG_DISMISS_PROGRESS_DLG:I = 0x1001

.field private static final MSG_SHOW_PROGRESS_DLG:I = 0x1000

.field private static final OFF_SCREEN_LIMIT:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bottomBar:Landroid/view/View;

.field curPos:I

.field private hasClickListTip:Z

.field private hasSendRequest:Z

.field isFromPractise:Z

.field private mCardMark:Landroid/widget/TextView;

.field private mChannelTitle:Landroid/widget/TextView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

.field private mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

.field private mFlashCardChnData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;

.field private mHlder:Landroid/os/Handler;

.field private mIndex:I

.field private mIsCourseFinished:Z

.field private mLevel:I

.field private mMenu:Landroid/view/View;

.field private mNextBtn:Landroid/widget/ImageView;

.field private mNextBtnBg:Landroid/widget/ImageView;

.field private mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

.field private mProgressDialog:Lcom/jiliguala/niuwa/common/a/g;

.field private mReadCardCount:I

.field mRid:Ljava/lang/String;

.field private mRoot:Landroid/view/View;

.field private mScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private mShowListTip:Landroid/widget/TextView;

.field private mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

.field private progressBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mLevel:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChnData:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mHlder:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtnBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->doScaleBtnBg(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->enableAllBtn(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mHlder:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->hasSendRequest:Z

    return p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChnData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChnData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->setHasClickedListTip()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mProgressDialog:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method private doScaleAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 118
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$1;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    return-void
.end method

.method private doScaleBtnBg(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 150
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$2;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    return-void
.end method

.method private enableAllBtn(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 472
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 473
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 474
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 475
    return-void
.end method

.method private initUI()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 478
    const v1, 0x7f0b002a

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->setContentView(I)V

    .line 481
    const v1, 0x7f090402

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->progressBar:Landroid/view/View;

    .line 482
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    const v1, 0x7f090477

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mRoot:Landroid/view/View;

    .line 485
    const v1, 0x7f0900b7

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mCardMark:Landroid/widget/TextView;

    .line 486
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mCardMark:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    const v1, 0x7f090383

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    .line 488
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtnBg:Landroid/widget/ImageView;

    .line 491
    const v1, 0x7f09006f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    const v1, 0x7f090072

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 495
    .local v0, "ib":Landroid/widget/ImageButton;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v1, :cond_0

    .line 496
    const v1, 0x7f0802cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 498
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const v1, 0x7f0900b3

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->bottomBar:Landroid/view/View;

    .line 502
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->bottomBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    const v1, 0x7f09011f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mChannelTitle:Landroid/widget/TextView;

    .line 506
    const v1, 0x7f09037c

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mMenu:Landroid/view/View;

    .line 508
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mChannelTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_3
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mMenu:Landroid/view/View;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v1, :cond_6

    move v1, v3

    :goto_4
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-nez v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mChannelTitle:Landroid/widget/TextView;

    const v6, 0x7f0f00cd

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mMenu:Landroid/view/View;

    new-instance v6, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$6;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$6;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V

    invoke-static {v1, v6}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 523
    const v1, 0x7f09020b

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    .line 524
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-nez v1, :cond_7

    move v1, v5

    :goto_5
    invoke-virtual {v6, v1}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setPagingEnabled(Z)V

    .line 525
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setOffscreenPageLimit(I)V

    .line 526
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setCurrentItem(I)V

    .line 527
    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;-><init>(Landroid/support/v4/app/ag;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    .line 528
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v1, v5}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->setNeedBottomBarPlaceHolder(Z)V

    .line 529
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    const v4, 0x7f060086

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->setBgColorId(I)V

    .line 530
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 531
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setCurrentItem(I)V

    .line 535
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 537
    const v1, 0x7f0904f2

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mShowListTip:Landroid/widget/TextView;

    .line 538
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mShowListTip:Landroid/widget/TextView;

    new-instance v4, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$7;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$7;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-nez v1, :cond_9

    .line 545
    const-string v1, "FLASH_CARD_LIST_TIPS_CLICK_FLAG"

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->hasClickListTip:Z

    .line 546
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mShowListTip:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->hasClickListTip:Z

    if-nez v4, :cond_8

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :goto_7
    return-void

    .end local v0    # "ib":Landroid/widget/ImageButton;
    :cond_2
    move v1, v3

    .line 486
    goto/16 :goto_0

    :cond_3
    move v1, v4

    .line 488
    goto/16 :goto_1

    .restart local v0    # "ib":Landroid/widget/ImageButton;
    :cond_4
    move v1, v2

    .line 502
    goto/16 :goto_2

    :cond_5
    move v1, v2

    .line 508
    goto/16 :goto_3

    :cond_6
    move v1, v2

    .line 509
    goto/16 :goto_4

    :cond_7
    move v1, v2

    .line 524
    goto :goto_5

    :cond_8
    move v2, v3

    .line 546
    goto :goto_6

    .line 548
    :cond_9
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mShowListTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method

.method private onShowFlashCardChannel(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f010025

    const v2, 0x7f010022

    .line 648
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 649
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 650
    .local v1, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 651
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    .line 653
    const-string v2, "data"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChnData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 654
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->refreshUI(Landroid/os/Bundle;)V

    .line 656
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 662
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 663
    return-void

    .line 658
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 659
    const v2, 0x7f090477

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 660
    sget-object v2, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->finish()V

    .line 607
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->overridePendingTransition(II)V

    .line 608
    return-void
.end method

.method private reportServer(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->reportServer(I)V

    .line 581
    return-void
.end method

.method private requestFlashCardChannel()V
    .locals 3

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 440
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->f()Lrx/e;

    move-result-object v1

    .line 441
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 442
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 443
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$5;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V

    .line 444
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 438
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 469
    return-void
.end method

.method private scaleItem(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 380
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v5, p1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v3

    .line 381
    .local v3, "model":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    if-eqz v3, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 383
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v2

    .line 384
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 385
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 386
    check-cast v5, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "picUrl":Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    check-cast v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->doScale()V

    goto :goto_0

    .line 393
    .end local v0    # "fm":Landroid/support/v4/app/ag;
    .end local v2    # "lists":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v4    # "picUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setElements(Ljava/lang/String;II)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "level"    # I

    .prologue
    .line 856
    iput p2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mIndex:I

    .line 857
    iput p3, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mLevel:I

    .line 858
    return-void
.end method

.method private setHasClickedListTip()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 553
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->hasClickListTip:Z

    if-nez v0, :cond_0

    .line 554
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->hasClickListTip:Z

    .line 555
    const-string v0, "FLASH_CARD_LIST_TIPS_CLICK_FLAG"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 556
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mShowListTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method public changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "expand"    # Z

    .prologue
    .line 704
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mChannelTitle:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    const-string v1, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 706
    .local v0, "indexOfn":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 707
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mChannelTitle:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p3, ""

    .end local p3    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setRid(Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->doChannelSelectAction()V

    .line 713
    return-void

    .line 704
    .end local v0    # "indexOfn":I
    .restart local p3    # "title":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeVPView(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public clickFlashCardItemToPlay()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play()V

    .line 398
    return-void
.end method

.method public confirmExit()V
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->sendCourseTaskExitReport()V

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->performExit()V

    .line 763
    return-void
.end method

.method public enableButton(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 295
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    return-void
.end method

.method public gotoChannelSelect()V
    .locals 3

    .prologue
    .line 639
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 640
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "data"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChnData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 641
    const-string v1, "title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mChannelTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v1, "index"

    iget v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    const-string v1, "LEVEL"

    iget v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 644
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onShowFlashCardChannel(Landroid/os/Bundle;)V

    .line 645
    return-void
.end method

.method public isChannelFragmetnShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 666
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    if-nez v1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFlashCardChannelFragment:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChannelShowing()Z
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isChannelFragmetnShowing()Z

    move-result v0

    .line 369
    .local v0, "isShowing":Z
    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    .line 755
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 564
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 565
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 567
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->popoutChannelFragments(Landroid/support/v4/app/ag;ZZ)V

    .line 577
    .end local v0    # "count":I
    :goto_0
    return-void

    .line 570
    .restart local v0    # "count":I
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onBackPressed(Z)V
    .locals 4
    .param p1, "backToMain"    # Z

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 586
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 587
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 589
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->popoutChannelFragments(Landroid/support/v4/app/ag;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "expand"    # Z

    .prologue
    .line 673
    invoke-virtual/range {p0 .. p5}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 674
    return-void
.end method

.method public onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    .prologue
    const/4 v3, 0x1

    .line 789
    if-eqz p1, :cond_0

    .line 790
    iget-object v0, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnId:Ljava/lang/String;

    iget v1, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->clickIndex:I

    iget v2, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnLevel:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->setElements(Ljava/lang/String;II)V

    .line 793
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->popoutChannelFragments(Landroid/support/v4/app/ag;ZZ)V

    .line 795
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 236
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play()V

    goto :goto_0

    .line 239
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->enableAllBtn(Z)V

    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playPrev()V

    goto :goto_0

    .line 243
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->enableAllBtn(Z)V

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playNext(Z)V

    goto :goto_0

    .line 247
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onBackPressed()V

    goto :goto_0

    .line 250
    :sswitch_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->curPos:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->sendSubCourseCompleteRequest()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playNext(Z)V

    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006e -> :sswitch_2
        0x7f09006f -> :sswitch_0
        0x7f090072 -> :sswitch_1
        0x7f090079 -> :sswitch_3
        0x7f090383 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 404
    new-instance v2, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mHandler:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;

    .line 406
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mProgressDialog:Lcom/jiliguala/niuwa/common/a/g;

    .line 409
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->finish()V

    .line 435
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mHandler:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;->sendEmptyMessage(I)Z

    .line 417
    const-string v2, "rid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mRid:Ljava/lang/String;

    .line 418
    const-string v2, "from_practise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    .line 419
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mIsCourseFinished:Z

    .line 420
    const-string v1, "PARAM_COURSE_TICKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 421
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mRid:Ljava/lang/String;

    .line 424
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->initUI()V

    .line 426
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-nez v1, :cond_3

    .line 427
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Vocab View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 430
    :cond_3
    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-direct {v1, p0, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .line 431
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->setRid(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->registerMediaPlayService()V

    .line 434
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->requestFlashCardChannel()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 622
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 623
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->unRegisterMediaPlayService()V

    .line 624
    return-void
.end method

.method public onDismissLoading()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public onDoScaleAnimation(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->scaleItem(I)V

    .line 628
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 597
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mIsCourseFinished:Z

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 599
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 603
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->performExit()V

    goto :goto_0
.end method

.method public onFlashCardPlayComplete(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 357
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 717
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 718
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    .line 719
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 720
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p0, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 721
    packed-switch p1, :pswitch_data_0

    .line 730
    .end local v0    # "mAudioManager":Landroid/media/AudioManager;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 723
    .restart local v0    # "mAudioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, -0x1

    invoke-virtual {v0, v4, v2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 726
    :pswitch_1
    invoke-virtual {v0, v4, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNetworkError()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mHandler:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;->sendEmptyMessage(I)Z

    .line 291
    return-void
.end method

.method public onNetworkResponse()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mHandler:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$a;->sendEmptyMessage(I)Z

    .line 286
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 230
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 172
    iget v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mReadCardCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mReadCardCount:I

    .line 173
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    new-instance v3, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$3;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mCardMark:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iput p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->curPos:I

    .line 186
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 187
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    check-cast v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getColor()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "colorStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-string v0, "#FF2fca89"

    .line 200
    :cond_0
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->isFromPractise:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    const v3, 0x7f08012e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->doScaleAnimation(Landroid/view/View;)V

    .line 225
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    const v3, 0x7f080137

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Vocab"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public onShowLoading()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->progressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 612
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onStop()V

    .line 613
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mReadCardCount:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->reportServer(I)V

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mReadCardCount:I

    .line 615
    return-void
.end method

.method public onSubCourseReportFailed()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mNextBtn:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->cancelSubCourse()V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->hasSendRequest:Z

    .line 337
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onBackPressed()V

    .line 338
    return-void
.end method

.method public onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mIsCourseFinished:Z

    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mHlder:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    return-void
.end method

.method public onUpdateSpeakCardModelTemplete(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V
    .locals 0
    .param p1, "speakCardModelTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .prologue
    .line 375
    return-void
.end method

.method public popoutChannelFragments(Landroid/support/v4/app/ag;ZZ)V
    .locals 17
    .param p1, "fm"    # Landroid/support/v4/app/ag;
    .param p2, "hideAll"    # Z
    .param p3, "backToMain"    # Z

    .prologue
    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/ag;->f()I

    move-result v6

    .line 799
    .local v6, "count":I
    add-int/lit8 v12, v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v7

    .line 800
    .local v7, "entry":Landroid/support/v4/app/ag$a;
    if-eqz v7, :cond_0

    .line 801
    invoke-interface {v7}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v10

    .line 803
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    .line 804
    .local v8, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v12, v8, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    if-eqz v12, :cond_5

    .line 805
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez p3, :cond_1

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onExit()V

    .line 852
    .end local v8    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v10    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 810
    .restart local v8    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 811
    .local v1, "cfm":Landroid/support/v4/app/ag;
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v2

    .line 814
    .local v2, "childCount":I
    const/4 v11, 0x0

    .line 815
    .local v11, "setHidden":Z
    if-lez v2, :cond_4

    .line 817
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    if-ge v9, v2, :cond_4

    .line 818
    invoke-virtual {v1, v9}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v3

    .line 819
    .local v3, "childEntry":Landroid/support/v4/app/ag$a;
    if-eqz v3, :cond_2

    .line 820
    invoke-interface {v3}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, "childName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 822
    .local v4, "childFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 817
    .end local v4    # "childFragment":Landroid/support/v4/app/Fragment;
    .end local v5    # "childName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 825
    .restart local v4    # "childFragment":Landroid/support/v4/app/Fragment;
    .restart local v5    # "childName":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    .line 826
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v12

    const v13, 0x7f01001d

    const v14, 0x7f01001e

    const v15, 0x7f01001d

    const v16, 0x7f01001e

    .line 827
    invoke-virtual/range {v12 .. v16}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v12

    .line 828
    invoke-virtual {v12, v4}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v12

    .line 829
    invoke-virtual {v12}, Landroid/support/v4/app/an;->i()I

    .line 830
    if-nez p2, :cond_2

    .line 831
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->setElements(Ljava/lang/String;II)V

    goto :goto_2

    .line 838
    .end local v3    # "childEntry":Landroid/support/v4/app/ag$a;
    .end local v4    # "childFragment":Landroid/support/v4/app/Fragment;
    .end local v5    # "childName":Ljava/lang/String;
    .end local v9    # "index":I
    :cond_4
    if-eqz v11, :cond_5

    if-eqz p2, :cond_0

    .line 844
    .end local v1    # "cfm":Landroid/support/v4/app/ag;
    .end local v2    # "childCount":I
    .end local v11    # "setHidden":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v12

    const v13, 0x7f010022

    const v14, 0x7f010025

    const v15, 0x7f010022

    const v16, 0x7f010025

    .line 845
    invoke-virtual/range {v12 .. v16}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v12

    .line 846
    invoke-virtual {v12, v8}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v12

    .line 847
    invoke-virtual {v12}, Landroid/support/v4/app/an;->i()I

    .line 848
    if-nez p2, :cond_0

    .line 849
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->setElements(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 766
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 768
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v2, "Step"

    iget v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->curPos:I

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v1, "Time"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 775
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 771
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->curPos:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendSubCourseCompleteRequest()V
    .locals 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->hasSendRequest:Z

    .line 737
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mPresenter:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->sendSubCourseCompleteRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void
.end method

.method public showChannel(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 785
    return-void
.end method

.method public updateVPData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;>;"
    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->notifyDataSetChanged()V

    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setCurrentItem(I)V

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mCardMark:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->mFcAdapter:Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onPageSelected(I)V

    .line 281
    return-void
.end method
