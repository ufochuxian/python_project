.class Lcom/c/a/a/a/c$1;
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
.field final synthetic a:Landroid/support/v7/widget/LinearLayoutManager;

.field final synthetic b:Lcom/c/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/c;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 206
    .local p0, "this":Lcom/c/a/a/a/c$1;, "Lcom/c/a/a/a/c$1;"
    iput-object p1, p0, Lcom/c/a/a/a/c$1;->b:Lcom/c/a/a/a/c;

    iput-object p2, p0, Lcom/c/a/a/a/c$1;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    .local p0, "this":Lcom/c/a/a/a/c$1;, "Lcom/c/a/a/a/c$1;"
    iget-object v0, p0, Lcom/c/a/a/a/c$1;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->w()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/c/a/a/a/c$1;->b:Lcom/c/a/a/a/c;

    invoke-virtual {v1}, Lcom/c/a/a/a/c;->getItemCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/c/a/a/a/c$1;->b:Lcom/c/a/a/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/c;->setEnableLoadMore(Z)V

    .line 212
    :cond_0
    return-void
.end method
