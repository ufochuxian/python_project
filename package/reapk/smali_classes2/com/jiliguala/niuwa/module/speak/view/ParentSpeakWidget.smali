.class public Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;,
        Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;
    }
.end annotation


# static fields
.field private static final MSG_ADD_SCORE_ANSWER:I = 0x1003

.field private static final MSG_RECORD_TIME_OUT:I = 0x1004

.field private static final MSG_UPDATE_SCORE_PROGRESS:I = 0x1002

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

.field private mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

.field private mChineseText:Landroid/widget/TextView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContainer:Landroid/view/View;

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

.field private mEngText:Landroid/widget/TextView;

.field private mFadeInFadeOutBtn:Landroid/widget/TextView;

.field private mIndicator:Landroid/view/View;

.field private mIsTranslateUp:Z

.field private mIsWaitingRecord:Z

.field private mLoadingIcon:Landroid/widget/ImageView;

.field private mPlaceHolder:Landroid/view/View;

.field private mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

.field private mRecord:Landroid/widget/ImageView;

.field private mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

.field private mRetry:Landroid/view/View;

.field private mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

.field private mScoreNum:I

.field private mScoreView:Landroid/view/View;

.field private mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

.field private mVolume:Landroid/widget/ImageView;

.field private mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

.field private moveAnimatorSet:Lcom/nineoldandroids/a/d;

.field private score:Landroid/widget/TextView;

.field private scoreMargin:I

.field private speakMargin:I

.field private topBox:Landroid/view/View;

.field private totalHeight:I

.field private verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsTranslateUp:Z

    .line 61
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 98
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setData()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/nineoldandroids/a/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mLoadingIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreNum:I

    return v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->score:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updateTextAndUpdateProgress()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->timeOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->startProgressAnim(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updateTextAndShowProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->topBox:Landroid/view/View;

    return-object v0
.end method

.method private enableRecordButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlaceHolder:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :cond_1
    return-void
.end method

.method private measureControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 205
    return-void
.end method

.method private openPartOfRecordUIIfTranslateDown()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method private openPartOfRecordUIIfTranslateUp()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method private openUpRecordUi()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 414
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mVolume:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/a;->h(Landroid/view/View;)Lcom/nineoldandroids/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

    .line 415
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v7, [F

    aput v4, v2, v5

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 416
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mVolume:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v7, [F

    aput v4, v2, v5

    const/high16 v3, -0x3cfe0000    # -130.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 417
    return-void
.end method

.method private packUpRecordUi()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v7, [F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mVolume:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v7, [F

    const/high16 v3, -0x3cfe0000    # -130.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 429
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method private startIndicatorAnim()V
    .locals 8

    .prologue
    const/16 v6, 0x270f

    const/16 v5, 0xd

    const/4 v7, 0x1

    .line 159
    new-instance v4, Lcom/nineoldandroids/a/d;

    invoke-direct {v4}, Lcom/nineoldandroids/a/d;-><init>()V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    .line 161
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    .line 162
    .local v2, "xPath":[F
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    .line 163
    .local v3, "yPath":[F
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIndicator:Landroid/view/View;

    const-string v5, "translationX"

    invoke-static {v4, v5, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 164
    .local v0, "moveXTransition":Lcom/nineoldandroids/a/l;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIndicator:Landroid/view/View;

    const-string v5, "translationY"

    invoke-static {v4, v5, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 166
    .local v1, "moveYTransition":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, v7}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 167
    invoke-virtual {v0, v6}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 168
    invoke-virtual {v1, v7}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 169
    invoke-virtual {v1, v6}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 171
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/nineoldandroids/a/a;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 172
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Lcom/nineoldandroids/a/d;->c(J)Lcom/nineoldandroids/a/d;

    .line 173
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 174
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    new-instance v5, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$1;-><init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 196
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v4}, Lcom/nineoldandroids/a/d;->a()V

    .line 197
    return-void

    .line 161
    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x0
        -0x3ee00000    # -10.0f
        -0x3e600000    # -20.0f
        -0x3e100000    # -30.0f
        -0x3df40000    # -35.0f
        -0x3de00000    # -40.0f
        -0x3df40000    # -35.0f
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
    .end array-data

    .line 162
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private startProgressAnim(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dstProgress"    # I

    .prologue
    .line 586
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->topBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 588
    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p2

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 589
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 590
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 591
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$4;-><init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;Landroid/view/View;Lcom/nineoldandroids/a/l;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 626
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 627
    return-void
.end method

.method private startRecord()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->onStartRecord()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->translateRecord()V

    .line 319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 320
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;-><init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    :cond_1
    return-void
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->translateRecord()V

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->stopRecordByChiShen()V

    .line 356
    :cond_0
    return-void
.end method

.method private timeOut()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isRecordSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->toggleRecord()V

    .line 344
    :cond_0
    return-void
.end method

.method private updateTextAndShowProgress()V
    .locals 7

    .prologue
    .line 567
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v3}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 569
    .local v1, "result":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->score:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->topBox:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 571
    .local v2, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v3}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->totalHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 572
    .local v0, "bottom":I
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x0

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 573
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->topBox:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    return-void
.end method

.method private updateTextAndUpdateProgress()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->topBox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 560
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->updateTextAndShowProgress()V

    .line 561
    return-void
.end method


# virtual methods
.method public addOnGlobalLayoutListener()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public addScoreView()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->getEvluateStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->getEvluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/speak/model/Result;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreNum:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->addScoreView(IZ)V

    .line 239
    :cond_0
    return-void
.end method

.method public addScoreView(IZ)V
    .locals 8
    .param p1, "scoreNum"    # I
    .param p2, "startAnimation"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 485
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "babyAva":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->createScoreView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    .line 487
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f090486

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 488
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f090086

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 489
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-virtual {v4, p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f090485

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->score:Landroid/widget/TextView;

    .line 491
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f090482

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->topBox:Landroid/view/View;

    .line 492
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->topBox:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f090426

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    .line 494
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 495
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->totalHeight:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 496
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f090158

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 498
    .local v3, "scoreContainer":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 499
    .restart local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->scoreMargin:I

    invoke-virtual {v2, v6, v6, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 502
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f09047b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .line 504
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setMax(I)V

    .line 506
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const v5, 0x7f0903ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 507
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    sget-object v5, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Invisible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    invoke-virtual {v4, v5}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgressTextVisibility(Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;)V

    .line 509
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 510
    .local v1, "fl":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v1, v6}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 512
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;

    invoke-direct {v5, p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$3;-><init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;Ljava/lang/String;IZ)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 539
    return-void
.end method

.method public changeRecordIconByRecordStatus(Z)V
    .locals 0
    .param p1, "audioExits"    # Z

    .prologue
    .line 476
    return-void
.end method

.method public changeVolumeIcon(D)V
    .locals 0
    .param p1, "volume"    # D

    .prologue
    .line 210
    return-void
.end method

.method protected createScoreView()Landroid/view/View;
    .locals 4

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0162

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public disableRecordButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 637
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlaceHolder:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_1
    return-void
.end method

.method public doAfterPlayScoreSound()V
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->showNextButton()V

    .line 631
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->enableRecordButton()V

    .line 632
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->openPartOfRecordUIIfTranslateDown()V

    .line 633
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setEnabled(Z)V

    .line 634
    return-void
.end method

.method public hideNextBtn()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 466
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_1
    return-void
.end method

.method public initView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0161

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0903e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlaceHolder:Landroid/view/View;

    .line 115
    const v2, 0x7f0901e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mEngText:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mChineseText:Landroid/widget/TextView;

    .line 118
    const v2, 0x7f090384

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    .line 119
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f090456

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    .line 122
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v2, 0x7f0902e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mLoadingIcon:Landroid/widget/ImageView;

    .line 125
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mLoadingIcon:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    const v2, 0x7f090291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    .line 128
    const v2, 0x7f090604

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mVolume:Landroid/widget/ImageView;

    .line 129
    const v2, 0x7f09028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIndicator:Landroid/view/View;

    .line 131
    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mContainer:Landroid/view/View;

    .line 132
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->speakMargin:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    return-void
.end method

.method public isFinishBtnClickable()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isNextBtnVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 154
    :cond_0
    return v0
.end method

.method public isRecordSelected()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method public isTranslateUp()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsTranslateUp:Z

    return v0
.end method

.method public isWaitingRecord()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsWaitingRecord:Z

    return v0
.end method

.method public onBeginOfSpeech()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 273
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->toggleRecord()V

    goto :goto_0

    .line 279
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->getCurrentSaveAudioFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->playRecordFile(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->onClickNextBtn()V

    goto :goto_0

    .line 294
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->onRetryClick()V

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x7f090086 -> :sswitch_1
        0x7f090291 -> :sswitch_0
        0x7f090384 -> :sswitch_2
        0x7f090456 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 451
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 453
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->onDetach()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 459
    :cond_1
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->stopRecord()V

    .line 216
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->enableRecordButton()V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->onEndOfSpeech()V

    .line 220
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->removeMessages(I)V

    .line 249
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->packUpRecordUi()V

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsTranslateUp:Z

    .line 254
    invoke-virtual {p0, v2, v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->addScoreView(IZ)V

    .line 255
    return-void
.end method

.method public onEvent()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onScoreAnswer(ILcom/jiliguala/niuwa/module/speak/model/Result;)V
    .locals 4
    .param p1, "score"    # I
    .param p2, "result"    # Lcom/jiliguala/niuwa/module/speak/model/Result;

    .prologue
    const/16 v1, 0x1003

    .line 224
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mScoreNum:I

    .line 225
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->removeMessages(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 140
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isRecordSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->toggleRecord()V

    .line 143
    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;
    .locals 1
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->setInteractListener(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;)V

    .line 446
    return-object p0
.end method

.method public setData()V
    .locals 6

    .prologue
    .line 102
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;-><init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    .line 103
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    .line 104
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v0

    .line 105
    .local v0, "realScreenHeight":I
    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->speakMargin:I

    .line 106
    int-to-double v2, v0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->scoreMargin:I

    .line 107
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->initView()V

    .line 108
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setListener()V

    .line 109
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->measureControls()V

    .line 110
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setMax(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 360
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    if-eqz v1, :cond_0

    .line 361
    if-nez p1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getProgress()I

    move-result v0

    .line 367
    .local v0, "currentProgress":I
    if-lez p1, :cond_2

    if-le p1, v0, :cond_0

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getMax()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setTotalHeight(I)V
    .locals 0
    .param p1, "totalHeight"    # I

    .prologue
    .line 655
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->totalHeight:I

    .line 656
    return-void
.end method

.method public setWaitingRecord(Z)V
    .locals 0
    .param p1, "isWaitingRecord"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsWaitingRecord:Z

    .line 409
    return-void
.end method

.method public showNextButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u4e00\u6b65"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRetry:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mLoadingIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mFadeInFadeOutBtn:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210\u5566"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public stopXunFeiRecord()V
    .locals 2

    .prologue
    .line 265
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->changeVolumeIcon(D)V

    .line 266
    return-void
.end method

.method public toggleRecord()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsWaitingRecord:Z

    .line 304
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isRecordSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->startRecord()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->stopRecord()V

    goto :goto_0
.end method

.method public translateRecord()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 384
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsTranslateUp:Z

    if-eqz v0, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->openUpRecordUi()V

    .line 391
    :goto_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsTranslateUp:Z

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mIsTranslateUp:Z

    .line 392
    return-void

    :cond_1
    move v0, v2

    .line 384
    goto :goto_0

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->packUpRecordUi()V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 391
    goto :goto_2
.end method

.method public updatePlayStatusIv(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setImageResource(I)V

    .line 583
    :cond_0
    return-void
.end method
