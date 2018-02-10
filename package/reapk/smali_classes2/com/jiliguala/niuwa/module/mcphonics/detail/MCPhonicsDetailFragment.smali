.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;
.implements Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;",
        "Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;",
        "Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

.field private mBackIcon:Landroid/widget/ImageView;

.field private mBuyOneVOne:Landroid/widget/TextView;

.field private mBuyRoadMap:Landroid/widget/TextView;

.field mBuyUrl:Ljava/lang/String;

.field private mEnablePostPurchaseEvent:Z

.field private mFinishCount:Landroid/widget/TextView;

.field private mFirstToCenter:Z

.field private mHasStop:Z

.field private mId:Ljava/lang/String;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

.field private mLessonIcon:Landroid/widget/ImageView;

.field private mProgressTitle:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mReprot:Landroid/widget/ImageView;

.field private mRoadMapBean:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

.field private mRootView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field public mType:Ljava/lang/String;

.field private mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field private mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

.field random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->TAG:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 88
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->random:Ljava/util/Random;

    .line 91
    const-string v0, "lesson-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->resetCurrentItemToCenterScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->reportSubLesonComplete(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->exit()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    return-object v0
.end method

.method private autoGoFirstLesson(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 4
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    const/4 v3, 0x1

    .line 336
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/util/n;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->startCourse(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    .line 339
    :cond_0
    return-void
.end method

.method private exit()V
    .locals 3

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 453
    .local v2, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 454
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 456
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getComplete(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)I
    .locals 4
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 342
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 350
    :cond_1
    return v0

    .line 343
    :cond_2
    const/4 v0, 0x0

    .line 344
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 345
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 346
    .local v2, "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 347
    add-int/lit8 v0, v0, 0x1

    .line 344
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCurrentPos(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)I
    .locals 4
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    const/4 v2, 0x0

    .line 355
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 365
    :cond_1
    :goto_0
    return v0

    .line 356
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 357
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 358
    .local v1, "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCurrent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    :cond_3
    move v0, v2

    .line 365
    goto :goto_0
.end method

.method private goReport()V
    .locals 4

    .prologue
    .line 430
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v2, :cond_0

    .line 431
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "curBabyId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/mcphonics/report/ReportH5Activity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "key_url"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/jiliguala/niuwa/logic/l/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v2, "SHARE_THUMB"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v2, "SHARE_TTL"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v2, "SHARE_DESC"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v2, "SHARE_RID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 441
    .end local v0    # "curBabyId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private goToLessonSharePageActivity(ZZ)V
    .locals 3
    .param p1, "isRefreshScore"    # Z
    .param p2, "enablePostPurchaseEven"    # Z

    .prologue
    .line 631
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v1, "title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v1, "thumb"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-string v1, "isRefreshScore"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v1, "score"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->score:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 637
    const-string v1, "flag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    if-eqz p1, :cond_0

    .line 639
    const/16 v1, 0xa2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    const/16 v1, 0xa1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private goToNewLessonSharePageActivity(ZZ)V
    .locals 3
    .param p1, "isRefreshScore"    # Z
    .param p2, "enablePostPurchaseEvent"    # Z

    .prologue
    .line 615
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v1, "title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v1, "thumb"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v1, "isRefreshScore"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    const-string v1, "score"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->score:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 621
    const-string v1, "flag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    if-eqz p1, :cond_0

    .line 623
    const/16 v1, 0xa2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    const/16 v1, 0xa1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    .line 160
    const-string v1, "modle_bean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRoadMapBean:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 162
    const-string v1, "mcteplete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 164
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    .line 166
    const-string v1, "flag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mEnablePostPurchaseEvent:Z

    .line 167
    return-void
.end method

.method private handleJumpSubCourse(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 13
    .param p1, "currentLesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    const/16 v12, 0x50

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 567
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-nez v7, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getPosition()I

    move-result v3

    .line 570
    .local v3, "oldPos":I
    add-int/lit8 v0, v3, 0x1

    .line 571
    .local v0, "currentPos":I
    iget-object v7, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 572
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 573
    .local v4, "previousSubBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    iget-object v7, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 576
    .local v6, "updatePreviousSubBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    iget-object v7, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isComplete()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 577
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->reportLessonCompleteAmplitude(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 578
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 579
    const-string v7, "PREFS_KEY_MC_PC_SHARE_PAGE"

    invoke-static {v7, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v5

    .line 580
    .local v5, "sharePageType":I
    if-ne v5, v9, :cond_2

    .line 581
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->random:Ljava/util/Random;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 582
    .local v2, "i":I
    const-string v7, "PREFS_KEY_MC_PC_SHARE_PAGE"

    invoke-static {v7, v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 583
    const-string v7, "PREFS_KEY_MC_PC_SHARE_PAGE"

    invoke-static {v7, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v5

    .line 586
    .end local v2    # "i":I
    :cond_2
    if-nez v5, :cond_4

    .line 587
    iget-boolean v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mEnablePostPurchaseEvent:Z

    invoke-direct {p0, v10, v7}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->goToLessonSharePageActivity(ZZ)V

    .line 594
    .end local v5    # "sharePageType":I
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCompleted()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 595
    iget v7, v4, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->rating:I

    if-ge v7, v12, :cond_5

    iget v7, v6, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->rating:I

    if-lt v7, v12, :cond_5

    .line 596
    invoke-direct {p0, v11, v10}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->goToLessonSharePageActivity(ZZ)V

    goto :goto_0

    .line 588
    .restart local v5    # "sharePageType":I
    :cond_4
    if-ne v5, v11, :cond_3

    .line 589
    iget-boolean v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mEnablePostPurchaseEvent:Z

    invoke-direct {p0, v10, v7}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->goToNewLessonSharePageActivity(ZZ)V

    goto :goto_1

    .line 602
    .end local v5    # "sharePageType":I
    :cond_5
    iget-object v7, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 603
    iget-object v7, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 604
    .local v1, "currentSubean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCurrent()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 605
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->startCourse(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    goto/16 :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 253
    const v0, 0x7f09057a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mTitle:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f090407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mProgressTitle:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBackIcon:Landroid/widget/ImageView;

    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v0, 0x7f0902c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLessonIcon:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f090436

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setClipChildren(Z)V

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 274
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 275
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 277
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->isMc()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;Z)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 279
    const v0, 0x7f090206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mFinishCount:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f09044b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mReprot:Landroid/widget/ImageView;

    .line 281
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mReprot:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v0, 0x7f0900e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyRoadMap:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyRoadMap:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v0, 0x7f0900e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyOneVOne:Landroid/widget/TextView;

    .line 286
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyOneVOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyRoadMap:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyOneVOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    return-void
.end method

.method private refreshUI(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 6
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 373
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mFinishCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->doneusers:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4eba\u5b8c\u6210"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getComplete(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)I

    move-result v0

    .line 376
    .local v0, "progress":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mProgressTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b8c\u6210 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mReprot:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLessonIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 379
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyRoadMap:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isBuyRoadMap()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyOneVOne:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isBuy1V1()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    return-void

    .line 377
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 379
    goto :goto_1

    :cond_2
    move v2, v3

    .line 380
    goto :goto_2
.end method

.method private reportLessonReportView()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "Source"

    const-string v2, "lesson detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Report View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 448
    return-void
.end method

.method private reportSubLesonComplete(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 11
    .param p1, "taskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 532
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "ID"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getResId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v8, "Position"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v7

    .line 537
    .local v7, "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    if-eqz v7, :cond_0

    .line 538
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isMcWatch()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 539
    const-string v8, "Type"

    const-string v9, "MC-video"

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSectionScoreMap()Ljava/util/Map;

    move-result-object v6

    .line 547
    .local v6, "sectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 548
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v2, "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 551
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 552
    .local v5, "sectionID":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    .line 553
    .local v4, "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    iget-object v9, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    iget v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->realScore:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    .end local v2    # "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    .end local v5    # "sectionID":Ljava/lang/String;
    .end local v6    # "sectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    :cond_1
    const-string v8, "Type"

    iget-object v9, v7, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 557
    .restart local v2    # "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "sectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    :cond_2
    const-string v8, "Lesson Type"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v8, "Section Score"

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v8, "Real Section Score"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .end local v2    # "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v8

    const-string v9, "Sub Lesson Complete"

    invoke-virtual {v8, v9, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 564
    return-void
.end method

.method private resetCurrentItemToCenterScreen()V
    .locals 6

    .prologue
    .line 316
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getCurrentPos()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "currentItemView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 319
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 321
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 323
    .local v1, "halfScreen":I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int v2, v4, v1

    .line 327
    .local v2, "offset":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 329
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mFirstToCenter:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "currentItemView":Landroid/view/View;
    .end local v1    # "halfScreen":I
    .end local v2    # "offset":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setBgColor()V
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->isMc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addCourseFinishWatcher()V
    .locals 4

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/f;

    .line 490
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$4;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$5;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$5;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V

    .line 491
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 489
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 529
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;-><init>()V

    return-object v0
.end method

.method public enableInnerContainer()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public exitCurrentSubCourse()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public getCurrentPos()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getCurrentPos(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)I

    move-result v0

    return v0
.end method

.method public getState(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 249
    const-string v0, ""

    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    const-string v0, "INVALID_POINTER"

    goto :goto_0

    .line 243
    :pswitch_1
    const-string v0, "SCROLL_STATE_IDLE"

    goto :goto_0

    .line 245
    :pswitch_2
    const-string v0, "SCROLL_STATE_DRAGGING"

    goto :goto_0

    .line 247
    :pswitch_3
    const-string v0, "SCROLL_STATE_SETTLING"

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getUi()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;
    .locals 0

    .prologue
    .line 104
    return-object p0
.end method

.method public hasCoursePay()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public hasStop()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mHasStop:Z

    return v0
.end method

.method public isInteractCourseFragmentVisible()Z
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isLv1()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "Lv1"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMc()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->requestServer(Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 647
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 648
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 649
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->exit()V

    .line 653
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 404
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->reportLessonReportView()V

    .line 405
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->goReport()V

    goto :goto_0

    .line 408
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->exit()V

    goto :goto_0

    .line 411
    :sswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->isLv1()Z

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyUrl:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 414
    :sswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1v1Detail View"

    const-string v2, "1v1Detail View"

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goByOneVOneCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090096 -> :sswitch_1
        0x7f0900e5 -> :sswitch_3
        0x7f0900e6 -> :sswitch_2
        0x7f09044b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->handleArguments()V

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    const-string v0, "parenting-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mBuyUrl:Ljava/lang/String;

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->addCourseFinishWatcher()V

    .line 124
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->reportLessonViewAmplitude()V

    .line 125
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/c;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 203
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 213
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    :cond_1
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 176
    const v0, 0x7f0b00b9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRootView:Landroid/view/View;

    .line 177
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->setBgColor()V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->initView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 658
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    if-eqz v1, :cond_0

    .line 659
    check-cast v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->checkAllShowAnim()V

    .line 661
    :cond_0
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 662
    return-void
.end method

.method public onRefreshSuccess(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 1
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->refreshUI(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 386
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->update(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->handleJumpSubCourse(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 388
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mHasStop:Z

    .line 146
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onStop()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mHasStop:Z

    .line 153
    return-void
.end method

.method public reportLessonCompleteAmplitude(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 3
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 397
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Complete"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public reportLessonViewAmplitude()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRoadMapBean:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRoadMapBean:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const-string v1, "State"

    const-string v2, "locked"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_2
    :goto_1
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRoadMapBean:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    const-string v1, "State"

    const-string v2, "current"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRoadMapBean:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const-string v1, "State"

    const-string v2, "completed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public showData(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 2
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 296
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->refreshUI(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mAdapter:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailAdapter;->update(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getCurrentPos()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->autoGoFirstLesson(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mFirstToCenter:Z

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_2
    return-void
.end method
