.class Lcom/bumptech/glide/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/g;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/d/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 48
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/d/a;->b:Z

    .line 49
    iget-object v2, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-static {v2}, Lcom/bumptech/glide/i/i;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/d/h;

    .line 50
    .local v1, "lifecycleListener":Lcom/bumptech/glide/d/h;
    invoke-interface {v1}, Lcom/bumptech/glide/d/h;->g()V

    goto :goto_0

    .line 52
    .end local v1    # "lifecycleListener":Lcom/bumptech/glide/d/h;
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/d/h;)V
    .locals 1
    .param p1, "listener"    # Lcom/bumptech/glide/d/h;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-boolean v0, p0, Lcom/bumptech/glide/d/a;->c:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p1}, Lcom/bumptech/glide/d/h;->i()V

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/d/a;->b:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/bumptech/glide/d/h;->g()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/d/h;->h()V

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bumptech/glide/d/a;->b:Z

    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-static {v2}, Lcom/bumptech/glide/i/i;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/d/h;

    .line 57
    .local v1, "lifecycleListener":Lcom/bumptech/glide/d/h;
    invoke-interface {v1}, Lcom/bumptech/glide/d/h;->h()V

    goto :goto_0

    .line 59
    .end local v1    # "lifecycleListener":Lcom/bumptech/glide/d/h;
    :cond_0
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 62
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/d/a;->c:Z

    .line 63
    iget-object v2, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-static {v2}, Lcom/bumptech/glide/i/i;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/d/h;

    .line 64
    .local v1, "lifecycleListener":Lcom/bumptech/glide/d/h;
    invoke-interface {v1}, Lcom/bumptech/glide/d/h;->i()V

    goto :goto_0

    .line 66
    .end local v1    # "lifecycleListener":Lcom/bumptech/glide/d/h;
    :cond_0
    return-void
.end method
