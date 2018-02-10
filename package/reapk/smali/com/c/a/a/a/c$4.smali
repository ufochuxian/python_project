.class Lcom/c/a/a/a/c$4;
.super Landroid/support/v7/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/c;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic c:Lcom/c/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/c;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 735
    .local p0, "this":Lcom/c/a/a/a/c$4;, "Lcom/c/a/a/a/c$4;"
    iput-object p1, p0, Lcom/c/a/a/a/c$4;->c:Lcom/c/a/a/a/c;

    iput-object p2, p0, Lcom/c/a/a/a/c$4;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/c/a/a/a/c$4;, "Lcom/c/a/a/a/c$4;"
    const/16 v5, 0x555

    const/16 v4, 0x333

    const/16 v3, 0x222

    const/16 v2, 0x111

    .line 738
    iget-object v1, p0, Lcom/c/a/a/a/c$4;->c:Lcom/c/a/a/a/c;

    invoke-virtual {v1, p1}, Lcom/c/a/a/a/c;->getItemViewType(I)I

    move-result v0

    .line 739
    .local v0, "type":I
    iget-object v1, p0, Lcom/c/a/a/a/c$4;->c:Lcom/c/a/a/a/c;

    invoke-static {v1}, Lcom/c/a/a/a/c;->access$200(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/c$g;

    move-result-object v1

    if-nez v1, :cond_2

    .line 740
    if-eq v0, v5, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/c/a/a/a/c$4;->b:Landroid/support/v7/widget/GridLayoutManager;

    .line 741
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result v1

    .line 743
    :goto_0
    return v1

    .line 741
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 743
    :cond_2
    if-eq v0, v5, :cond_3

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/c/a/a/a/c$4;->b:Landroid/support/v7/widget/GridLayoutManager;

    .line 744
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/c/a/a/a/c$4;->c:Lcom/c/a/a/a/c;

    invoke-static {v1}, Lcom/c/a/a/a/c;->access$200(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/c$g;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/a/c$4;->b:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/c/a/a/a/c$4;->c:Lcom/c/a/a/a/c;

    .line 745
    invoke-virtual {v3}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v3

    sub-int v3, p1, v3

    .line 744
    invoke-interface {v1, v2, v3}, Lcom/c/a/a/a/c$g;->a(Landroid/support/v7/widget/GridLayoutManager;I)I

    move-result v1

    goto :goto_0
.end method
