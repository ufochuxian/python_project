.class Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

.field final synthetic b:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->b:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 104
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recycle"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableRecyclerView;->getLastVisibleItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->b:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$300(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->b:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$100(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->b:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$2;->b:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$500(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;I)V

    .line 115
    :cond_0
    return-void
.end method
