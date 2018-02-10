.class public abstract Landroid/support/v7/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$w;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/RecyclerView$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6277
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6278
    new-instance v0, Landroid/support/v7/widget/RecyclerView$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    .line 6279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$w;, "TVH;"
    const/4 v4, 0x1

    .line 6381
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$w;->mPosition:I

    .line 6382
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6383
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/support/v7/widget/RecyclerView$w;->mItemId:J

    .line 6385
    :cond_0
    const/16 v1, 0x207

    invoke-virtual {p1, v4, v1}, Landroid/support/v7/widget/RecyclerView$w;->setFlags(II)V

    .line 6388
    const-string v1, "RV OnBindView"

    invoke-static {v1}, Landroid/support/v4/os/n;->a(Ljava/lang/String;)V

    .line 6389
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;ILjava/util/List;)V

    .line 6390
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->clearPayload()V

    .line 6391
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6392
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v1, :cond_1

    .line 6393
    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$h;->f:Z

    .line 6395
    :cond_1
    invoke-static {}, Landroid/support/v4/os/n;->a()V

    .line 6396
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 6366
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    const-string v1, "RV CreateView"

    invoke-static {v1}, Landroid/support/v4/os/n;->a(Ljava/lang/String;)V

    .line 6367
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 6368
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$w;, "TVH;"
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$w;->mItemViewType:I

    .line 6369
    invoke-static {}, Landroid/support/v4/os/n;->a()V

    .line 6370
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6439
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6411
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .prologue
    .line 6549
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 6457
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6636
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 6637
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6652
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$b;->a(II)V

    .line 6653
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .prologue
    .line 6680
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v7/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    .line 6681
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6745
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$b;->b(II)V

    .line 6746
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 6760
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$b;->d(II)V

    .line 6761
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6698
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$b;->a(II)V

    .line 6699
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 6728
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    .line 6729
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6779
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$b;->b(II)V

    .line 6780
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6813
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$b;->c(II)V

    .line 6814
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6796
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$b;->c(II)V

    .line 6797
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 6595
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6356
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$w;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 6357
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 6604
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 6515
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$w;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6529
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$w;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6541
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$w;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6478
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$w;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$c;

    .prologue
    .line 6569
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    .line 6570
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 6423
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$a;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6427
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$a;->mHasStableIds:Z

    .line 6428
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$c;

    .prologue
    .line 6583
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$a;, "Landroid/support/v7/widget/RecyclerView$a<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->mObservable:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    .line 6584
    return-void
.end method
