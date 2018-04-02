.class public Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
.implements Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;",
        "Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;",
        ">;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;",
        "Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final RADIO:I = 0x4

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mBgColor:Ljava/lang/String;

.field private mChannelID:Ljava/lang/String;

.field private mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

.field private mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mPic:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private mTitle:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 42
    const-class v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->page:I

    return v0
.end method

.method private addHeaderView()V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 93
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->generateHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 57
    sget-object v1, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    .line 58
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;-><init>()V

    .line 62
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;
    :cond_0
    return-object v0
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mChannelID:Ljava/lang/String;

    .line 75
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mTitle:Ljava/lang/String;

    .line 76
    const-string v1, "pic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mPic:Ljava/lang/String;

    .line 77
    const-string v1, "color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mBgColor:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mTitleText:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mBackIcon:Landroid/widget/ImageView;

    .line 207
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    return-void
.end method

.method private setViewListener()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mBackIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$2;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$3;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$4;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 200
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public addListHeaderView()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 279
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->addHeaderView()V

    .line 282
    :cond_0
    return-void
.end method

.method public autoRefresh()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 116
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$1;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->createPresenter()Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;-><init>()V

    return-object v0
.end method

.method public generateHeaderView()Landroid/view/View;
    .locals 8

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00d2

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "headerView":Landroid/view/View;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 129
    .local v4, "params":Landroid/widget/AbsListView$LayoutParams;
    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 130
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mBgColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    const v5, 0x7f090270

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 134
    .local v3, "hotSubjectIcon":Landroid/widget/ImageView;
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mBgColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v3    # "hotSubjectIcon":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mPic:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    const v5, 0x7f090271

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 141
    .restart local v3    # "hotSubjectIcon":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mPic:Ljava/lang/String;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 143
    .end local v3    # "hotSubjectIcon":Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 144
    const v5, 0x7f090542

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    .local v2, "hotSubjectDesc":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v2    # "hotSubjectDesc":Landroid/widget/TextView;
    :cond_2
    return-object v1

    .line 135
    .restart local v3    # "hotSubjectIcon":Landroid/widget/ImageView;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getChannelID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mChannelID:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getUi()Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;
    .locals 0

    .prologue
    .line 216
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->handleArguments()V

    .line 69
    return-void
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
    .line 84
    const v0, 0x7f0b00c8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mRootView:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->initView()V

    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->setAdapter()V

    .line 87
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->setViewListener()V

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->onDestory()V

    .line 228
    return-void
.end method

.method public onLoadMoreFailed()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onLoadMoreSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->notifyDataSetChanged()V

    .line 255
    iget v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->page:I

    .line 257
    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->refreshNew()V

    .line 222
    return-void
.end method

.method public onRefreshNewFailed()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->showErrorView()V

    .line 248
    return-void
.end method

.method public onRefreshNewSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->mHotSubjectAdapter:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->notifyDataSetChanged()V

    .line 238
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->showErrorView()V

    .line 239
    iput v2, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->page:I

    .line 240
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->autoRefresh()V

    .line 106
    return-void
.end method
