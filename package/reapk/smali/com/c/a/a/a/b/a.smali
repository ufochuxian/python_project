.class public Lcom/c/a/a/a/b/a;
.super Landroid/support/v7/widget/a/a$a;
.source "SourceFile"


# instance fields
.field d:Lcom/c/a/a/a/a;

.field e:F

.field f:F

.field g:I

.field h:I


# direct methods
.method public constructor <init>(Lcom/c/a/a/a/a;)V
    .locals 1
    .param p1, "adapter"    # Lcom/c/a/a/a/a;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/a/a$a;-><init>()V

    .line 20
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/c/a/a/a/b/a;->e:F

    .line 21
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/c/a/a/a/b/a;->f:F

    .line 23
    const/16 v0, 0xf

    iput v0, p0, Lcom/c/a/a/a/b/a;->g:I

    .line 24
    const/16 v0, 0x20

    iput v0, p0, Lcom/c/a/a/a/b/a;->h:I

    .line 27
    iput-object p1, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    .line 28
    return-void
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    .line 189
    .local v0, "type":I
    iget-object v1, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    const/16 v1, 0x111

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    const/16 v1, 0x222

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    const/16 v1, 0x333

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    const/16 v1, 0x555

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    const/4 v1, 0x1

    .line 193
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$w;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 111
    iget v0, p0, Lcom/c/a/a/a/b/a;->f:F

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p2}, Lcom/c/a/a/a/b/a;->c(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v1, v1}, Lcom/c/a/a/a/b/a;->b(II)I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/c/a/a/a/b/a;->g:I

    iget v1, p0, Lcom/c/a/a/a/b/a;->h:I

    invoke-static {v0, v1}, Lcom/c/a/a/a/b/a;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "dragMoveFlags"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/c/a/a/a/b/a;->g:I

    .line 149
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "direction"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/c/a/a/a/b/a;->c(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/c/a/a/a/a;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 102
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;ILandroid/support/v7/widget/RecyclerView$w;III)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .prologue
    .line 93
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;ILandroid/support/v7/widget/RecyclerView$w;III)V

    .line 94
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    invoke-virtual {v0, p2, p4}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 95
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$w;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 106
    iget v0, p0, Lcom/c/a/a/a/b/a;->e:F

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "swipeMoveFlags"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/c/a/a/a/b/a;->h:I

    .line 159
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;FFIZ)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 164
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/a/a$a;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;FFIZ)V

    .line 166
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 167
    invoke-direct {p0, p3}, Lcom/c/a/a/a/b/a;->c(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v6, p3, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 170
    .local v6, "itemView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 172
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    .line 173
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    .line 172
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 174
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/c/a/a/a/a;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$w;FFZ)V

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 185
    .end local v6    # "itemView":Landroid/view/View;
    :cond_0
    return-void

    .line 176
    .restart local v6    # "itemView":Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    .line 177
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    .line 176
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 178
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "actionState"    # I

    .prologue
    const/4 v2, 0x1

    .line 42
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 43
    invoke-direct {p0, p1}, Lcom/c/a/a/a/b/a;->c(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/c/a/a/a/a;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 45
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_dragging_support:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/a/a$a;->b(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 52
    return-void

    .line 46
    :cond_1
    if-ne p2, v2, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/c/a/a/a/b/a;->c(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/c/a/a/a/a;->d(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 49
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_swiping_support:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(F)V
    .locals 0
    .param p1, "swipeThreshold"    # F

    .prologue
    .line 125
    iput p1, p0, Lcom/c/a/a/a/b/a;->f:F

    .line 126
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    invoke-virtual {v0}, Lcom/c/a/a/a/a;->e()Z

    move-result v0

    return v0
.end method

.method public d(F)V
    .locals 0
    .param p1, "moveThreshold"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/c/a/a/a/b/a;->e:F

    .line 139
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/a/a$a;->e(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 57
    invoke-direct {p0, p2}, Lcom/c/a/a/a/b/a;->c(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_dragging_support:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_dragging_support:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    invoke-virtual {v0, p2}, Lcom/c/a/a/a/a;->c(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 64
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_dragging_support:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 66
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_swiping_support:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_swiping_support:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/c/a/a/a/b/a;->d:Lcom/c/a/a/a/a;

    invoke-virtual {v0, p2}, Lcom/c/a/a/a/a;->e(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 69
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    sget v1, Lcom/c/a/b$c;->BaseQuickAdapter_swiping_support:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
