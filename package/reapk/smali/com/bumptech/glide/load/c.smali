.class public Lcom/bumptech/glide/load/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcom/bumptech/glide/load/f",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/bumptech/glide/load/f",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/load/c;, "Lcom/bumptech/glide/load/c<TT;>;"
    .local p1, "transformationList":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/bumptech/glide/load/f<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/c;->a:Ljava/util/Collection;

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Lcom/bumptech/glide/load/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/bumptech/glide/load/c;, "Lcom/bumptech/glide/load/c<TT;>;"
    .local p1, "transformations":[Lcom/bumptech/glide/load/f;, "[Lcom/bumptech/glide/load/f<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/c;->a:Ljava/util/Collection;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;
    .locals 5
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/load/c;, "Lcom/bumptech/glide/load/c<TT;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    move-object v1, p1

    .line 36
    .local v1, "previous":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/c;->a:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/f;

    .line 37
    .local v2, "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TT;>;"
    invoke-interface {v2, v1, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v3

    .line 38
    .local v3, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/k;->d()V

    .line 41
    :cond_0
    move-object v1, v3

    .line 42
    goto :goto_0

    .line 43
    .end local v2    # "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TT;>;"
    .end local v3    # "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    :cond_1
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    .local p0, "this":Lcom/bumptech/glide/load/c;, "Lcom/bumptech/glide/load/c<TT;>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/c;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/bumptech/glide/load/c;->a:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/f;

    .line 51
    .local v2, "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TT;>;"
    invoke-interface {v2}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    .end local v2    # "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TT;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/c;->b:Ljava/lang/String;

    .line 55
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/load/c;->b:Ljava/lang/String;

    return-object v3
.end method
