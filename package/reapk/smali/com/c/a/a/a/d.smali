.class public abstract Lcom/c/a/a/a/d;
.super Lcom/c/a/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/c/a/a/a/c/d;",
        "K:",
        "Lcom/c/a/a/a/e;",
        ">",
        "Lcom/c/a/a/a/c",
        "<TT;TK;>;"
    }
.end annotation


# static fields
.field protected static final b:I = 0x444


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "sectionHeadResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/c/a/a/a/d;, "Lcom/c/a/a/a/d<TT;TK;>;"
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p3}, Lcom/c/a/a/a/c;-><init>(ILjava/util/List;)V

    .line 28
    iput p2, p0, Lcom/c/a/a/a/d;->a:I

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/c/a/a/a/e;Lcom/c/a/a/a/c/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation
.end method

.method protected getDefItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/c/a/a/a/d;, "Lcom/c/a/a/a/d<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/d;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/c/d;

    iget-boolean v0, v0, Lcom/c/a/a/a/c/d;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x444

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/c/a/a/a/d;, "Lcom/c/a/a/a/d<TT;TK;>;"
    check-cast p1, Lcom/c/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/a/d;->onBindViewHolder(Lcom/c/a/a/a/e;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/c/a/a/a/e;I)V
    .locals 3
    .param p2, "positions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/c/a/a/a/d;, "Lcom/c/a/a/a/d<TT;TK;>;"
    .local p1, "holder":Lcom/c/a/a/a/e;, "TK;"
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/c/a/a/a/c;->onBindViewHolder(Lcom/c/a/a/a/e;I)V

    .line 55
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/d;->setFullSpan(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 49
    iget-object v0, p0, Lcom/c/a/a/a/d;->mData:Ljava/util/List;

    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/c/a/a/a/d;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/c/d;

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/a/d;->a(Lcom/c/a/a/a/e;Lcom/c/a/a/a/c/d;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x444
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/c/a/a/a/d;, "Lcom/c/a/a/a/d<TT;TK;>;"
    const/16 v0, 0x444

    if-ne p2, v0, :cond_0

    .line 39
    iget v0, p0, Lcom/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/c/a/a/a/d;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/d;->createBaseViewHolder(Landroid/view/View;)Lcom/c/a/a/a/e;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/c/a/a/a/c;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;

    move-result-object v0

    goto :goto_0
.end method
