.class public Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final MAX:I = 0x3e8

.field private static final MSG_REFRESH_PROGRESS:I = 0x1000

.field private static final MSG_RESET_PROGRESS:I = 0x1001

.field private static final REFRESH_INTERVAL:I = 0xc8

.field public static final TAG:Ljava/lang/String;

.field private static options:Lcom/nostra13/universalimageloader/core/c;


# instance fields
.field private bottomBar:Landroid/view/View;

.field private cameraIcon:Landroid/widget/ImageView;

.field private chooseImage:Landroid/widget/ImageView;

.field private clickToRecordTv:Landroid/widget/TextView;

.field private equalizer:Landroid/widget/ImageView;

.field private forumContentEt:Landroid/widget/EditText;

.field private forumTitleEt:Landroid/widget/EditText;

.field public mContent:Ljava/lang/String;

.field private mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

.field private mHandler:Landroid/os/Handler;

.field private mImgPath:Ljava/lang/String;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

.field private mRecordStatus:Landroid/widget/ImageView;

.field private mRoundCornerProgressBar:Landroid/widget/ProgressBar;

.field private m_end_time:J

.field private m_start_time:J

.field private progressDlg:Lcom/jiliguala/niuwa/common/a/g;

.field private recordBtn:Landroid/widget/ImageView;

.field private recordContainer:Landroid/view/View;

.field private recordTimeTv:Landroid/widget/TextView;

.field private redDotIv:Landroid/widget/ImageView;

.field private replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

.field private retryRecordTv:Landroid/widget/TextView;

.field private sendTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->TAG:Ljava/lang/String;

    .line 58
    const-class v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 71
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->m_start_time:J

    .line 72
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->m_end_time:J

    .line 81
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    .line 280
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->redDotIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->enableBtns(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->toggleRecordContainer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Lcom/jiliguala/niuwa/common/a/g;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/common/a/g;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->cameraIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->showDeleteAudioConfirmDlg()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->hideRecordContainer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->startSoundEffect()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->clickToRecordTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mRecordStatus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->equalizer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->stopSoundEffect()V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->retryRecordTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private enableBtns(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumTitleEt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 601
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumContentEt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->retryRecordTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 607
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->cameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 608
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->enablePoster(Z)V

    .line 611
    :cond_0
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 341
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .line 342
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;-><init>()V

    .line 346
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
    :cond_0
    return-object v0
.end method

.method private hideRecordContainer()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    return-void
.end method

.method private initReplyUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 614
    const v0, 0x7f090438

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->redDotIv:Landroid/widget/ImageView;

    .line 615
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->redDotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->equalizer:Landroid/widget/ImageView;

    .line 617
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->equalizer:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    const v0, 0x7f090431

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordBtn:Landroid/widget/ImageView;

    .line 621
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    const v0, 0x7f090074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordContainer:Landroid/view/View;

    .line 624
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 626
    const v0, 0x7f090457

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->retryRecordTv:Landroid/widget/TextView;

    .line 627
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->retryRecordTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    const v0, 0x7f090147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->clickToRecordTv:Landroid/widget/TextView;

    .line 630
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->clickToRecordTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    const v0, 0x7f090434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordTimeTv:Landroid/widget/TextView;

    .line 632
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordTimeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    const v0, 0x7f090432

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    .line 635
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 636
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mRoundCornerProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    const v0, 0x7f090433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mRecordStatus:Landroid/widget/ImageView;

    .line 639
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mRecordStatus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    const v0, 0x7f090555

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->cameraIcon:Landroid/widget/ImageView;

    .line 642
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->cameraIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->cameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 646
    :cond_0
    return-void
.end method

.method private initUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x6

    .line 473
    const v0, 0x7f090447

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->bottomBar:Landroid/view/View;

    .line 474
    const v0, 0x7f090555

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->chooseImage:Landroid/widget/ImageView;

    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->chooseImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    const v0, 0x7f09022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumTitleEt:Landroid/widget/EditText;

    .line 477
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumTitleEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumTitleEt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 479
    const v0, 0x7f09021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumContentEt:Landroid/widget/EditText;

    .line 480
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumContentEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumContentEt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 482
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .line 483
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    .line 484
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->initReplyUI(Landroid/view/View;)V

    .line 485
    return-void
.end method

.method private showDeleteAudioConfirmDlg()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 489
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 490
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 491
    const v3, 0x7f0b008f

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 493
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 494
    .local v2, "width":I
    const/4 v1, -0x2

    .line 495
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 496
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 497
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 499
    const v3, 0x7f0900fa

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$4;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$4;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private startSoundEffect()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->equalizer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->equalizer:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->startSoundEffectAnim(Landroid/widget/ImageView;)V

    .line 359
    return-void
.end method

.method private startSoundEffectAnim(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 366
    const v1, 0x7f0803c8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 368
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 369
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 373
    return-void
.end method

.method private stopSoundEffect()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->equalizer:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->stopSoundEffectAnim(Landroid/widget/ImageView;)V

    .line 363
    return-void
.end method

.method private stopSoundEffectAnim(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 376
    const v1, 0x7f0803c8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 378
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 381
    :cond_0
    const v1, 0x7f080347

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    return-void
.end method

.method private toggleRecordContainer()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->hideRecordContainer()V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->recordContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAudioPlay()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->cancelAudioRecordPlay()V

    .line 354
    :cond_0
    return-void
.end method

.method public changePicture()V
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 595
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    move-result-object v1

    .line 596
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 597
    return-void
.end method

.method public deletePicture()V
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mImgPath:Ljava/lang/String;

    .line 587
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const-string v1, ""

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->chooseImage:Landroid/widget/ImageView;

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    return-void
.end method

.method public getForumContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumContentEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "content":Ljava/lang/String;
    return-object v0
.end method

.method public getForumTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumTitleEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method public hideSoftInput()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumTitleEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/ad;->b(Landroid/widget/EditText;)V

    .line 580
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->forumContentEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/ad;->b(Landroid/widget/EditText;)V

    .line 581
    return-void
.end method

.method public isRecordDone()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 547
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/app/Activity;)V

    .line 549
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 418
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 420
    new-instance v0, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 421
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->options:Lcom/nostra13/universalimageloader/core/c;

    .line 423
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 427
    const v1, 0x7f0b00a1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 468
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->initUI(Landroid/view/View;)V

    .line 469
    return-object v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 572
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->m_end_time:J

    .line 574
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->m_end_time:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->m_start_time:J

    sub-long v0, v2, v4

    .line 575
    .local v0, "total":J
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Posting View"

    const/4 v4, 0x0

    long-to-int v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 576
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 553
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->m_start_time:J

    .line 555
    return-void
.end method

.method public sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "boid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v6, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Room"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v1, "withPhoto"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v0, "withAudio"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Post Publish"

    invoke-virtual {v0, v1, v6}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mPresenter:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 414
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setReplyInterface(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;)V
    .locals 0
    .param p1, "replyInterface"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    .line 399
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 405
    :cond_1
    return-void
.end method

.method public updateThumb(Ljava/lang/String;)V
    .locals 4
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mImgPath:Ljava/lang/String;

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->chooseImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 561
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->chooseImage:Landroid/widget/ImageView;

    sget-object v3, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->options:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 563
    :cond_0
    return-void
.end method
