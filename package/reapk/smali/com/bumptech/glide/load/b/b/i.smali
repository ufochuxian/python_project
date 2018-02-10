.class public Lcom/bumptech/glide/load/b/b/i;
.super Lcom/bumptech/glide/load/b/q;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/q",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/b/b/f",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-class v0, Lcom/bumptech/glide/load/b/d;

    invoke-static {v0, p1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/b/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 43
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
            "Lcom/bumptech/glide/load/b/d;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "urlLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Lcom/bumptech/glide/load/b/d;Ljava/io/InputStream;>;"
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/q;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/bumptech/glide/load/a/k;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/a/k;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/a/c;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/bumptech/glide/load/a/j;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/a/j;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
