.class public final Lcom/bumptech/glide/o$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
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
            "Landroid/os/ParcelFileDescriptor;",
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
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/bumptech/glide/o$f;, "Lcom/bumptech/glide/o$f<TT;>;"
    .local p2, "loader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TT;Landroid/os/ParcelFileDescriptor;>;"
    iput-object p1, p0, Lcom/bumptech/glide/o$f;->a:Lcom/bumptech/glide/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p2, p0, Lcom/bumptech/glide/o$f;->b:Lcom/bumptech/glide/load/b/l;

    .line 655
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lcom/bumptech/glide/o$f;, "Lcom/bumptech/glide/o$f<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/o$f;->a:Lcom/bumptech/glide/o;

    invoke-static {v0}, Lcom/bumptech/glide/o;->e(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$d;

    move-result-object v9

    new-instance v0, Lcom/bumptech/glide/g;

    invoke-static {p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/o$f;->b:Lcom/bumptech/glide/load/b/l;

    iget-object v4, p0, Lcom/bumptech/glide/o$f;->a:Lcom/bumptech/glide/o;

    invoke-static {v4}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/o;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/o$f;->a:Lcom/bumptech/glide/o;

    invoke-static {v5}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/l;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/o$f;->a:Lcom/bumptech/glide/o;

    invoke-static {v6}, Lcom/bumptech/glide/o;->c(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/m;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/o$f;->a:Lcom/bumptech/glide/o;

    invoke-static {v7}, Lcom/bumptech/glide/o;->d(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/g;

    move-result-object v7

    iget-object v8, p0, Lcom/bumptech/glide/o$f;->a:Lcom/bumptech/glide/o;

    invoke-static {v8}, Lcom/bumptech/glide/o;->e(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$d;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Landroid/content/Context;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/o$d;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method
