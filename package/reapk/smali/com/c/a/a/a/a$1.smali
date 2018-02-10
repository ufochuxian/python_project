.class Lcom/c/a/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/a;

    .prologue
    .line 100
    .local p0, "this":Lcom/c/a/a/a/a$1;, "Lcom/c/a/a/a/a$1;"
    iput-object p1, p0, Lcom/c/a/a/a/a$1;->a:Lcom/c/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    .local p0, "this":Lcom/c/a/a/a/a$1;, "Lcom/c/a/a/a/a$1;"
    iget-object v0, p0, Lcom/c/a/a/a/a$1;->a:Lcom/c/a/a/a/a;

    iget-object v0, v0, Lcom/c/a/a/a/a;->b:Landroid/support/v7/widget/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/a$1;->a:Lcom/c/a/a/a/a;

    iget-boolean v0, v0, Lcom/c/a/a/a/a;->c:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/c/a/a/a/a$1;->a:Lcom/c/a/a/a/a;

    iget-object v1, v0, Lcom/c/a/a/a/a;->b:Landroid/support/v7/widget/a/a;

    sget v0, Lcom/c/a/b$c;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 106
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
