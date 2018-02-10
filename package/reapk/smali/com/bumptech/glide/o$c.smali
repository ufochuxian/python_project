.class public final Lcom/bumptech/glide/o$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/o;

.field private final b:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lcom/bumptech/glide/o$c;, "Lcom/bumptech/glide/o$c<TT;>;"
    .local p2, "loader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TT;Ljava/io/InputStream;>;"
    iput-object p1, p0, Lcom/bumptech/glide/o$c;->a:Lcom/bumptech/glide/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p2, p0, Lcom/bumptech/glide/o$c;->b:Lcom/bumptech/glide/load/b/l;

    .line 675
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, "this":Lcom/bumptech/glide/o$c;, "Lcom/bumptech/glide/o$c<TT;>;"
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/o$c;->a:Lcom/bumptech/glide/o;

    invoke-static {v0}, Lcom/bumptech/glide/o;->e(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$d;

    move-result-object v9

    new-instance v0, Lcom/bumptech/glide/g;

    iget-object v2, p0, Lcom/bumptech/glide/o$c;->b:Lcom/bumptech/glide/load/b/l;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/o$c;->a:Lcom/bumptech/glide/o;

    invoke-static {v1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/o;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/bumptech/glide/o$c;->a:Lcom/bumptech/glide/o;

    invoke-static {v1}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/l;

    move-result-object v5

    iget-object v1, p0, Lcom/bumptech/glide/o$c;->a:Lcom/bumptech/glide/o;

    invoke-static {v1}, Lcom/bumptech/glide/o;->c(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/m;

    move-result-object v6

    iget-object v1, p0, Lcom/bumptech/glide/o$c;->a:Lcom/bumptech/glide/o;

    invoke-static {v1}, Lcom/bumptech/glide/o;->d(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/g;

    move-result-object v7

    iget-object v1, p0, Lcom/bumptech/glide/o$c;->a:Lcom/bumptech/glide/o;

    invoke-static {v1}, Lcom/bumptech/glide/o;->e(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$d;

    move-result-object v8

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Landroid/content/Context;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/o$d;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "this":Lcom/bumptech/glide/o$c;, "Lcom/bumptech/glide/o$c<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/o$c;->a(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method
