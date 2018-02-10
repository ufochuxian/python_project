.class Lcom/bumptech/glide/d/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/d/n;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/d/n;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/bumptech/glide/d/n$a;->a:Lcom/bumptech/glide/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/n$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/d/n;
    .param p2, "x1"    # Lcom/bumptech/glide/d/n$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/n$a;-><init>(Lcom/bumptech/glide/d/n;)V

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
    .line 163
    iget-object v4, p0, Lcom/bumptech/glide/d/n$a;->a:Lcom/bumptech/glide/d/n;

    invoke-virtual {v4}, Lcom/bumptech/glide/d/n;->d()Ljava/util/Set;

    move-result-object v0

    .line 164
    .local v0, "descendantFragments":Ljava/util/Set;, "Ljava/util/Set<Lcom/bumptech/glide/d/n;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 165
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

    check-cast v2, Lcom/bumptech/glide/d/n;

    .line 166
    .local v2, "fragment":Lcom/bumptech/glide/d/n;
    invoke-virtual {v2}, Lcom/bumptech/glide/d/n;->b()Lcom/bumptech/glide/o;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {v2}, Lcom/bumptech/glide/d/n;->b()Lcom/bumptech/glide/o;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v2    # "fragment":Lcom/bumptech/glide/d/n;
    :cond_1
    return-object v1
.end method
