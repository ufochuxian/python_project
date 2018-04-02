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

.field private forumSortDlg:Landroid/app/Dialog;

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
    .line 58
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 59
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

    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$1;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 92
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    .line 93
    iput v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    .line 98
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->boid:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->boardName:Ljava/lang/String;

    .line 105
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 106
    iput v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mIsLoadingMore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->gotoCreatePost()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->refreshNewData()V

    return-void
.end method

.method private createPost()V
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->showForumCreator(Landroid/app/Activity;)V

    .line 603
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    .line 604
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 109
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .line 110
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;-><init>()V

    .line 115
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    :cond_0
    return-object v0
.end method

.method private generateLoadOldSub()Lrx/l;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$2;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    return-object v0
.end method

.method private generateRefreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    return-object v0
.end method

.method private gotoCreatePost()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 286
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 287
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->p()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f016b

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 291
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x8fd

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    iput v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    .line 305
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0157

    const-string v4, "SEND_REPLY_FORUM_POST"

    invoke-static {v2, v3, v4}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 299
    .restart local v1    # "intent":Landroid/content/Intent;
    const/16 v2, 0x2329

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    iput v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    goto :goto_0

    .line 304
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->createPost()V

    goto :goto_0
.end method

.method private loadMoreData()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 444
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v6

    .line 445
    .local v6, "count":I
    const/4 v3, 0x0

    .line 446
    .local v3, "rts":Ljava/lang/String;
    if-lez v6, :cond_0

    .line 447
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 448
    .local v7, "lastForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    if-eqz v7, :cond_0

    .line 449
    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->sortts:Ljava/lang/String;

    .line 453
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mIsLoadingMore:Z

    .line 456
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->requestForum(IILjava/lang/String;IZ)V

    .line 459
    .end local v7    # "lastForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    :cond_0
    return-void
.end method

.method private refreshBoardList()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method private refreshNewData()V
    .locals 6

    .prologue
    .line 440
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->requestForum(IILjava/lang/String;IZ)V

    .line 441
    return-void
.end method

.method private reportToAmp()V
    .locals 3

    .prologue
    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Room"

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    packed-switch v1, :pswitch_data_0

    .line 626
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Forum Action"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 627
    return-void

    .line 611
    :pswitch_0
    const-string v1, "Type"

    const-string v2, "All"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 614
    :pswitch_1
    const-string v1, "Type"

    const-string v2, "Latest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 617
    :pswitch_2
    const-string v1, "Type"

    const-string v2, "Selected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 609
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

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "sortStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 476
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    if-nez p3, :cond_0

    move-object v2, v1

    .line 478
    :goto_1
    const/4 v5, -0x1

    if-ne p4, v5, :cond_1

    :goto_2
    invoke-interface {v4, v2, p1, v0, v1}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 479
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 480
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 481
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p5, :cond_2

    .line 482
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->generateLoadOldSub()Lrx/l;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 476
    invoke-virtual {v3, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 483
    return-void

    .line 466
    :pswitch_0
    const/4 v0, 0x0

    .line 467
    goto :goto_0

    .line 469
    :pswitch_1
    const-string v0, "new"

    .line 470
    goto :goto_0

    .line 472
    :pswitch_2
    const-string v0, "sel"

    goto :goto_0

    .line 477
    :cond_0
    const-string v2, "+"

    const-string v5, "%2B"

    .line 478
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

    .line 482
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->generateRefreshNewSub()Lrx/l;

    move-result-object v1

    goto :goto_3

    .line 464
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
    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, "boid":I
    const-string v0, ""

    .line 590
    .local v0, "boardName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 591
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 592
    const-string v3, "CUR_BOID"

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    const-string v3, "BOARD_NAME"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 596
    const v3, 0x7f01001f

    const v4, 0x7f010014

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 597
    return-void
.end method

.method private showSortPop(Landroid/view/View;Ljava/lang/String;)V
    .locals 12
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "currentStr"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f090224

    const v10, 0x7f09021d

    const v9, 0x7f09021c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 631
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0b0118

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 632
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 633
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 635
    :cond_0
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 636
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 638
    :cond_1
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 639
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 641
    :cond_2
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    .line 646
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1000b4

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    .line 647
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 648
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 650
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 651
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 652
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 654
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 655
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x1

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 656
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 657
    const v5, 0x7f1001c6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 658
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "window":Landroid/view/Window;
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 676
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 415
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :cond_1
    return-void
.end method

.method public clickToRefresh()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 400
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$7;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    :cond_1
    return-void
.end method

.method public isForumTop()Z
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 387
    .local v0, "firstPos":I
    if-nez v0, :cond_0

    .line 388
    const/4 v1, 0x1

    .line 391
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

    .line 560
    sparse-switch p1, :sswitch_data_0

    .line 581
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 562
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 563
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f0157

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 571
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->createPost()V

    goto :goto_0

    .line 576
    :sswitch_1
    if-ne p1, v1, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->createPost()V

    goto :goto_0

    .line 560
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
    .line 217
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/app/Activity;)V

    .line 218
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 497
    .local v2, "id":I
    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurClickId:I

    .line 498
    sparse-switch v2, :sswitch_data_0

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 500
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 502
    .local v1, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 503
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 504
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->e()Z

    goto :goto_0

    .line 509
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

    .line 512
    :sswitch_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 513
    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 514
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 515
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v5, 0x7f0f00e3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 516
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Type"

    const-string v5, "Total"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Filter Topic"

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 519
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->reportToAmp()V

    .line 520
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    goto :goto_0

    .line 523
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_3
    const/4 v4, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 524
    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 525
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 526
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v5, 0x7f0f00e4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 527
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 528
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Type"

    const-string v5, "New"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Filter Topic"

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 530
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->reportToAmp()V

    .line 531
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    goto/16 :goto_0

    .line 534
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_4
    const/4 v4, 0x2

    iput v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    .line 535
    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortMode:I

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 536
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->forumSortDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 537
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v5, 0x7f0f00e5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 538
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 539
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Type"

    const-string v5, "Highlight"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Filter Topic"

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 541
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->reportToAmp()V

    .line 542
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    goto/16 :goto_0

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090203 -> :sswitch_1
        0x7f09021c -> :sswitch_2
        0x7f09021d -> :sswitch_4
        0x7f090224 -> :sswitch_3
        0x7f090599 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Room"

    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Forum View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 283
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

    .line 310
    const v1, 0x7f0b00a6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090599

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mReadOnly:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$4;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 320
    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mTitle:Landroid/widget/TextView;

    .line 321
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    .line 325
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mFilter:Landroid/widget/TextView;

    const v2, 0x7f0f00e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 328
    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 330
    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mEmptyView:Landroid/view/View;

    .line 331
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 344
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 345
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    .line 348
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 349
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$6;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 380
    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setSortType(I)V

    .line 381
    return-object v0

    .line 313
    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 489
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->clearDataSets()V

    .line 492
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 223
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 270
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->refreshNewData()V

    .line 435
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 253
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v0

    .line 257
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 260
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    .line 263
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    const-string v0, "key_save_instance"

    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 234
    if-eqz p1, :cond_0

    const-string v0, "key_save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "key_save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    .line 238
    :cond_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

.method public setBoid(I)V
    .locals 0
    .param p1, "boid"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoid:I

    .line 193
    return-void
.end method

.method public setBoidTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mBoidTitle:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mCurrentIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 197
    return-void
.end method

.method public setForumPageFragment(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)V
    .locals 0
    .param p1, "mForumPageFragment"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mForumPageFragment:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .line 201
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mReadOnly:Z

    .line 182
    return-void
.end method

.method public setSortType(I)V
    .locals 2
    .param p1, "sortType"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->mAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->sortType:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->setSortType(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public setTagId(I)V
    .locals 0
    .param p1, "tagId"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->tagId:I

    .line 189
    return-void
.end method
