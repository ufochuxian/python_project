.class public abstract Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.super Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private o:Z

.field private p:Landroid/widget/AbsListView$OnScrollListener;

.field private q:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;

.field private r:Landroid/view/View;

.field private s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

.field private t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->v:Z

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->v:Z

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 61
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->v:Z

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 66
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->v:Z

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 68
    return-void
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_0

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .restart local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 77
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 79
    .restart local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .prologue
    .line 354
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v8, 0x0

    const v7, 0x7f0700db

    const/4 v6, -0x2

    .line 321
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .line 322
    .local v0, "mode":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 324
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-nez v3, :cond_2

    .line 326
    new-instance v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .line 327
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 329
    const/16 v3, 0x35

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-nez v3, :cond_3

    .line 340
    new-instance v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .line 341
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 342
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 343
    const/16 v3, 0x55

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 332
    :cond_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 335
    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    goto :goto_0

    .line 346
    :cond_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 349
    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    goto :goto_1
.end method

.method private r()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 358
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 360
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 383
    :goto_0
    return v2

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 376
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 377
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 378
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_3
    move v2, v4

    .line 383
    goto :goto_0
.end method

.method private s()Z
    .locals 9

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 387
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 389
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    .line 418
    :goto_0
    return v5

    .line 395
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 396
    .local v2, "lastItemPosition":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 409
    .local v4, "lastVisiblePosition":I
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_3

    .line 410
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 411
    .local v1, "childIndex":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 412
    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 413
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    if-gt v8, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_0

    .end local v1    # "childIndex":I
    .end local v3    # "lastVisibleChild":Landroid/view/View;
    :cond_3
    move v5, v7

    .line 418
    goto :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 424
    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 429
    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .line 431
    :cond_1
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 434
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c()V

    .line 446
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c()V

    .line 457
    :cond_1
    :goto_1
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b()V

    goto :goto_0

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b()V

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 289
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->u:Z

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 1
    .param p1, "doScroll"    # Z

    .prologue
    .line 251
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Z)V

    .line 253
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->u()V

    .line 256
    :cond_0
    return-void
.end method

.method public getShowIndicator()Z
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->u:Z

    return v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 233
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->h()V

    .line 235
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->e()V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->e()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 260
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->i()V

    .line 262
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->d()V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->d()V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->j()V

    .line 281
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->u()V

    .line 284
    :cond_0
    return-void
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->r()Z

    move-result v0

    return v0
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->s()Z

    move-result v0

    return v0
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->m()V

    .line 313
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->q()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t()V

    goto :goto_0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 127
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->q:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;

    if-eqz v0, :cond_0

    .line 128
    if-lez p4, :cond_3

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->o:Z

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->u()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 140
    :cond_2
    return-void

    .line 128
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 302
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 303
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->v:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->r:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 306
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 147
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->q:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->o:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->q:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;->a()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 154
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 163
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 164
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .line 176
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 178
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_1

    .line 181
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 184
    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 185
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 191
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    instance-of v3, v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/a;

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/a;

    invoke-interface {v3, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/a;->setEmptyViewInternal(Landroid/view/View;)V

    .line 203
    :goto_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->r:Landroid/view/View;

    .line 204
    return-void

    .line 194
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 201
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 214
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;

    .prologue
    .line 218
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->q:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;

    .line 219
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 222
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    .line 223
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    .line 226
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->v:Z

    .line 227
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 1
    .param p1, "showIndicator"    # Z

    .prologue
    .line 105
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->u:Z

    .line 107
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->q()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;->t()V

    goto :goto_0
.end method
