.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
.super Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$InternalListView;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

.field private p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

.field private q:Landroid/widget/FrameLayout;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->q:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 227
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->a(Landroid/content/res/TypedArray;)V

    .line 229
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->r:Z

    .line 231
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->r:Z

    if-eqz v2, :cond_0

    .line 232
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 236
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->a(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 238
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 242
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->q:Landroid/widget/FrameLayout;

    .line 243
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->a(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 244
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->q:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V

    .line 255
    .end local v0    # "frame":Landroid/widget/FrameLayout;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 9
    .param p1, "doScroll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 72
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 73
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->r:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getShowViewWhileRefreshing()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->a(Z)V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-super {p0, v8}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->a(Z)V

    .line 83
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 94
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .line 95
    .local v3, "origLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 96
    .local v1, "listViewLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 97
    .local v2, "oppositeListViewLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v5, 0x0

    .line 98
    .local v5, "selection":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v7

    add-int v4, v6, v7

    .line 103
    .local v4, "scrollToY":I
    :goto_1
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i()V

    .line 104
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->e()V

    .line 107
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 110
    invoke-virtual {v1, v8}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->g()V

    .line 113
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o()V

    .line 119
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    .line 123
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 126
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->a(I)V

    goto :goto_0

    .line 86
    .end local v1    # "listViewLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2    # "oppositeListViewLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .end local v3    # "origLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .end local v4    # "scrollToY":I
    .end local v5    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .line 87
    .restart local v3    # "origLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 88
    .restart local v1    # "listViewLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 89
    .restart local v2    # "oppositeListViewLoadingView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 90
    .restart local v5    # "selection":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v7

    sub-int v4, v6, v7

    .line 91
    .restart local v4    # "scrollToY":I
    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 209
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    .local v0, "lv":Landroid/widget/ListView;
    :goto_0
    return-object v0

    .line 211
    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$InternalListView;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "lv":Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected b(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;
    .locals 3
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->b(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;

    move-result-object v1

    .line 192
    .local v1, "proxy":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->r:Z

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .line 195
    .local v0, "mode":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 198
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 203
    .end local v0    # "mode":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    :cond_1
    return-object v1
.end method

.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    .line 221
    .local v0, "lv":Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 222
    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected j()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 135
    iget-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->r:Z

    if-nez v5, :cond_0

    .line 136
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->j()V

    .line 186
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 155
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .line 156
    .local v1, "originalLoadingLayout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->o:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 157
    .local v0, "listViewLoadingLayout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v5

    neg-int v3, v5

    .line 158
    .local v3, "scrollToHeight":I
    const/4 v4, 0x0

    .line 159
    .local v4, "selection":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_3

    .line 165
    .local v2, "scrollLvToEdge":Z
    :goto_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->j()V

    .line 171
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 178
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getState()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v5

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    .line 179
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    .line 185
    :cond_1
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->j()V

    goto :goto_0

    .line 147
    .end local v0    # "listViewLoadingLayout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .end local v1    # "originalLoadingLayout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2    # "scrollLvToEdge":Z
    .end local v3    # "scrollToHeight":I
    .end local v4    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .line 148
    .restart local v1    # "originalLoadingLayout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->p:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 149
    .restart local v0    # "listViewLoadingLayout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 150
    .restart local v4    # "selection":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v3

    .line 151
    .restart local v3    # "scrollToHeight":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_2

    .line 152
    .restart local v2    # "scrollLvToEdge":Z
    :goto_2
    goto :goto_1

    .end local v2    # "scrollLvToEdge":Z
    :cond_2
    move v2, v6

    .line 151
    goto :goto_2

    :cond_3
    move v2, v6

    .line 159
    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
