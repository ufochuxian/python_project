.class public Lcom/bumptech/glide/load/b/b/g;
.super Lcom/bumptech/glide/load/b/n;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/n",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/b/b/f",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-class v0, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/b/g;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "uriLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Landroid/net/Uri;Ljava/io/InputStream;>;"
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/n;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 41
    return-void
.end method
