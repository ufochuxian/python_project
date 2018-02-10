.class public Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;,
        Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;
    }
.end annotation


# static fields
.field private static final MSG_ADD_SCORE_ANSWER:I = 0x1003

.field private static final MSG_UPDATE_SCORE_PROGRESS:I = 0x1002

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

.field private mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

.field private mChineseText:Landroid/widget/TextView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

.field private mEngText:Landroid/widget/TextView;

.field private mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

.field private mIsTranslateUp:Z

.field private mIsWaitingRecord:Z

.field private mPlaceHolder:Landroid/view/View;

.field private mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

.field private mRecord:Landroid/widget/ImageView;

.field private mRecordBg:Landroid/widget/ImageView;

.field private mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

.field private mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

.field private mScoreNum:I

.field private mScoreView:Landroid/view/View;

.field private mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private moveAnimatorSet:Lcom/nineoldandroids/a/d;

.field private score:Landroid/widget/TextView;

.field private topBox:Landroid/view/View;

.field private totalHeight:I

.field private verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsTranslateUp:Z

    .line 63
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 92
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setData()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/nineoldandroids/a/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreNum:I

    return v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->score:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updateTextAndUpdateProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->startProgressAnim(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updateTextAndShowProgress()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->topBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    return-object v0
.end method

.method private enableRecordButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 779
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlaceHolder:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    :cond_3
    return-void
.end method

.method private getIconByVolume(D)I
    .locals 13
    .param p1, "volume"    # D

    .prologue
    const v0, 0x7f0801ca

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 273
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    cmpg-double v1, p1, v4

    if-gez v1, :cond_1

    .line 274
    const v0, 0x7f0801c7

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    cmpl-double v1, p1, v4

    if-ltz v1, :cond_2

    cmpg-double v1, p1, v6

    if-gez v1, :cond_2

    .line 276
    const v0, 0x7f0801c8

    goto :goto_0

    .line 277
    :cond_2
    cmpl-double v1, p1, v6

    if-ltz v1, :cond_3

    cmpg-double v1, p1, v8

    if-gez v1, :cond_3

    .line 278
    const v0, 0x7f0801c9

    goto :goto_0

    .line 279
    :cond_3
    cmpl-double v1, p1, v8

    if-ltz v1, :cond_4

    cmpg-double v1, p1, v10

    if-ltz v1, :cond_0

    .line 281
    :cond_4
    cmpl-double v1, p1, v10

    if-ltz v1, :cond_5

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    .line 284
    :cond_5
    const v0, 0x7f0803ca

    goto :goto_0
.end method

.method private isRecordSelected()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method private measureControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 200
    return-void
.end method

.method private openPartOfRecordUIIfTranslateDown()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 504
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 505
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 507
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    const/high16 v4, 0x42aa0000    # 85.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 509
    .local v0, "packUpObj":Lcom/nineoldandroids/a/l;
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$5;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 533
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 534
    return-void
.end method

.method private openPartOfRecordUIIfTranslateUp()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 539
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    const/high16 v4, -0x3d600000    # -80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 540
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    const/high16 v4, -0x3d740000    # -70.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 541
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    const/high16 v4, -0x3d600000    # -80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 542
    .local v0, "openUpObj":Lcom/nineoldandroids/a/l;
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$6;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$6;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 565
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 566
    return-void
.end method

.method private openUpRecordUi()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 433
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    aput v5, v3, v6

    const/high16 v4, -0x3d600000    # -80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 434
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    aput v5, v3, v6

    const/high16 v4, -0x3d740000    # -70.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 435
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v8, [F

    aput v5, v3, v6

    const/high16 v4, -0x3d600000    # -80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 437
    .local v0, "packUpObj":Lcom/nineoldandroids/a/l;
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 464
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 465
    return-void
.end method

.method private packUpRecordUi()V
    .locals 11

    .prologue
    const/high16 v10, -0x3d600000    # -80.0f

    const-wide/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 472
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v7, [F

    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 473
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v7, [F

    const/high16 v4, -0x3d740000    # -70.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 475
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    const-string v2, "translationY"

    new-array v3, v7, [F

    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/high16 v4, 0x42aa0000    # 85.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 476
    .local v0, "openUpObj":Lcom/nineoldandroids/a/l;
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$4;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 499
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 500
    return-void
.end method

.method private relayoutRecord()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 302
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 304
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 305
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 306
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-void
.end method

.method private relayoutRecordBg()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 294
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 295
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, -0x3d100000    # -120.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 296
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 298
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-void
.end method

.method private relayoutVolume()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 310
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 311
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, -0x3db80000    # -50.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 312
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 313
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method private startIndicatorAnim()V
    .locals 6

    .prologue
    const/16 v3, 0xd

    .line 151
    new-instance v2, Lcom/nineoldandroids/a/d;

    invoke-direct {v2}, Lcom/nineoldandroids/a/d;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    .line 153
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 154
    .local v0, "xPath":[F
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    .line 164
    .local v1, "yPath":[F
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Lcom/nineoldandroids/a/d;->c(J)Lcom/nineoldandroids/a/d;

    .line 165
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 166
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    new-instance v3, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$2;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 188
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/d;->a()V

    .line 189
    return-void

    .line 153
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

    .line 154
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
    .line 714
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->topBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 716
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

    .line 717
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 718
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 719
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$8;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;Landroid/view/View;Lcom/nineoldandroids/a/l;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 753
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 754
    return-void
.end method

.method private startRecord()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->onStartRecord()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->translateRecord()V

    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->startRecordByChiShen()V

    .line 368
    :cond_1
    return-void
.end method

.method private stopRecord()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->translateRecord()V

    .line 374
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->stopRecordByChiShen()V

    .line 378
    :cond_0
    return-void
.end method

.method private updateTextAndShowProgress()V
    .locals 7

    .prologue
    .line 695
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v3}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 697
    .local v1, "result":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->score:Landroid/widget/TextView;

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

    .line 698
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->topBox:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 699
    .local v2, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v3}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->totalHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v0, v3

    .line 700
    .local v0, "bottom":I
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    neg-int v4, v0

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 701
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->topBox:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    return-void
.end method

.method private updateTextAndUpdateProgress()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->topBox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->updateTextAndShowProgress()V

    .line 689
    return-void
.end method


# virtual methods
.method public addOnGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$1;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 139
    return-void
.end method

.method public addScoreView()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->getEvluateStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->getEvluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/speak/model/Result;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreNum:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->addScoreView(IZ)V

    .line 236
    :cond_0
    return-void
.end method

.method public addScoreView(IZ)V
    .locals 5
    .param p1, "scoreNum"    # I
    .param p2, "startAnimation"    # Z

    .prologue
    const/4 v4, -0x2

    .line 623
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "babyAva":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->createScoreView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    .line 625
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const v3, 0x7f090486

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 626
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 627
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const v3, 0x7f090485

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->score:Landroid/widget/TextView;

    .line 629
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const v3, 0x7f090482

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->topBox:Landroid/view/View;

    .line 630
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->topBox:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const v3, 0x7f090426

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    .line 633
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const v3, 0x7f09047b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .line 635
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setMax(I)V

    .line 637
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const v3, 0x7f0903ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 638
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->verticalProgressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    sget-object v3, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Invisible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    invoke-virtual {v2, v3}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgressTextVisibility(Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;)V

    .line 640
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 641
    .local v1, "fl":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 643
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$7;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 670
    return-void
.end method

.method public changeRecordIconByRecordStatus(Z)V
    .locals 2
    .param p1, "audioExits"    # Z

    .prologue
    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 606
    if-eqz p1, :cond_1

    .line 607
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    const v1, 0x7f0803ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    const v1, 0x7f0803cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public changeVolumeIcon(D)V
    .locals 3
    .param p1, "volume"    # D

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->getIconByVolume(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    :cond_0
    return-void
.end method

.method protected createScoreView()Landroid/view/View;
    .locals 4

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0173

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createView()Landroid/view/View;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0172

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public disableRecordButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 764
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlaceHolder:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 776
    :cond_3
    return-void
.end method

.method public doAfterPlayScoreSound()V
    .locals 2

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->showNextButton()V

    .line 758
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->enableRecordButton()V

    .line 759
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->openPartOfRecordUIIfTranslateDown()V

    .line 760
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->babyAvaIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setEnabled(Z)V

    .line 761
    return-void
.end method

.method public hideNextBtn()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->hide()V

    .line 602
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->createView()Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090475

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    .line 108
    const v1, 0x7f090476

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mVolumeIcon:Landroid/widget/ImageView;

    .line 109
    const v1, 0x7f090474

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f0903e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlaceHolder:Landroid/view/View;

    .line 112
    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mEngText:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mChineseText:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0901f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    .line 117
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->hide()V

    .line 119
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public isFinishBtnClickable()Z
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->isFinishBtnClickable()Z

    move-result v0

    return v0
.end method

.method public isNextBtnVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 146
    :cond_0
    return v0
.end method

.method public isTranslateUp()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsTranslateUp:Z

    return v0
.end method

.method public isWaitingRecord()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsWaitingRecord:Z

    return v0
.end method

.method public onBeginOfSpeech()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 322
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->toggleRecord()V

    goto :goto_0

    .line 331
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->getCurrentSaveAudioFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->playRecordFile(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->onClickNextBtn()V

    goto :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f090086 -> :sswitch_1
        0x7f0901f2 -> :sswitch_2
        0x7f090474 -> :sswitch_0
        0x7f090475 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 577
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 579
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->onDetach()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 592
    :cond_1
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->stopRecord()V

    .line 213
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->enableRecordButton()V

    .line 214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->onEndOfSpeech()V

    .line 217
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isTranslateUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->openPartOfRecordUIIfTranslateUp()V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 257
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsTranslateUp:Z

    .line 258
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->showNextButton()V

    .line 259
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecordBg:Landroid/widget/ImageView;

    const v1, 0x7f0803cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->openPartOfRecordUIIfTranslateDown()V

    goto :goto_0
.end method

.method public onEvent()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onScoreAnswer(ILcom/jiliguala/niuwa/module/speak/model/Result;)V
    .locals 4
    .param p1, "score"    # I
    .param p2, "result"    # Lcom/jiliguala/niuwa/module/speak/model/Result;

    .prologue
    const/16 v1, 0x1003

    .line 221
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mScoreNum:I

    .line 222
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mResult:Lcom/jiliguala/niuwa/module/speak/model/Result;

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->removeMessages(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    return-void
.end method

.method public relayRecordControls()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->relayoutRecordBg()V

    .line 289
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->relayoutRecord()V

    .line 290
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->relayoutVolume()V

    .line 291
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
    .locals 1
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    .line 571
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->setInteractListener(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;)V

    .line 572
    return-object p0
.end method

.method public setData()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;-><init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCustomHandler:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;

    .line 97
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    .line 98
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->initView()V

    .line 99
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setListener()V

    .line 100
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->measureControls()V

    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->relayRecordControls()V

    .line 103
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setMax(I)V

    .line 620
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 381
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    if-eqz v1, :cond_0

    .line 382
    if-nez p1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getProgress()I

    move-result v0

    .line 388
    .local v0, "currentProgress":I
    if-lez p1, :cond_2

    if-le p1, v0, :cond_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getMax()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRoundProgressBar:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setTotalHeight(I)V
    .locals 0
    .param p1, "totalHeight"    # I

    .prologue
    .line 794
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->totalHeight:I

    .line 795
    return-void
.end method

.method public setWaitingRecord(Z)V
    .locals 0
    .param p1, "isWaitingRecord"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsWaitingRecord:Z

    .line 429
    return-void
.end method

.method public showNextButton()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->showNextBtn()V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mFadeInFadeOutBtn:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->showCourseDoneBtn()V

    goto :goto_0
.end method

.method public stopXunFeiRecord()V
    .locals 2

    .prologue
    .line 269
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->changeVolumeIcon(D)V

    .line 270
    return-void
.end method

.method public toggleRecord()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsWaitingRecord:Z

    .line 349
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isRecordSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->startRecord()V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->stopRecord()V

    goto :goto_0
.end method

.method public translateRecord()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 407
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsTranslateUp:Z

    if-eqz v0, :cond_2

    .line 408
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->openUpRecordUi()V

    .line 412
    :goto_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsTranslateUp:Z

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mIsTranslateUp:Z

    .line 413
    return-void

    :cond_1
    move v0, v2

    .line 405
    goto :goto_0

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->packUpRecordUi()V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 412
    goto :goto_2
.end method

.method public updatePlayStatusIv(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 708
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->mPlayStatusIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setImageResource(I)V

    .line 711
    :cond_0
    return-void
.end method
