.class public Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final KEY_SAVE_INSTANCE:Ljava/lang/String; = "key_save_instance"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private boardName:Ljava/lang/String;

.field private boid:I

.field private forumSortPop:Landroid/widget/PopupWindow;

.field private mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

.field private mBoid:I

.field private mBoidTitle:Ljava/lang/String;

.field private mCurClickId:I

.field private mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Landroid/widget/TextView;

.field private mForumPageFragment:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

.field private mIsLoadingMore:Z

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mReadOnly:Z

.field private mTitle:Landroid/widget/TextView;

.field private sortMode:I

.field private sortType:I

.field private tagId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 58
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 91
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    .line 92
    iput v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    .line 97
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->boid:I

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->boardName:Ljava/lang/String;

    .line 104
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 105
    iput v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mIsLoadingMore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->gotoCreatePost()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->refreshNewData()V

    return-void
.end method

.method private createPost()V
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->showForumCreator(Landroid/app/Activity;)V

    .line 601
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    .line 602
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 108
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .line 109
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;-><init>()V

    .line 114
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    :cond_0
    return-object v0
.end method

.method private generateLoadOldSub()Lrx/l;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    return-object v0
.end method

.method private generateRefreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    return-object v0
.end method

.method private gotoCreatePost()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 285
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 286
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->p()Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f016b

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x8fd

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 291
    iput v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    .line 304
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0157

    const-string v4, "SEND_REPLY_FORUM_POST"

    invoke-static {v2, v3, v4}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 298
    .restart local v1    # "intent":Landroid/content/Intent;
    const/16 v2, 0x2329

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    iput v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    goto :goto_0

    .line 303
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->createPost()V

    goto :goto_0
.end method

.method private loadMoreData()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 442
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v6

    .line 443
    .local v6, "count":I
    const/4 v3, 0x0

    .line 444
    .local v3, "rts":Ljava/lang/String;
    if-lez v6, :cond_0

    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 446
    .local v7, "lastForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    if-eqz v7, :cond_0

    .line 447
    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->sortts:Ljava/lang/String;

    .line 451
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mIsLoadingMore:Z

    .line 454
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->requestForum(IILjava/lang/String;IZ)V

    .line 457
    .end local v7    # "lastForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    :cond_0
    return-void
.end method

.method private refreshBoardList()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method private refreshNewData()V
    .locals 6

    .prologue
    .line 438
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->requestForum(IILjava/lang/String;IZ)V

    .line 439
    return-void
.end method

.method private reportToAmp()V
    .locals 3

    .prologue
    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Room"

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    packed-switch v1, :pswitch_data_0

    .line 624
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Forum Action"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 625
    return-void

    .line 609
    :pswitch_0
    const-string v1, "Type"

    const-string v2, "All"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 612
    :pswitch_1
    const-string v1, "Type"

    const-string v2, "Latest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 615
    :pswitch_2
    const-string v1, "Type"

    const-string v2, "Selected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private requestForum(IILjava/lang/String;IZ)V
    .locals 6
    .param p1, "boid"    # I
    .param p2, "sortType"    # I
    .param p3, "ts"    # Ljava/lang/String;
    .param p4, "tagId"    # I
    .param p5, "loadMore"    # Z

    .prologue
    const/4 v1, 0x0

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "sortStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 474
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 475
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    if-nez p3, :cond_0

    move-object v2, v1

    .line 476
    :goto_1
    const/4 v5, -0x1

    if-ne p4, v5, :cond_1

    :goto_2
    invoke-interface {v4, v2, p1, v0, v1}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 477
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 478
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 479
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p5, :cond_2

    .line 480
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->generateLoadOldSub()Lrx/l;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 474
    invoke-virtual {v3, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 481
    return-void

    .line 464
    :pswitch_0
    const/4 v0, 0x0

    .line 465
    goto :goto_0

    .line 467
    :pswitch_1
    const-string v0, "new"

    .line 468
    goto :goto_0

    .line 470
    :pswitch_2
    const-string v0, "sel"

    goto :goto_0

    .line 475
    :cond_0
    const-string v2, "+"

    const-string v5, "%2B"

    .line 476
    invoke-virtual {p3, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 480
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->generateRefreshNewSub()Lrx/l;

    move-result-object v1

    goto :goto_3

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showForumCreator(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 585
    const/4 v1, 0x0

    .line 586
    .local v1, "boid":I
    const-string v0, ""

    .line 588
    .local v0, "boardName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 589
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 590
    const-string v3, "CUR_BOID"

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v3, "BOARD_NAME"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 594
    const v3, 0x7f01001d

    const v4, 0x7f010013

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 595
    return-void
.end method

.method private showSortPop(Landroid/view/View;Ljava/lang/String;)V
    .locals 13
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "currentStr"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f090224

    const v10, 0x7f09021d

    const v8, 0x7f09021c

    const/4 v9, 0x1

    .line 628
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 629
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0b0116

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 630
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 631
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 633
    :cond_0
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 634
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 636
    :cond_1
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 637
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 639
    :cond_2
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    invoke-virtual {v5, v12, v12}, Landroid/view/View;->measure(II)V

    .line 643
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v5, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    .line 644
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    const v7, 0x7f1001c4

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 645
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 646
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 648
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 649
    .local v4, "mw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 650
    .local v2, "mh":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07014c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int v0, v6, v2

    .line 651
    .local v0, "height":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    .line 652
    .local v3, "minus_margin":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 653
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07014c

    .line 654
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    neg-int v8, v8

    .line 652
    invoke-virtual {v6, p1, v7, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 655
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 413
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    :cond_1
    return-void
.end method

.method public clickToRefresh()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 398
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$7;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    :cond_1
    return-void
.end method

.method public isForumTop()Z
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 386
    .local v0, "firstPos":I
    if-nez v0, :cond_0

    .line 387
    const/4 v1, 0x1

    .line 390
    .end local v0    # "firstPos":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 558
    sparse-switch p1, :sswitch_data_0

    .line 579
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 560
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 561
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f0157

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 566
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 569
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->createPost()V

    goto :goto_0

    .line 574
    :sswitch_1
    if-ne p1, v1, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->createPost()V

    goto :goto_0

    .line 558
    nop

    :sswitch_data_0
    .sparse-switch
        0x8fd -> :sswitch_0
        0x2329 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/app/Activity;)V

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 495
    .local v2, "id":I
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    .line 496
    sparse-switch v2, :sswitch_data_0

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 498
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 500
    .local v1, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 501
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 502
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->e()Z

    goto :goto_0

    .line 507
    .end local v0    # "count":I
    .end local v1    # "fm":Landroid/support/v4/app/ag;
    :sswitch_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->showSortPop(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :sswitch_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 511
    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 512
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 513
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v5, 0x7f0f00e3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 514
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 515
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Type"

    const-string v5, "Total"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Filter Topic"

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 517
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->reportToAmp()V

    .line 518
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    goto :goto_0

    .line 521
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_3
    const/4 v4, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 522
    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 523
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 524
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v5, 0x7f0f00e4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 525
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 526
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Type"

    const-string v5, "New"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Filter Topic"

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 528
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->reportToAmp()V

    .line 529
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    goto/16 :goto_0

    .line 532
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_4
    const/4 v4, 0x2

    iput v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 533
    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 534
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 535
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v5, 0x7f0f00e5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 536
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 537
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Type"

    const-string v5, "Highlight"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Filter Topic"

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 539
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->reportToAmp()V

    .line 540
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    goto/16 :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090203 -> :sswitch_1
        0x7f09021c -> :sswitch_2
        0x7f09021d -> :sswitch_4
        0x7f090224 -> :sswitch_3
        0x7f09058f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Room"

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Forum View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 282
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    const v3, 0x7f09021f

    .line 309
    const v1, 0x7f0b00a6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09058f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mReadOnly:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$4;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 319
    const v1, 0x7f09057a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mTitle:Landroid/widget/TextView;

    .line 320
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_0
    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    .line 324
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v2, 0x7f0f00e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 327
    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 329
    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mEmptyView:Landroid/view/View;

    .line 330
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 343
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 344
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 346
    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    .line 347
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$6;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 379
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 380
    return-object v0

    .line 312
    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 485
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 487
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->clearDataSets()V

    .line 490
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 222
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 269
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->refreshNewData()V

    .line 433
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 252
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v0

    .line 256
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 259
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    .line 262
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    const-string v0, "key_save_instance"

    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 233
    if-eqz p1, :cond_0

    const-string v0, "key_save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "key_save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 238
    return-void
.end method

.method public setBoid(I)V
    .locals 0
    .param p1, "boid"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    .line 192
    return-void
.end method

.method public setBoidTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 196
    return-void
.end method

.method public setForumPageFragment(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)V
    .locals 0
    .param p1, "mForumPageFragment"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mForumPageFragment:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .line 200
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mReadOnly:Z

    .line 181
    return-void
.end method

.method public setSortType(I)V
    .locals 2
    .param p1, "sortType"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->setSortType(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public setTagId(I)V
    .locals 0
    .param p1, "tagId"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    .line 188
    return-void
.end method
