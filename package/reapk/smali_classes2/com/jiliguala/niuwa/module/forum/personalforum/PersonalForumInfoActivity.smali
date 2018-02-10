.class public Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;


# static fields
.field public static final KEY_INDEX_TO_SHOW:Ljava/lang/String; = "KEY_INDEX_TO_SHOW"

.field public static final KEY_ME_MYSELF:Ljava/lang/String; = "KEY_ME_MYSELF"

.field public static final KEY_UID:Ljava/lang/String; = "KEY_UID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private indexToShow:I

.field private isMeMySelf:Z

.field private mAdapter:Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

.field private mCurId:I

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mIsLoadingMore:Z

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mTips1:Landroid/widget/TextView;

.field private mTips2:Landroid/widget/TextView;

.field private myFav:Landroid/widget/TextView;

.field private myPost:Landroid/widget/TextView;

.field private myReply:Landroid/widget/TextView;

.field private mySel:Landroid/widget/TextView;

.field private noMoreToLoad:Z

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$1;-><init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->noMoreToLoad:Z

    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;-><init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mAdapter:Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->selector(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mIsLoadingMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->noMoreToLoad:Z

    return v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->noMoreToLoad:Z

    return p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->changeEmptyVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->loadMoreData()V

    return-void
.end method

.method private changeEmptyVisibility(Z)V
    .locals 4
    .param p1, "visibility"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 257
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 262
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 257
    goto :goto_0

    :cond_3
    move v1, v2

    .line 260
    goto :goto_1
.end method

.method private loadMoreData()V
    .locals 8

    .prologue
    .line 364
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mIsLoadingMore:Z

    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, "ts":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mAdapter:Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->getCount()I

    move-result v0

    .line 367
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 368
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mAdapter:Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 369
    .local v1, "lastItem":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    if-nez v1, :cond_0

    .line 370
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$6;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$6;-><init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    .end local v1    # "lastItem":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    :goto_0
    return-void

    .line 378
    .restart local v1    # "lastItem":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    :cond_0
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->sortts:Ljava/lang/String;

    .line 380
    .end local v1    # "lastItem":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    :cond_1
    iget v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->selector(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumSets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$3;-><init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V

    return-object v0
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumSets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;-><init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V

    return-object v0
.end method

.method private reportAmp(ZI)V
    .locals 4
    .param p1, "self"    # Z
    .param p2, "id"    # I

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "View"

    if-eqz p1, :cond_0

    const-string v2, "Self"

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, ""

    .line 156
    .local v1, "type":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 171
    :goto_1
    const-string v2, "Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Post View"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    return-void

    .line 154
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    const-string v2, "Other"

    goto :goto_0

    .line 159
    .restart local v1    # "type":Ljava/lang/String;
    :sswitch_0
    const-string v1, "Post"

    .line 160
    goto :goto_1

    .line 162
    :sswitch_1
    const-string v1, "Reply"

    .line 163
    goto :goto_1

    .line 165
    :sswitch_2
    const-string v1, "Select"

    .line 166
    goto :goto_1

    .line 168
    :sswitch_3
    const-string v1, "Fav"

    goto :goto_1

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7f090373 -> :sswitch_3
        0x7f090375 -> :sswitch_0
        0x7f090376 -> :sswitch_1
        0x7f090377 -> :sswitch_2
    .end sparse-switch
.end method

.method private requestFavList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "fav"

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestUserPosts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private requestPostList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, "post"

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestUserPosts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private requestReplyList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "reply"

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestUserPosts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private requestSelList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "sel"

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestUserPosts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private requestUserPosts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v0, p3, p2}, Lcom/jiliguala/niuwa/logic/network/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v0

    .line 250
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 251
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 252
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mIsLoadingMore:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 253
    return-void

    .line 249
    :cond_0
    const-string v0, "+"

    const-string v3, "%2B"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_1
.end method

.method private selector(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "v_id"    # I
    .param p3, "forward"    # Z

    .prologue
    const v4, 0x7f0f01a7

    const v3, 0x7f08007c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->isMeMySelf:Z

    invoke-direct {p0, v0, p2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->reportAmp(ZI)V

    .line 180
    sparse-switch p2, :sswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 183
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->changeEmptyVisibility(Z)V

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->uid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestPostList(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myPost:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myReply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mySel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myFav:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips1:Landroid/widget/TextView;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips2:Landroid/widget/TextView;

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 194
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->changeEmptyVisibility(Z)V

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->uid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestReplyList(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myPost:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myReply:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mySel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myFav:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips1:Landroid/widget/TextView;

    const v1, 0x7f0f00f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 205
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->changeEmptyVisibility(Z)V

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->uid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestSelList(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myPost:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myReply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mySel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myFav:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips1:Landroid/widget/TextView;

    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 216
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->changeEmptyVisibility(Z)V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->uid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->requestFavList(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myPost:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myReply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mySel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myFav:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 222
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips1:Landroid/widget/TextView;

    const v1, 0x7f0f00f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips2:Landroid/widget/TextView;

    const v1, 0x7f0f00cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7f090373 -> :sswitch_3
        0x7f090375 -> :sswitch_0
        0x7f090376 -> :sswitch_1
        0x7f090377 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onBackPressed()V

    .line 396
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->overridePendingTransition(II)V

    .line 397
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f090375

    const v7, 0x7f090373

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 269
    const-string v2, "KEY_ME_MYSELF"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->isMeMySelf:Z

    .line 270
    const-string v2, "KEY_INDEX_TO_SHOW"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->indexToShow:I

    .line 271
    const-string v2, "KEY_UID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->uid:Ljava/lang/String;

    .line 273
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0b001c

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 277
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 278
    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myPost:Landroid/widget/TextView;

    .line 280
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myPost:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v2, 0x7f090376

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myReply:Landroid/widget/TextView;

    .line 282
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myReply:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v2, 0x7f090377

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mySel:Landroid/widget/TextView;

    .line 284
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mySel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myFav:Landroid/widget/TextView;

    .line 286
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myFav:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->isMeMySelf:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->myFav:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v2, 0x7f0b0039

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->setContentView(I)V

    .line 289
    const v2, 0x7f090374

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 290
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 291
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 293
    const v2, 0x7f0901da

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyView:Landroid/view/View;

    .line 294
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->changeEmptyVisibility(Z)V

    .line 296
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyView:Landroid/view/View;

    const v3, 0x7f090578

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips1:Landroid/widget/TextView;

    .line 297
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyView:Landroid/view/View;

    const v3, 0x7f090579

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips2:Landroid/widget/TextView;

    .line 298
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips1:Landroid/widget/TextView;

    const v3, 0x7f0f00f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mTips2:Landroid/widget/TextView;

    const v3, 0x7f0f0169

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0901dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyIcon:Landroid/widget/ImageView;

    .line 302
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mEmptyIcon:Landroid/widget/ImageView;

    const v3, 0x7f0801bc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    new-instance v2, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mAdapter:Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    .line 305
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mAdapter:Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;-><init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 333
    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->indexToShow:I

    packed-switch v2, :pswitch_data_0

    .line 351
    :goto_1
    return-void

    .line 286
    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 335
    :pswitch_0
    iput v8, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    .line 336
    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    invoke-direct {p0, v6, v2, v5}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->selector(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 339
    :pswitch_1
    const v2, 0x7f090376

    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    .line 340
    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    invoke-direct {p0, v6, v2, v5}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->selector(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 343
    :pswitch_2
    const v2, 0x7f090377

    iput v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    .line 344
    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    invoke-direct {p0, v6, v2, v5}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->selector(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 347
    :pswitch_3
    iput v7, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    .line 348
    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    invoke-direct {p0, v6, v2, v5}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->selector(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 401
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 402
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 404
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 3
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 422
    const/4 v0, 0x0

    iget v1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->mCurId:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->selector(Ljava/lang/String;IZ)V

    .line 423
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 409
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 413
    return-void
.end method
