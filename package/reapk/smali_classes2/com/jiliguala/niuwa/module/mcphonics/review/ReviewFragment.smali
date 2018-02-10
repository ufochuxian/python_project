.class public Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field bearIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09009f
    .end annotation
.end field

.field private beginCur:I

.field courseDoneTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090175
    .end annotation
.end field

.field courseTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09017d
    .end annotation
.end field

.field courseTxtHasReview:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09017f
    .end annotation
.end field

.field finishContinue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090205
    .end annotation
.end field

.field finishReviewContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090207
    .end annotation
.end field

.field finishTomorrow:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090208
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field icon:Lcom/makeramen/roundedimageview/RoundedImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090273
    .end annotation
.end field

.field mContainueStudyContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090164
    .end annotation
.end field

.field private mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

.field mIconHasReview:Lcom/makeramen/roundedimageview/RoundedImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090279
    .end annotation
.end field

.field private mLv:Ljava/lang/String;

.field mProgressTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903ff
    .end annotation
.end field

.field mReviewProgressTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090459
    .end annotation
.end field

.field mShareContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904d2
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field noReViewTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09038c
    .end annotation
.end field

.field noReviewContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09038a
    .end annotation
.end field

.field noReviewSubTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09038b
    .end annotation
.end field

.field pengyouquanContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904dd
    .end annotation
.end field

.field progressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090402
    .end annotation
.end field

.field progressContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090405
    .end annotation
.end field

.field startReviewContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09051b
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field weixinContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904e2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 65
    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;
    .param p2, "x2"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->showData(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->requestServer(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->onBakcBtnClick()V

    return-void
.end method

.method private doShare(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 382
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v12

    .line 383
    .local v12, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/checkin-share.html?user_id=%s&baby_id=%s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 384
    .local v10, "shareUrl":Ljava/lang/String;
    const-string v2, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427\uff01"

    .line 385
    .local v2, "abstractTxt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u548c\u5b9d\u8d1d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u590d\u4e60\u4e86\u8bfe\u7a0b\uff01"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v3, ""

    const-string v4, "pid"

    const/4 v5, -0x1

    const-string v6, "cat"

    const-string v7, "age"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, ""

    const-string v11, "Review"

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/l/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 388
    return-void
.end method

.method private goToGame()V
    .locals 9

    .prologue
    .line 315
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    if-nez v7, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    .line 320
    .local v1, "lesson":Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->_id:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 321
    const-string v7, "id"

    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->_id:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :cond_2
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;-><init>()V

    .line 325
    .local v2, "mLesson":Lcom/jiliguala/niuwa/logic/network/json/Lessons;
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->_id:Ljava/lang/String;

    iput-object v7, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    .line 326
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->ttl:Ljava/lang/String;

    iput-object v7, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    .line 328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v4, "subs":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;>;"
    new-instance v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;-><init>()V

    .line 330
    .local v5, "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->_id:Ljava/lang/String;

    iput-object v7, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    .line 331
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->desc:Ljava/lang/String;

    iput-object v7, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->desc:Ljava/lang/String;

    .line 332
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->typ:Ljava/lang/String;

    iput-object v7, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    .line 334
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;-><init>()V

    .line 335
    .local v3, "resource":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->resource:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;->_id:Ljava/lang/String;

    iput-object v7, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    .line 336
    iget-object v7, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->resource:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;->typ:Ljava/lang/String;

    iput-object v7, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    .line 337
    iput-object v3, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    .line 339
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    .line 343
    new-instance v7, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;-><init>()V

    invoke-virtual {v7, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setLessons(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v7

    const/4 v8, 0x0

    .line 344
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setPosition(I)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v7

    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->resource:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;->_id:Ljava/lang/String;

    .line 345
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setRedId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mType:Ljava/lang/String;

    .line 346
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->build()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v6

    .line 348
    .local v6, "taskTicket":Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    const-string v7, "mc_pc_sub_task_ticket"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 349
    const-string v7, "rid"

    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->resource:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review$Resource;->_id:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v7, "typ"

    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->review:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson$Review;->typ:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/jiliguala/niuwa/module/game/GameLandscapeActivity;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private onBakcBtnClick()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 295
    .local v2, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 296
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private reportReviewComplete()V
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    if-eqz v1, :cond_0

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Count"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    iget v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->beginCur:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Review Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private reportReviewExit()V
    .locals 4

    .prologue
    .line 399
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->total:I

    if-eq v1, v2, :cond_0

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Count"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    iget v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->beginCur:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Review Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private requestServer(Z)V
    .locals 4
    .param p1, "courseFinish"    # Z

    .prologue
    .line 142
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    .line 144
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mLv:Ljava/lang/String;

    .line 146
    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/network/d;->k(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 147
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 148
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 149
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Z)V

    .line 150
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 168
    return-void
.end method

.method private showData(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;Z)V
    .locals 3
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;
    .param p2, "courseFinish"    # Z

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    .line 201
    iget v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->total:I

    if-nez v1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->showNoReview()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    iget v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->total:I

    if-ne v1, v2, :cond_2

    .line 206
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->showProgress(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;)V

    .line 207
    if-eqz p2, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->reportReviewComplete()V

    goto :goto_0

    .line 211
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "progress":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mProgressTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    if-nez p2, :cond_3

    .line 215
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->showStart(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;)V

    .line 216
    iget v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    iput v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->beginCur:I

    goto :goto_0

    .line 219
    :cond_3
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->showProgress(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;)V

    goto :goto_0
.end method

.method private showNoReview()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->bearIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReViewTxt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u771f\u68d2\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewSubTxt:Landroid/widget/TextView;

    const-string v1, "\u5b66\u4e60\u8fc7\u7684\u8bfe\u7a0b\u90fd\u638c\u63e1\u7684\u975e\u5e38\u68d2\u4e86!\r\n\u5feb\u53bb\u5b66\u4e60\u65b0\u8bfe\u7a0b\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->startReviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishReviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    return-void
.end method

.method private showProgress(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;)V
    .locals 6
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    .prologue
    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 254
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->startReviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishReviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    iget v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->total:I

    if-ne v2, v3, :cond_0

    .line 258
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->bearIcon:Landroid/widget/ImageView;

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mIconHasReview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v3, 0x7f0801db

    invoke-virtual {v2, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    .line 260
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mContainueStudyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mShareContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTxtHasReview:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseDoneTxt:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseDoneTxt:Landroid/widget/TextView;

    const v3, 0x7f0f019f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 276
    :goto_0
    iget v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    int-to-float v2, v2

    iget v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->total:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 277
    .local v0, "percent":F
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->progressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-virtual {v2, v0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setPercent(F)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->cur:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->total:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "progress":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mReviewProgressTxt:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u5b8c\u6210"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u8bfe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void

    .line 266
    .end local v0    # "percent":F
    .end local v1    # "progress":Ljava/lang/String;
    :cond_0
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTxtHasReview:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTxtHasReview:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseDoneTxt:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mIconHasReview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mContainueStudyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mShareContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->bearIcon:Landroid/widget/ImageView;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private showStart(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;)V
    .locals 3
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    .prologue
    const/4 v2, 0x4

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->bearIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->noReviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->startReviewContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->finishReviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->courseTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;->lesson:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data$Lesson;->thmb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->icon:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public addCourseFinishWatcher()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/f;

    .line 173
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    .line 174
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 195
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->onBakcBtnClick()V

    .line 291
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 125
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mLv:Ljava/lang/String;

    .line 126
    const-string v1, "typ"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->mType:Ljava/lang/String;

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->addCourseFinishWatcher()V

    .line 129
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
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 135
    const v1, 0x7f0b00c7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "mRootView":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->unbinder:Lbutterknife/Unbinder;

    .line 137
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->requestServer(Z)V

    .line 138
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 286
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroyView()V

    .line 394
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 395
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->reportReviewExit()V

    .line 396
    return-void
.end method

.method onPengYouQuanClick()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0904dd
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const v0, 0x7f0f01b6

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->pengyouquanContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->doShare(Landroid/view/View;)V

    goto :goto_0
.end method

.method onReviewTomorrow()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f09038d,
            0x7f090208
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->back()V

    .line 358
    return-void
.end method

.method onWeiXinClick()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0904e2
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const v0, 0x7f0f01b6

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->weixinContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->doShare(Landroid/view/View;)V

    goto :goto_0
.end method

.method public shareCancel()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public shareComplete()V
    .locals 4

    .prologue
    .line 409
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1029

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$4;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    return-void
.end method

.method public shareError()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method startReview(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090039,
            0x7f090205
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->goToGame()V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 310
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Review Click"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method
