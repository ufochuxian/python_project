.class Lcom/bumptech/glide/d/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/d/j;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/d/j;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bumptech/glide/d/j$a;->a:Lcom/bumptech/glide/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/d/j;Lcom/bumptech/glide/d/j$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/d/j;
    .param p2, "x1"    # Lcom/bumptech/glide/d/j$1;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/j$a;-><init>(Lcom/bumptech/glide/d/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v4, p0, Lcom/bumptech/glide/d/j$a;->a:Lcom/bumptech/glide/d/j;

    invoke-virtual {v4}, Lcom/bumptech/glide/d/j;->d()Ljava/util/Set;

    move-result-object v0

    .line 173
    .local v0, "descendantFragments":Ljava/util/Set;, "Ljava/util/Set<Lcom/bumptech/glide/d/j;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 175
    .local v1, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/o;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/d/j;

    .line 176
    .local v2, "fragment":Lcom/bumptech/glide/d/j;
    invoke-virtual {v2}, Lcom/bumptech/glide/d/j;->b()Lcom/bumptech/glide/o;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/bumptech/glide/d/j;->b()Lcom/bumptech/glide/o;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v2    # "fragment":Lcom/bumptech/glide/d/j;
    :cond_1
    return-object v1
.end method
