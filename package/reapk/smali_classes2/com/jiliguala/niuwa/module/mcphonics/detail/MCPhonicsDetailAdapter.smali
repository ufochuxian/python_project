.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$e;,
        Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;,
        Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;,
        Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;,
        Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;,
        Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$w;",
        ">;"
    }
.end annotation


# static fields
.field public static final FIRST_ITEM_POS:I = 0x1

.field public static final HALF_CURRENT_ITEM_HEIGHT:I = 0x6e

.field public static final HALF_ITEM_HEIGHT:I = 0x64

.field public static final ITEM_FOOTER:I = 0x5

.field public static final ITEM_HEADER:I = 0x4

.field public static final ITEM_MCPHONICS_DETAIL:I = 0x2

.field public static final ITEM_MCPHONICS_DETAIL_CURRENT:I = 0x0

.field public static final ITEM_MCPHONICS_DETAIL_CURRENT_WITH_INTERACT:I = 0x1

.field public static final ITEM_MCPHONICS_DETAIL_WITH_INTERACT:I = 0x3

.field public static final RATIO:F = 0.4f


# instance fields
.field public gamePackageUrl:Ljava/lang/String;

.field private mAnimationSet:Lcom/nineoldandroids/a/d;

.field private mBgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

.field public mIsMc:Z

.field private mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

.field private mRealScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;
    .param p3, "isMc"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 61
    const-string v0, "http://jlglh5.b0.upaiyun.com/gamedev/res/web-mobile.zip"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->gamePackageUrl:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mDataList:Ljava/util/List;

    .line 78
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mRealScreenHeight:I

    .line 79
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mFragment:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .line 81
    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mIsMc:Z

    .line 82
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mIsMc:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->initMCRoadmapBgData()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->initPHRoadmapBgData()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addHeaderAndFooter(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;>;"
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;-><init>()V

    .line 118
    .local v3, "headerSubBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    const-string v4, "special"

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->status:Ljava/lang/String;

    .line 119
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;-><init>()V

    .line 120
    .local v2, "headerRes":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;
    const-string v4, "header"

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    .line 121
    iput-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    .line 122
    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;-><init>()V

    .line 125
    .local v1, "footerSubBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    const-string v4, "special"

    iput-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->status:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;-><init>()V

    .line 127
    .local v0, "footerRes":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;
    const-string v4, "footer"

    iput-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    .line 128
    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method private doBgAnim(Landroid/view/View;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;)V
    .locals 1
    .param p1, "animBg"    # Landroid/view/View;
    .param p2, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .prologue
    .line 305
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCurrent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 309
    :cond_1
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->objectScaleAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    goto :goto_0
.end method

.method private getDesc(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)Ljava/lang/String;
    .locals 1
    .param p1, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "position"    # I

    .prologue
    .line 339
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    .line 359
    :goto_0
    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isMcWatch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string v0, "\u770b\u4e00\u770b"

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isInteractionGame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    const-string v0, "\u52a8\u4e00\u52a8"

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isTapGame()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isDragGame()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    :cond_3
    const-string v0, "\u73a9\u4e00\u73a9"

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isTalkGame()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    const-string v0, "\u8bf4\u4e00\u8bf4"

    goto :goto_0

    .line 350
    :cond_5
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isAlphabetGame()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    const-string v0, "\u5199\u4e00\u5199"

    goto :goto_0

    .line 352
    :cond_6
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isHitGame()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 353
    const-string v0, "\u6253\u4e00\u6253"

    goto :goto_0

    .line 354
    :cond_7
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isSongWatch()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 355
    const-string v0, "\u5531\u4e00\u5531"

    goto :goto_0

    .line 356
    :cond_8
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isFunWatch()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    const-string v0, "\u4e50\u4e00\u4e50"

    goto :goto_0

    .line 359
    :cond_9
    const-string v0, ""

    goto :goto_0
.end method

.method private goToGame(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 3
    .param p1, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "taskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->hasLessonID()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    const-string v1, "id"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    :cond_0
    const-string v1, "mc_pc_sub_task_ticket"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 475
    const-string v1, "rid"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "typ"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/jiliguala/niuwa/module/game/GameLandscapeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private goToInteract(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 4
    .param p1, "prepareInteractResView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .param p2, "taskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 427
    const-string v2, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 428
    .local v1, "hasOpenPermission":Z
    if-eqz v1, :cond_1

    .line 429
    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setMcPcSubTaskTicket(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    .line 431
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->startDownload()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/common/util/v;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/v;-><init>()V

    .line 435
    .local v0, "checker":Lcom/jiliguala/niuwa/common/util/v;
    new-instance v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/v;->a(Lcom/jiliguala/niuwa/common/util/v$a;)V

    goto :goto_0
.end method

.method private goToWatch(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 3
    .param p1, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "taskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/jiliguala/niuwa/module/video/VideoLandscapeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v1, :cond_0

    .line 461
    const-string v1, "mc_pc_sub_task_ticket"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 463
    :cond_0
    const-string v1, "rid"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "from_practise"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    const-string v1, "extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method private initMCRoadmapBgData()V
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    .line 495
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f080103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f080105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method private initPHRoadmapBgData()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f080104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f0800ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f080100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f080101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f080102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    const v1, 0x7f080106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method private initPrepareInteractResView(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V
    .locals 3
    .param p1, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "prepareInteractResView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .prologue
    .line 364
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->MC_PHONICS:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    iget v1, v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setType(I)V

    .line 365
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateUIOnlyShowProgress()V

    .line 369
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hidePlayBtn()V

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "uniqueName":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setActionScriptId(Ljava/lang/String;)V

    .line 373
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->packages:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setData(Ljava/util/ArrayList;)V

    .line 374
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mFragment:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;)V

    .line 375
    return-void
.end method

.method public static objectScaleAnimation(Landroid/view/View;)Lcom/nineoldandroids/a/d;
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 315
    new-instance v0, Lcom/nineoldandroids/a/d;

    invoke-direct {v0}, Lcom/nineoldandroids/a/d;-><init>()V

    .line 317
    .local v0, "animatorSet":Lcom/nineoldandroids/a/d;
    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 319
    .local v1, "xAnimation":Lcom/nineoldandroids/a/l;
    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v2

    .line 321
    .local v2, "yAnimation":Lcom/nineoldandroids/a/l;
    invoke-virtual {v1, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 322
    invoke-virtual {v2, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 324
    invoke-virtual {v1, v5}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 325
    invoke-virtual {v2, v5}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 327
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 329
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nineoldandroids/a/d$b;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 331
    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->a()V

    .line 333
    return-object v0

    .line 317
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8f5c29    # 1.12f
        0x3f800000    # 1.0f
    .end array-data

    .line 319
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8f5c29    # 1.12f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private refreshDetailHolderUI(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;I)V
    .locals 5
    .param p1, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "detailHolder"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
    .param p3, "position"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 391
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1, p3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->getDesc(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    iget-object v1, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->b:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->showOnTypeLocked(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 400
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->e:Landroid/widget/RatingBar;

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 402
    iget v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->rating:I

    iget-object v1, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->e:Landroid/widget/RatingBar;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->setStarRating(ILandroid/widget/RatingBar;)V

    .line 406
    :goto_1
    return-void

    .line 397
    :cond_0
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    iget-object v1, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->b:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->showOnType(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->e:Landroid/widget/RatingBar;

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private relayoutCurrentItemHeight(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;I)V
    .locals 4
    .param p1, "currentHolder"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
    .param p2, "position"    # I

    .prologue
    .line 278
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mRealScreenHeight:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 279
    .local v0, "marginTop":I
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 280
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 281
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 283
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 284
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private relayoutDetailItem(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;I)V
    .locals 4
    .param p1, "detailHolder"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
    .param p2, "position"    # I

    .prologue
    .line 291
    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mRealScreenHeight:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 292
    .local v0, "marginTop":I
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 293
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 294
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 296
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 297
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private reportSubLessonView(ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "sub"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .prologue
    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isMcWatch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-string v1, "Type"

    const-string v2, "MC-video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :goto_0
    const-string v1, "Lesson Type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 491
    return-void

    .line 487
    :cond_0
    const-string v1, "Type"

    iget-object v2, p2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setHolderClickListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Landroid/support/v7/widget/RecyclerView$w;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "prepareInteractResView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .param p2, "position"    # I
    .param p3, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p4, "currentHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p5, "bg"    # Landroid/widget/ImageView;

    .prologue
    .line 378
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;I)V

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void
.end method

.method private setStarRating(ILandroid/widget/RatingBar;)V
    .locals 1
    .param p1, "rating"    # I
    .param p2, "ratingBar"    # Landroid/widget/RatingBar;

    .prologue
    .line 511
    const/16 v0, 0x51

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 512
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 520
    :goto_0
    return-void

    .line 513
    :cond_0
    const/16 v0, 0x2e

    if-lt p1, v0, :cond_1

    const/16 v0, 0x50

    if-gt p1, v0, :cond_1

    .line 514
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p2, v0}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0

    .line 515
    :cond_1
    if-ltz p1, :cond_2

    const/16 v0, 0x2d

    if-gt p1, v0, :cond_2

    .line 516
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0

    .line 518
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0
.end method

.method private showOnType(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "bg"    # Landroid/widget/ImageView;
    .param p3, "icon"    # Landroid/widget/ImageView;
    .param p4, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 523
    if-ne p4, v1, :cond_1

    .line 524
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    const v0, 0x7f0803fb

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 529
    :sswitch_0
    const-string v1, "funwatch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "songwatch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v1, "watch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "interaction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "drag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "talk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "alphabet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "hit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    .line 535
    :pswitch_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    const v0, 0x7f080403

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 539
    :pswitch_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    const v0, 0x7f080409

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 543
    :pswitch_3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    const v0, 0x7f0803ff

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 548
    :pswitch_4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    const v0, 0x7f0803fd

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 553
    :pswitch_5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    const v0, 0x7f080407

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 558
    :pswitch_6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    const v0, 0x7f080405

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 563
    :pswitch_7
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    const v0, 0x7f08040b

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 567
    :pswitch_8
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    const v0, 0x7f080401

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        0x19393 -> :sswitch_8
        0x1bfa3 -> :sswitch_5
        0x2f2d34 -> :sswitch_4
        0x3634ac -> :sswitch_6
        0x6bac4cf -> :sswitch_2
        0x16cbb4da -> :sswitch_1
        0x5360ceb0 -> :sswitch_0
        0x6deace12 -> :sswitch_3
        0x7278e673 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private showOnTypeLocked(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "bg"    # Landroid/widget/ImageView;
    .param p3, "icon"    # Landroid/widget/ImageView;

    .prologue
    const v2, 0x7f06003d

    .line 575
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 628
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    :goto_1
    return-void

    .line 575
    :sswitch_0
    const-string v1, "funwatch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "songwatch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "watch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "interaction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "drag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "talk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "alphabet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "hit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 577
    :pswitch_0
    const v0, 0x7f0803fc

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 578
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 582
    :pswitch_1
    const v0, 0x7f080404

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 587
    :pswitch_2
    const v0, 0x7f08040a

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 592
    :pswitch_3
    const v0, 0x7f080400

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 593
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 598
    :pswitch_4
    const v0, 0x7f0803fe

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 604
    :pswitch_5
    const v0, 0x7f080408

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 610
    :pswitch_6
    const v0, 0x7f080406

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 611
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 616
    :pswitch_7
    const v0, 0x7f08040c

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 617
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 622
    :pswitch_8
    const v0, 0x7f080402

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 575
    nop

    :sswitch_data_0
    .sparse-switch
        0x19393 -> :sswitch_8
        0x1bfa3 -> :sswitch_5
        0x2f2d34 -> :sswitch_4
        0x3634ac -> :sswitch_6
        0x6bac4cf -> :sswitch_2
        0x16cbb4da -> :sswitch_1
        0x5360ceb0 -> :sswitch_0
        0x6deace12 -> :sswitch_3
        0x7278e673 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 135
    .local v0, "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isInteractionGame()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    .line 139
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isSpecial()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    const/4 v1, 0x4

    goto :goto_0

    .line 146
    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isInteractionGame()Z

    move-result v1

    if-nez v1, :cond_4

    .line 150
    const/4 v1, 0x2

    goto :goto_0

    .line 152
    :cond_4
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 13
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const v5, 0x7f0600fe

    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 194
    .local v3, "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    move-object v4, p1

    .line 196
    check-cast v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;

    .line 198
    .local v4, "currentHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
    iget-object v0, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v0, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->d:Landroid/widget/TextView;

    invoke-direct {p0, v3, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->getDesc(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    iget-object v2, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->b:Landroid/widget/ImageView;

    iget-object v5, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v5, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->showOnType(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 203
    iget-object v5, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->b:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->setHolderClickListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Landroid/support/v7/widget/RecyclerView$w;Landroid/widget/ImageView;)V

    .line 207
    iget-object v2, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    invoke-direct {p0, v4, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->relayoutCurrentItemHeight(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;I)V

    .line 275
    .end local v4    # "currentHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move-object v4, p1

    .line 213
    check-cast v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;

    .line 215
    .local v4, "currentHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;
    iget-object v0, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->d:Landroid/widget/TextView;

    invoke-direct {p0, v3, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->getDesc(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    iget-object v2, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->b:Landroid/widget/ImageView;

    iget-object v5, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v5, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->showOnType(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 221
    iget-object v1, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->h:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .line 223
    .local v1, "prepareInteractResView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->bringToFront()V

    .line 225
    invoke-direct {p0, v3, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->initPrepareInteractResView(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V

    .line 227
    iget-object v5, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->b:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->setHolderClickListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Landroid/support/v7/widget/RecyclerView$w;Landroid/widget/ImageView;)V

    .line 231
    iget-object v2, v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-direct {p0, v4, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->relayoutCurrentItemHeight(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;I)V

    goto :goto_0

    .line 235
    .end local v1    # "prepareInteractResView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .end local v4    # "currentHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    move-object v9, p1

    .line 237
    check-cast v9, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;

    .line 239
    .local v9, "detailHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
    invoke-direct {p0, v3, v9, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->refreshDetailHolderUI(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;I)V

    .line 241
    iget-object v10, v9, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->b:Landroid/widget/ImageView;

    move-object v5, p0

    move-object v6, v1

    move v7, p2

    move-object v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->setHolderClickListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Landroid/support/v7/widget/RecyclerView$w;Landroid/widget/ImageView;)V

    .line 243
    iget-object v2, v9, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-direct {p0, v9, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->relayoutDetailItem(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;I)V

    goto/16 :goto_0

    .line 247
    .end local v9    # "detailHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    move-object v9, p1

    .line 248
    check-cast v9, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;

    .line 250
    .local v9, "detailHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;
    invoke-direct {p0, v3, v9, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->refreshDetailHolderUI(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;I)V

    .line 253
    iget-object v1, v9, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;->i:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .line 255
    .restart local v1    # "prepareInteractResView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->bringToFront()V

    .line 257
    invoke-direct {p0, v3, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->initPrepareInteractResView(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V

    .line 259
    iget-object v10, v9, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;->b:Landroid/widget/ImageView;

    move-object v5, p0

    move-object v6, v1

    move v7, p2

    move-object v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->setHolderClickListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Landroid/support/v7/widget/RecyclerView$w;Landroid/widget/ImageView;)V

    .line 261
    iget-object v2, v9, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mBgs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-direct {p0, v9, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->relayoutDetailItem(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;I)V

    goto/16 :goto_0

    .line 265
    .end local v1    # "prepareInteractResView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .end local v9    # "detailHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    move-object v12, p1

    .line 266
    check-cast v12, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;

    .line 267
    .local v12, "h":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mIsMc:Z

    if-eqz v0, :cond_5

    const v0, 0x7f080103

    :goto_1
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f080104

    goto :goto_1

    .line 270
    .end local v12    # "h":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;
    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    move-object v11, p1

    .line 271
    check-cast v11, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$e;

    .line 272
    .local v11, "f":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$e;
    iget-object v2, v11, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$e;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mIsMc:Z

    if-eqz v0, :cond_7

    const v0, 0x7f080105

    :goto_2
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f080106

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v4, 0x7f0b00e7

    const/4 v5, 0x0

    .line 160
    if-nez p2, :cond_0

    .line 161
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00e8

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;-><init>(Landroid/view/View;)V

    .local v0, "currentHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
    move-object v1, v0

    .line 183
    .end local v0    # "currentHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$a;
    :goto_0
    return-object v1

    .line 164
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00e9

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 166
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 167
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 169
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;-><init>(Landroid/view/View;)V

    .line 170
    .local v1, "detailHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
    goto :goto_0

    .line 171
    .end local v1    # "detailHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00ea

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 173
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$d;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 174
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    if-ne p2, v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00ec

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 176
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$f;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 177
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x5

    if-ne p2, v3, :cond_5

    .line 178
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00eb

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 179
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$e;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$e;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 181
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 182
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;-><init>(Landroid/view/View;)V

    .line 183
    .restart local v1    # "detailHolder":Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter$c;
    goto :goto_0
.end method

.method public startCourse(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V
    .locals 3
    .param p1, "prepareInteractResView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .param p2, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p3, "position"    # I

    .prologue
    .line 409
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->hasResId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    invoke-direct {p0, p3, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->reportSubLessonView(ILcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;)V

    .line 412
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setLessons(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setPosition(I)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setRedId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mFragment:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->build()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v0

    .line 414
    .local v0, "taskTicket":Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    invoke-direct {p0, p2, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->goToWatch(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isInteractionGame()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->goToInteract(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    goto :goto_0

    .line 421
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->goToGame(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    goto :goto_0
.end method

.method public update(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 2
    .param p1, "lessons"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->addHeaderAndFooter(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->mDataList:Ljava/util/List;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method
