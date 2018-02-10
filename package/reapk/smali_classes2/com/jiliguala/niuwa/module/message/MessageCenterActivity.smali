.class public Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;
    }
.end annotation


# static fields
.field private static final RESET_PULL_LIST_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

.field private mHandler:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

.field private mIsLoadingMore:Z

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private noMoreToLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$1;-><init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->noMoreToLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->noMoreToLoad:Z

    return v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->noMoreToLoad:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mHandler:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mIsLoadingMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->loadMoreData()V

    return-void
.end method

.method private loadMoreData()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    .line 232
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mIsLoadingMore:Z

    .line 233
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->getCount()I

    move-result v0

    .line 234
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 235
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mHandler:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    invoke-virtual {v4, v5, v6, v7}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    :goto_0
    return-void

    .line 238
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 239
    .local v2, "index":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

    .line 240
    .local v3, "item":Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;
    iget-object v1, v3, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->_id:Ljava/lang/String;

    .line 241
    .local v1, "idx":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mHandler:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    invoke-virtual {v4, v5, v6, v7}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->requestForNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mHandler:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v5, v6, v7}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$3;-><init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V

    return-object v0
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$2;-><init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V

    return-object v0
.end method

.method private reportNotificationClick(Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;)V
    .locals 3
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->tgt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const-string v1, "URL"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->tgt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Notification Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method private requestForNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    .line 225
    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/logic/network/d;->r(Ljava/lang/String;)Lrx/e;

    move-result-object v0

    .line 226
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 227
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 228
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mIsLoadingMore:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 223
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 229
    return-void

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$5;-><init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onBackPressed()V

    .line 257
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->overridePendingTransition(II)V

    .line 258
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance v1, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;-><init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mHandler:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    .line 148
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0142

    const/4 v3, 0x0

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 153
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 154
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f0b0038

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->setContentView(I)V

    .line 157
    const v1, 0x7f090332

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 158
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 159
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    new-instance v1, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    .line 163
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v2, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$4;-><init>(Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->autoRefresh()V

    .line 193
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Notification View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mHandler:Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

    .line 117
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;
    if-nez v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->reportNotificationClick(Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;)V

    .line 121
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->mAdapter:Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->clickOnNewItem(I)V

    .line 123
    const v3, 0x7f09028c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "indicator":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 125
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .end local v0    # "indicator":Landroid/view/View;
    :cond_1
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->tgt:Ljava/lang/String;

    .line 130
    .local v2, "target":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 269
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 218
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;->requestForNotification(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 275
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 277
    return-void
.end method
