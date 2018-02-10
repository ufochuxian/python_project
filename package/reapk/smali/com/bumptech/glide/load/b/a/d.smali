.class public Lcom/bumptech/glide/load/b/a/d;
.super Lcom/bumptech/glide/load/b/p;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/p",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/b/a/b",
        "<",
        "Ljava/lang/String;",
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

    invoke-static {v0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/a/d;-><init>(Lcom/bumptech/glide/load/b/l;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "uriLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/p;-><init>(Lcom/bumptech/glide/load/b/l;)V

    .line 41
    return-void
.end method
