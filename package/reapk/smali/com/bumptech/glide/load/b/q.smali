.class public abstract Lcom/bumptech/glide/load/b/q;
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
        "Landroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/load/b/l;
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
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/load/b/q;, "Lcom/bumptech/glide/load/b/q<TT;>;"
    .local p2, "urlLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Lcom/bumptech/glide/load/b/d;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/load/b/q;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/load/b/q;->b:Lcom/bumptech/glide/load/b/l;

    .line 23
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.resource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/a/c",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/a/c",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final a(Landroid/net/Uri;II)Lcom/bumptech/glide/load/a/c;
    .locals 6
    .param p1, "model"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/bumptech/glide/load/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/load/b/q;, "Lcom/bumptech/glide/load/b/q<TT;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "result":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<TT;>;"
    invoke-static {v2}, Lcom/bumptech/glide/load/b/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    invoke-static {p1}, Lcom/bumptech/glide/load/b/a;->a(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-static {p1}, Lcom/bumptech/glide/load/b/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/bumptech/glide/load/b/q;->a:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/bumptech/glide/load/b/q;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/a/c;

    move-result-object v1

    .line 41
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/load/b/q;->a:Landroid/content/Context;

    invoke-virtual {p0, v3, p1}, Lcom/bumptech/glide/load/b/q;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/c;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_2
    iget-object v3, p0, Lcom/bumptech/glide/load/b/q;->b:Lcom/bumptech/glide/load/b/l;

    if-eqz v3, :cond_0

    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    :cond_3
    iget-object v3, p0, Lcom/bumptech/glide/load/b/q;->b:Lcom/bumptech/glide/load/b/l;

    new-instance v4, Lcom/bumptech/glide/load/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/b/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, p2, p3}, Lcom/bumptech/glide/load/b/l;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 16
    .local p0, "this":Lcom/bumptech/glide/load/b/q;, "Lcom/bumptech/glide/load/b/q<TT;>;"
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/q;->a(Landroid/net/Uri;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method
