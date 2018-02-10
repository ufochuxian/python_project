.class public Lcom/bumptech/glide/load/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/l",
        "<",
        "Ljava/net/URL;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/b/r;, "Lcom/bumptech/glide/load/b/r<TT;>;"
    .local p1, "glideUrlLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Lcom/bumptech/glide/load/b/d;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/b/r;->a:Lcom/bumptech/glide/load/b/l;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 14
    .local p0, "this":Lcom/bumptech/glide/load/b/r;, "Lcom/bumptech/glide/load/b/r<TT;>;"
    check-cast p1, Ljava/net/URL;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/r;->a(Ljava/net/URL;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URL;II)Lcom/bumptech/glide/load/a/c;
    .locals 2
    .param p1, "model"    # Ljava/net/URL;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lcom/bumptech/glide/load/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/bumptech/glide/load/b/r;, "Lcom/bumptech/glide/load/b/r<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/b/r;->a:Lcom/bumptech/glide/load/b/l;

    new-instance v1, Lcom/bumptech/glide/load/b/d;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/b/d;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/b/l;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method
