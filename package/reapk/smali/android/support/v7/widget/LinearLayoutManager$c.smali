.class Landroid/support/v7/widget/LinearLayoutManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "LLM#LayoutState"

.field static final b:I = -0x1

.field static final c:I = 0x1

.field static final d:I = -0x80000000

.field static final e:I = -0x1

.field static final f:I = 0x1

.field static final g:I = -0x80000000


# instance fields
.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Z

.field q:I

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field s:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:Z

    .line 2181
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->o:I

    .line 2188
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->p:Z

    .line 2200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->r:Ljava/util/List;

    return-void
.end method

.method private c()Landroid/view/View;
    .locals 6

    .prologue
    .line 2237
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2238
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2239
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->r:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v4, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 2240
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    .line 2241
    .local v1, "lp":Landroid/support/v7/widget/RecyclerView$h;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2244
    :cond_1
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->h()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2245
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    .line 2249
    .end local v1    # "lp":Landroid/support/v7/widget/RecyclerView$h;
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$n;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 2221
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->r:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2222
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$c;->c()Landroid/view/View;

    move-result-object v0

    .line 2226
    :goto_0
    return-object v0

    .line 2224
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$n;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2225
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->l:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 2253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    .line 2254
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "ignore"    # Landroid/view/View;

    .prologue
    .line 2257
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2258
    .local v0, "closest":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2259
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    .line 2264
    :goto_0
    return-void

    .line 2261
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    .line 2262
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->h()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$t;)Z
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 2211
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "ignore"    # Landroid/view/View;

    .prologue
    .line 2267
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->r:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2268
    .local v5, "size":I
    const/4 v0, 0x0

    .line 2269
    .local v0, "closest":Landroid/view/View;
    const v1, 0x7fffffff

    .line 2273
    .local v1, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 2274
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->r:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v7, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 2275
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$h;

    .line 2276
    .local v4, "lp":Landroid/support/v7/widget/RecyclerView$h;
    if-eq v6, p1, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2273
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2279
    :cond_1
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$h;->h()I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->l:I

    mul-int v2, v7, v8

    .line 2281
    .local v2, "distance":I
    if-ltz v2, :cond_0

    .line 2284
    if-ge v2, v1, :cond_0

    .line 2285
    move-object v0, v6

    .line 2286
    move v1, v2

    .line 2287
    if-nez v2, :cond_0

    .line 2292
    .end local v2    # "distance":I
    .end local v4    # "lp":Landroid/support/v7/widget/RecyclerView$h;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-object v0
.end method

.method b()V
    .locals 3

    .prologue
    .line 2296
    const-string v0, "LLM#LayoutState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ind:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layoutDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    return-void
.end method
