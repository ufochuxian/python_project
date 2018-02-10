.class public abstract Lcom/c/a/a/a/a;
.super Lcom/c/a/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/c/a/a/a/e;",
        ">",
        "Lcom/c/a/a/a/c",
        "<TT;TK;>;"
    }
.end annotation


# static fields
.field private static final j:I = 0x0

.field private static final k:Ljava/lang/String; = "Item drag and item swipe should pass the same ItemTouchHelper"


# instance fields
.field protected a:I

.field protected b:Landroid/support/v7/widget/a/a;

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/c/a/a/a/d/d;

.field protected f:Lcom/c/a/a/a/d/f;

.field protected g:Z

.field protected h:Landroid/view/View$OnTouchListener;

.field protected i:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/c/a/a/a/c;-><init>(ILjava/util/List;)V

    .line 25
    iput v0, p0, Lcom/c/a/a/a/a;->a:I

    .line 27
    iput-boolean v0, p0, Lcom/c/a/a/a/a;->c:Z

    .line 28
    iput-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/a;->g:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;-><init>(Ljava/util/List;)V

    .line 25
    iput v0, p0, Lcom/c/a/a/a/a;->a:I

    .line 27
    iput-boolean v0, p0, Lcom/c/a/a/a/a;->c:Z

    .line 28
    iput-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/a;->g:Z

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 188
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/c/a/a/a/a;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/a;->c:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/a;->b:Landroid/support/v7/widget/a/a;

    .line 158
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "toggleViewId"    # I

    .prologue
    .line 87
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iput p1, p0, Lcom/c/a/a/a/a;->a:I

    .line 88
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$w;FFZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p3, "dX"    # F
    .param p4, "dY"    # F
    .param p5, "isCurrentlyActive"    # Z

    .prologue
    .line 251
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/c/a/a/a/d/f;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$w;FFZ)V

    .line 254
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 5
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "target"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 198
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    .line 199
    .local v0, "from":I
    invoke-virtual {p0, p2}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v2

    .line 201
    .local v2, "to":I
    if-ge v0, v2, :cond_0

    .line 202
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 203
    iget-object v3, p0, Lcom/c/a/a/a/a;->mData:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    if-le v1, v2, :cond_1

    .line 207
    iget-object v3, p0, Lcom/c/a/a/a/a;->mData:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 206
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/c/a/a/a/a;->notifyItemMoved(II)V

    .line 212
    iget-object v3, p0, Lcom/c/a/a/a/a;->e:Lcom/c/a/a/a/d/d;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/c/a/a/a/a;->c:Z

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/c/a/a/a/a;->e:Lcom/c/a/a/a/d/d;

    invoke-interface {v3, p1, v0, p2, v2}, Lcom/c/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView$w;ILandroid/support/v7/widget/RecyclerView$w;I)V

    .line 215
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/a/a;)V
    .locals 2
    .param p1, "itemTouchHelper"    # Landroid/support/v7/widget/a/a;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 135
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/a/a;IZ)V

    .line 136
    return-void
.end method

.method public a(Landroid/support/v7/widget/a/a;IZ)V
    .locals 1
    .param p1, "itemTouchHelper"    # Landroid/support/v7/widget/a/a;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "toggleViewId"    # I
    .param p3, "dragOnLongPress"    # Z

    .prologue
    .line 146
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/a;->c:Z

    .line 147
    iput-object p1, p0, Lcom/c/a/a/a/a;->b:Landroid/support/v7/widget/a/a;

    .line 148
    invoke-virtual {p0, p2}, Lcom/c/a/a/a/a;->a(I)V

    .line 149
    invoke-virtual {p0, p3}, Lcom/c/a/a/a/a;->a(Z)V

    .line 150
    return-void
.end method

.method public a(Lcom/c/a/a/a/d/d;)V
    .locals 0
    .param p1, "onItemDragListener"    # Lcom/c/a/a/a/d/d;

    .prologue
    .line 184
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/a;->e:Lcom/c/a/a/a/d/d;

    .line 185
    return-void
.end method

.method public a(Lcom/c/a/a/a/d/f;)V
    .locals 0
    .param p1, "listener"    # Lcom/c/a/a/a/d/f;

    .prologue
    .line 224
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iput-object p1, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    .line 225
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "longPress"    # Z

    .prologue
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    const/4 v1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/c/a/a/a/a;->g:Z

    .line 98
    iget-boolean v0, p0, Lcom/c/a/a/a/a;->g:Z

    if-eqz v0, :cond_0

    .line 99
    iput-object v1, p0, Lcom/c/a/a/a/a;->h:Landroid/view/View$OnTouchListener;

    .line 100
    new-instance v0, Lcom/c/a/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/c/a/a/a/a$1;-><init>(Lcom/c/a/a/a/a;)V

    iput-object v0, p0, Lcom/c/a/a/a/a;->i:Landroid/view/View$OnLongClickListener;

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/c/a/a/a/a$2;

    invoke-direct {v0, p0}, Lcom/c/a/a/a/a$2;-><init>(Lcom/c/a/a/a/a;)V

    iput-object v0, p0, Lcom/c/a/a/a/a;->h:Landroid/view/View$OnTouchListener;

    .line 124
    iput-object v1, p0, Lcom/c/a/a/a/a;->i:Landroid/view/View$OnLongClickListener;

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 192
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/a;->e:Lcom/c/a/a/a/d/d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/a/a;->c:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/c/a/a/a/a;->e:Lcom/c/a/a/a/d/d;

    invoke-virtual {p0, p1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/c/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 195
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-boolean v0, p0, Lcom/c/a/a/a/a;->c:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    .line 170
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 218
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/a;->e:Lcom/c/a/a/a/d/d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/a/a;->c:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/c/a/a/a/a;->e:Lcom/c/a/a/a/d/d;

    invoke-virtual {p0, p1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/c/a/a/a/d/d;->b(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 221
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    .line 174
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 228
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    invoke-virtual {p0, p1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/c/a/a/a/d/f;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 231
    :cond_0
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 234
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    invoke-virtual {p0, p1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/c/a/a/a/d/f;->b(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 237
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-boolean v0, p0, Lcom/c/a/a/a/a;->d:Z

    return v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 240
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    iget-object v1, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/c/a/a/a/a;->d:Z

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/c/a/a/a/a;->f:Lcom/c/a/a/a/d/f;

    invoke-virtual {p0, p1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/c/a/a/a/d/f;->c(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/c/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    .line 246
    .local v0, "pos":I
    iget-object v1, p0, Lcom/c/a/a/a/a;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/c/a/a/a/a;->notifyItemRemoved(I)V

    .line 248
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    check-cast p1, Lcom/c/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/a/a;->onBindViewHolder(Lcom/c/a/a/a/e;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/c/a/a/a/e;I)V
    .locals 4
    .param p2, "positions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/c/a/a/a/a;, "Lcom/c/a/a/a/a<TT;TK;>;"
    .local p1, "holder":Lcom/c/a/a/a/e;, "TK;"
    invoke-super {p0, p1, p2}, Lcom/c/a/a/a/c;->onBindViewHolder(Lcom/c/a/a/a/e;I)V

    .line 58
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v1

    .line 60
    .local v1, "viewType":I
    iget-object v2, p0, Lcom/c/a/a/a/a;->b:Landroid/support/v7/widget/a/a;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/c/a/a/a/a;->c:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x222

    if-eq v1, v2, :cond_0

    const/16 v2, 0x111

    if-eq v1, v2, :cond_0

    const/16 v2, 0x555

    if-eq v1, v2, :cond_0

    const/16 v2, 0x333

    if-eq v1, v2, :cond_0

    .line 62
    iget v2, p0, Lcom/c/a/a/a/a;->a:I

    if-eqz v2, :cond_2

    .line 63
    iget v2, p0, Lcom/c/a/a/a/a;->a:I

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "toggleView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 65
    sget v2, Lcom/c/a/b$c;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 66
    iget-boolean v2, p0, Lcom/c/a/a/a/a;->g:Z

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/c/a/a/a/a;->i:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    .end local v0    # "toggleView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0    # "toggleView":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/c/a/a/a/a;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 73
    .end local v0    # "toggleView":Landroid/view/View;
    :cond_2
    iget-object v2, p1, Lcom/c/a/a/a/e;->itemView:Landroid/view/View;

    sget v3, Lcom/c/a/b$c;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v2, v3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 74
    iget-object v2, p1, Lcom/c/a/a/a/e;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/c/a/a/a/a;->i:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method
