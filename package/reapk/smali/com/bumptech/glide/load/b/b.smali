.class public Lcom/bumptech/glide/load/b/b;
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
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Landroid/net/Uri;",
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
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/bumptech/glide/load/b/b;, "Lcom/bumptech/glide/load/b/b<TT;>;"
    .local p1, "uriLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<Landroid/net/Uri;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b;->a:Lcom/bumptech/glide/load/b/l;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/bumptech/glide/load/a/c;
    .locals 2
    .param p1, "model"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/load/b/b;, "Lcom/bumptech/glide/load/b/b<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->a:Lcom/bumptech/glide/load/b/l;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/b/l;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 15
    .local p0, "this":Lcom/bumptech/glide/load/b/b;, "Lcom/bumptech/glide/load/b/b<TT;>;"
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/b;->a(Ljava/io/File;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method
