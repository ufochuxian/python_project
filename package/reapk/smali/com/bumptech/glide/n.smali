.class public Lcom/bumptech/glide/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/n$c;,
        Lcom/bumptech/glide/n$d;,
        Lcom/bumptech/glide/n$b;,
        Lcom/bumptech/glide/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/bumptech/glide/n$d;

.field private final c:Lcom/bumptech/glide/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxPreload"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/n;->i:Z

    .line 103
    new-instance v0, Lcom/bumptech/glide/n$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/n$1;-><init>(Lcom/bumptech/glide/n;)V

    iput-object v0, p0, Lcom/bumptech/glide/n;->c:Lcom/bumptech/glide/n$a;

    .line 114
    new-instance v0, Lcom/bumptech/glide/n$2;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/n$2;-><init>(Lcom/bumptech/glide/n;)V

    iput-object v0, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/n$b;

    .line 121
    iput p1, p0, Lcom/bumptech/glide/n;->a:I

    .line 122
    new-instance v0, Lcom/bumptech/glide/n$d;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/n$d;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/n$d;

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/n$a;Lcom/bumptech/glide/n$b;I)V
    .locals 2
    .param p3, "maxPreload"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/n$a",
            "<TT;>;",
            "Lcom/bumptech/glide/n$b",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    .local p1, "preloadModelProvider":Lcom/bumptech/glide/n$a;, "Lcom/bumptech/glide/n$a<TT;>;"
    .local p2, "preloadDimensionProvider":Lcom/bumptech/glide/n$b;, "Lcom/bumptech/glide/n$b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/n;->i:Z

    .line 136
    iput-object p1, p0, Lcom/bumptech/glide/n;->c:Lcom/bumptech/glide/n$a;

    .line 137
    iput-object p2, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/n$b;

    .line 138
    iput p3, p0, Lcom/bumptech/glide/n;->a:I

    .line 139
    new-instance v0, Lcom/bumptech/glide/n$d;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/n$d;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/n$d;

    .line 140
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    const/4 v2, 0x0

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/bumptech/glide/n;->a:I

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/n$d;

    invoke-virtual {v1, v2, v2}, Lcom/bumptech/glide/n$d;->a(II)Lcom/bumptech/glide/n$c;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/g/b/m;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "increasing"    # Z

    .prologue
    .line 217
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/n;->i:Z

    if-eq v0, p2, :cond_0

    .line 218
    iput-boolean p2, p0, Lcom/bumptech/glide/n;->i:Z

    .line 219
    invoke-direct {p0}, Lcom/bumptech/glide/n;->a()V

    .line 221
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/bumptech/glide/n;->a:I

    :goto_0
    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/n;->b(II)V

    .line 222
    return-void

    .line 221
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/n;->a:I

    neg-int v0, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;II)V
    .locals 5
    .param p2, "position"    # I
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/n$b;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/n$b;->a(Ljava/lang/Object;II)[I

    move-result-object v0

    .line 269
    .local v0, "dimensions":[I
    if-eqz v0, :cond_0

    .line 270
    iget-object v2, p0, Lcom/bumptech/glide/n;->c:Lcom/bumptech/glide/n$a;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/n$a;->a(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v1

    .line 271
    .local v1, "preloadRequestBuilder":Lcom/bumptech/glide/h;
    iget-object v2, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/n$d;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/n$d;->a(II)Lcom/bumptech/glide/n$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;

    .line 273
    .end local v1    # "preloadRequestBuilder":Lcom/bumptech/glide/h;
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;IZ)V
    .locals 3
    .param p2, "position"    # I
    .param p3, "isIncreasing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 255
    .local v1, "numItems":I
    if-eqz p3, :cond_0

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Lcom/bumptech/glide/n;->a(Ljava/lang/Object;II)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 261
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Lcom/bumptech/glide/n;->a(Ljava/lang/Object;II)V

    .line 260
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 264
    :cond_1
    return-void
.end method

.method private b(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    const/4 v5, 0x0

    .line 227
    if-ge p1, p2, :cond_0

    .line 228
    iget v3, p0, Lcom/bumptech/glide/n;->e:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 229
    .local v2, "start":I
    move v0, p2

    .line 234
    .local v0, "end":I
    :goto_0
    iget v3, p0, Lcom/bumptech/glide/n;->h:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    iget v3, p0, Lcom/bumptech/glide/n;->h:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 237
    if-ge p1, p2, :cond_1

    .line 239
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 240
    iget-object v3, p0, Lcom/bumptech/glide/n;->c:Lcom/bumptech/glide/n$a;

    invoke-interface {v3, v1}, Lcom/bumptech/glide/n$a;->a(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/bumptech/glide/n;->a(Ljava/util/List;IZ)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    :cond_0
    move v2, p2

    .line 232
    .restart local v2    # "start":I
    iget v3, p0, Lcom/bumptech/glide/n;->f:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "end":I
    goto :goto_0

    .line 244
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v2, :cond_2

    .line 245
    iget-object v3, p0, Lcom/bumptech/glide/n;->c:Lcom/bumptech/glide/n$a;

    invoke-interface {v3, v1}, Lcom/bumptech/glide/n$a;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v1, v5}, Lcom/bumptech/glide/n;->a(Ljava/util/List;IZ)V

    .line 244
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 249
    :cond_2
    iput v2, p0, Lcom/bumptech/glide/n;->f:I

    .line 250
    iput v0, p0, Lcom/bumptech/glide/n;->e:I

    .line 251
    return-void
.end method


# virtual methods
.method protected a(II)Ljava/util/List;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must either provide a PreloadModelProvider or override getItems()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/Object;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must either provide a PreloadDimensionProvider or override getDimensions()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must either provide a PreloadModelProvider, or override getRequestBuilder()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    .line 150
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    iput p4, p0, Lcom/bumptech/glide/n;->h:I

    .line 151
    iget v0, p0, Lcom/bumptech/glide/n;->g:I

    if-le p2, v0, :cond_1

    .line 152
    add-int v0, p2, p3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/n;->a(IZ)V

    .line 156
    :cond_0
    :goto_0
    iput p2, p0, Lcom/bumptech/glide/n;->g:I

    .line 157
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/n;->g:I

    if-ge p2, v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/n;->a(IZ)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 145
    .local p0, "this":Lcom/bumptech/glide/n;, "Lcom/bumptech/glide/n<TT;>;"
    return-void
.end method
