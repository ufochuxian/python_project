.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;
.super Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;
    }
.end annotation


# static fields
.field public static final af:Ljava/lang/String;


# instance fields
.field public ag:I

.field public ah:I

.field private ai:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;

.field private aj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->af:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ag:I

    .line 14
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ah:I

    .line 16
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->aj:I

    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->aj:I

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ai:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    .prologue
    .line 11
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->aj:I

    return v0
.end method

.method private getFirstVisibleItemPosition()I
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 88
    .local v1, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v0, 0x0

    .line 89
    .local v0, "firstVisibleItemPosition":I
    instance-of v3, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_1

    .line 90
    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .end local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->t()I

    move-result v0

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    .restart local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    .line 92
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v0

    goto :goto_0

    .line 93
    .restart local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_2
    instance-of v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_0

    .line 94
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 95
    .local v2, "positions":[I
    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a([I)[I

    .line 96
    const/4 v3, 0x0

    aget v0, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 51
    .local v1, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getFirstVisibleItemPosition()I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ag:I

    .line 52
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ag:I

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    .line 54
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v3

    .line 57
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ag:I

    if-eqz v4, :cond_0

    .line 61
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 67
    .local v1, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getFirstVisibleItemPosition()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ag:I

    .line 68
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLastVisibleItemPosition()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ah:I

    .line 69
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    .line 70
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ah:I

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_2

    .line 75
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getMeasuredHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 79
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ag:I

    return v0
.end method

.method public getLastVisibleItemPosition()I
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 107
    .local v1, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v0, 0x0

    .line 108
    .local v0, "lastVisibleItemPosition":I
    instance-of v3, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_1

    .line 109
    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .end local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 110
    .restart local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    .line 111
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    goto :goto_0

    .line 112
    .restart local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_2
    instance-of v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_0

    .line 113
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 114
    .local v2, "positions":[I
    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v1    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c([I)[I

    .line 115
    const/4 v3, 0x0

    aget v0, v2, v3

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ah:I

    return v0
.end method

.method public setOnScrollUpListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->ai:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;

    .line 130
    return-void
.end method
