.class public abstract Landroid/support/v7/widget/al;
.super Landroid/support/v7/widget/RecyclerView$e;
.source "SourceFile"


# static fields
.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$e;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/al;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$w;Z)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "oldItem"    # Z

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/al;->d(Landroid/support/v7/widget/RecyclerView$w;Z)V

    .line 304
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 305
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/support/v7/widget/al;->m:Z

    .line 60
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;IIII)Z
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 78
    iget v2, p2, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    .line 79
    .local v2, "oldLeft":I
    iget v3, p2, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    .line 80
    .local v3, "oldTop":I
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 81
    .local v6, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 82
    .local v4, "newLeft":I
    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 83
    .local v5, "newTop":I
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    .line 85
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 84
    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/RecyclerView$w;IIII)Z

    move-result v0

    .line 95
    :goto_2
    return v0

    .line 81
    .end local v4    # "newLeft":I
    .end local v5    # "newTop":I
    :cond_1
    iget v4, p3, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    goto :goto_0

    .line 82
    .restart local v4    # "newLeft":I
    :cond_2
    iget v5, p3, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    goto :goto_1

    .line 95
    .restart local v5    # "newTop":I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;IIII)Z
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .locals 7
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "preInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p4, "postInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 139
    iget v3, p3, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    .line 140
    .local v3, "fromLeft":I
    iget v4, p3, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    .line 142
    .local v4, "fromTop":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget v5, p3, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    .line 144
    .local v5, "toLeft":I
    iget v6, p3, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    .local v6, "toTop":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 149
    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;IIII)Z

    move-result v0

    return v0

    .line 146
    .end local v5    # "toLeft":I
    .end local v6    # "toTop":I
    :cond_0
    iget v5, p4, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    .line 147
    .restart local v5    # "toLeft":I
    iget v6, p4, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    .restart local v6    # "toTop":I
    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$w;Z)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "oldItem"    # Z

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/al;->c(Landroid/support/v7/widget/RecyclerView$w;Z)V

    .line 345
    return-void
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$w;)Z
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 102
    if-eqz p2, :cond_1

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    if-eq v0, v1, :cond_1

    .line 108
    :cond_0
    iget v2, p2, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    iget v3, p2, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    iget v4, p3, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    iget v5, p3, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/RecyclerView$w;IIII)Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->b(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$w;Z)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "oldItem"    # Z

    .prologue
    .line 428
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "preInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "postInfo"    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 121
    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    if-eq v0, v1, :cond_1

    .line 126
    :cond_0
    iget v2, p2, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    iget v3, p2, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    iget v4, p3, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    iget v5, p3, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/RecyclerView$w;IIII)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->l(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$w;Z)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "oldItem"    # Z

    .prologue
    .line 441
    return-void
.end method

.method public j(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/support/v7/widget/al;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->r(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 265
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 266
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Landroid/support/v7/widget/al;->m:Z

    return v0
.end method

.method public final l(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->v(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 279
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 280
    return-void
.end method

.method public final m(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->t(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 289
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 290
    return-void
.end method

.method public final n(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->q(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 314
    return-void
.end method

.method public final o(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->u(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 323
    return-void
.end method

.method public final p(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->s(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 332
    return-void
.end method

.method public q(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 357
    return-void
.end method

.method public r(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 368
    return-void
.end method

.method public s(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 380
    return-void
.end method

.method public t(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 391
    return-void
.end method

.method public u(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 403
    return-void
.end method

.method public v(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 414
    return-void
.end method
