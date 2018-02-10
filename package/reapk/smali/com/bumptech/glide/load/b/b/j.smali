.class public Lcom/bumptech/glide/load/b/b/j;
.super Lcom/bumptech/glide/load/b/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/r",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "glideUrlLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Lcom/bumptech/glide/load/b/d;Ljava/io/InputStream;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/r;-><init>(Lcom/bumptech/glide/load/b/l;)V

    .line 38
    return-void
.end method
