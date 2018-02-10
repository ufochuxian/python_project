.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLastVisibleItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLastVisibleItemPosition()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    .line 39
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLastVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;I)I

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$1;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView$a;->a(I)V

    goto :goto_0
.end method
