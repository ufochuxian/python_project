.class Landroid/support/v7/widget/RecyclerView$LayoutManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 6916
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 6919
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6945
    .line 6946
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 6947
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->p(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public a(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6929
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6952
    .line 6953
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 6954
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->r(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 6924
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 6934
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 6939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 6940
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
