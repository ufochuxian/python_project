.class public Lcom/bumptech/glide/load/engine/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/i;


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/b/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/k;
    .locals 1
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 26
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 52
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/i$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/bumptech/glide/load/engine/b/i$a;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/load/engine/b/i$a;

    .line 42
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 1
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/load/engine/b/i$a;

    invoke-interface {v0, p2}, Lcom/bumptech/glide/load/engine/b/i$a;->b(Lcom/bumptech/glide/load/engine/k;)V

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
