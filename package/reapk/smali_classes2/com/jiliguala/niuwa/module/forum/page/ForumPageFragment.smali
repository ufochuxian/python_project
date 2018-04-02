.class public Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final SEARCH_FORUM:I = 0x1000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private curPos:I

.field private currentListState:I

.field private forumSortPop:Landroid/widget/PopupWindow;

.field private forumTagPop:Landroid/widget/PopupWindow;

.field private mBoardList:Landroid/support/v7/widget/RecyclerView;

.field private mCurClickId:I

.field private mFirstTime:Z

.field private mForumBoradListAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private progressDialog:Lcom/jiliguala/niuwa/common/a/g;

.field private tagId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->TAG:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mFirstTime:Z

    .line 48
    iput v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->currentListState:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->tagId:I

    .line 50
    iput v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->curPos:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mForumBoradListAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mBoardList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->progressDialog:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->currentListState:I

    return v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 58
    sget-object v1, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .line 59
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;-><init>()V

    .line 63
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;
    :cond_0
    return-object v0
.end method

.method private initUIComponent(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 219
    const v1, 0x7f090546

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 220
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$2;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 232
    const v1, 0x7f0900ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mBoardList:Landroid/support/v7/widget/RecyclerView;

    .line 233
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 235
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mBoardList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 236
    new-instance v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mForumBoradListAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    .line 237
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mForumBoradListAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->setSubscription(Lrx/i/b;)V

    .line 238
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mBoardList:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mForumBoradListAdapter:Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 240
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->progressDialog:Lcom/jiliguala/niuwa/common/a/g;

    .line 241
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 136
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
    .line 70
    const v1, 0x7f0b00a9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumTagPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumTagPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumTagPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 152
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroyView()V

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumTagPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumTagPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->forumTagPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 260
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 130
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 110
    const-string v0, "Community page"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->b(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->progressDialog:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->progressDialog:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->progressDialog:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 114
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 96
    const-string v0, "Community page"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->initUIComponent(Landroid/view/View;)V

    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->updateForumBoardList(I)V

    .line 90
    return-void
.end method

.method public resetTag()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public updateForumBoardList(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getCurrentPos()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a()V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->d()Lrx/e;

    move-result-object v1

    .line 167
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 168
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 169
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;-><init>(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)V

    .line 170
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method
