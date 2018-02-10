.class final Landroid/support/v7/widget/ac$1;
.super Landroid/support/v7/widget/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ac;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ac;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/ac$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 299
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v1, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->o(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public a(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->k(I)V

    .line 265
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 323
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 292
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v1, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->q(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/ac$1;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/ac$1;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 311
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 276
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v1, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->m(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public f()I
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 317
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 284
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v1, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->n(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public g()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->I()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v7/widget/ac$1;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v0

    return v0
.end method
