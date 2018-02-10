.class Lcom/c/a/a/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/c;->disableLoadMoreIfNotFullPage(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field final synthetic b:Lcom/c/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/c;Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 216
    .local p0, "this":Lcom/c/a/a/a/c$2;, "Lcom/c/a/a/a/c$2;"
    iput-object p1, p0, Lcom/c/a/a/a/c$2;->b:Lcom/c/a/a/a/c;

    iput-object p2, p0, Lcom/c/a/a/a/c$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    .local p0, "this":Lcom/c/a/a/a/c$2;, "Lcom/c/a/a/a/c$2;"
    iget-object v2, p0, Lcom/c/a/a/a/c$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v2

    new-array v1, v2, [I

    .line 220
    .local v1, "positions":[I
    iget-object v2, p0, Lcom/c/a/a/a/c$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d([I)[I

    .line 221
    iget-object v2, p0, Lcom/c/a/a/a/c$2;->b:Lcom/c/a/a/a/c;

    invoke-static {v2, v1}, Lcom/c/a/a/a/c;->access$000(Lcom/c/a/a/a/c;[I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 222
    .local v0, "pos":I
    iget-object v2, p0, Lcom/c/a/a/a/c$2;->b:Lcom/c/a/a/a/c;

    invoke-virtual {v2}, Lcom/c/a/a/a/c;->getItemCount()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/c/a/a/a/c$2;->b:Lcom/c/a/a/a/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/c/a/a/a/c;->setEnableLoadMore(Z)V

    .line 225
    :cond_0
    return-void
.end method
