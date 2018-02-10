.class public Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsLoadingMore:Z

.field private mIsRefreshing:Z

.field private mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

.field private mShelfPresenterImpl:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

.field private page:I

.field private ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 31
    iput v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->page:I

    .line 34
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsRefreshing:Z

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->enablePull(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsRefreshing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfPresenterImpl:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->page:I

    return v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->loadMore(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    return-object v0
.end method

.method private enablePull(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->setPullDownEnable(Z)V

    .line 205
    return-void
.end method

.method private loadMore(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsLoadingMore:Z

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->enablePull(Z)V

    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfPresenterImpl:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->loadMoreShelfData(I)V

    .line 148
    return-void
.end method

.method private notifyListView(II)V
    .locals 1
    .param p1, "posStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->notifyItemRangeChanged(II)V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 57
    const v1, 0x7f0b017f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "root":Landroid/view/View;
    return-object v0
.end method

.method public onLoadMoreFail()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsLoadingMore:Z

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->enablePull(Z)V

    .line 200
    return-void
.end method

.method public onLoadMoreSuccess(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "shelfData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;>;"
    const/4 v3, 0x0

    .line 167
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->b(I)V

    .line 169
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->enablePull(Z)V

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->getItemCount()I

    move-result v1

    .line 173
    .local v1, "posStart":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    .local v0, "itemCount":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {v2, p1, v3}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->updateData(Ljava/util/ArrayList;Z)V

    .line 175
    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->notifyListView(II)V

    .line 176
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->page:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->page:I

    .line 178
    .end local v0    # "itemCount":I
    .end local v1    # "posStart":I
    :cond_0
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsLoadingMore:Z

    .line 179
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsRefreshing:Z

    .line 181
    :cond_1
    return-void
.end method

.method public onRefreshNewFail()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(I)V

    .line 192
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->enablePull(Z)V

    .line 193
    return-void
.end method

.method public onRefreshNewSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "shelfData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(I)V

    .line 154
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->enablePull(Z)V

    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {v0, p1, v2}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->updateData(Ljava/util/ArrayList;Z)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->notifyDataSetChanged()V

    .line 159
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->page:I

    .line 161
    :cond_0
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mIsRefreshing:Z

    .line 163
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    new-instance v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    .line 77
    const v1, 0x7f09043c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->setPullUpEnable(Z)V

    .line 80
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->enablePull(Z)V

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    new-instance v2, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$1;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->setOnPullListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;)V

    .line 96
    const v1, 0x7f0904e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    .line 97
    .local v0, "recyclerView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfAdapter:Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 100
    new-instance v1, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 118
    new-instance v1, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$3;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    new-instance v1, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;-><init>(Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->mShelfPresenterImpl:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    .line 133
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->ptrl:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    new-instance v2, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$4;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method
