.class Lcom/bumptech/glide/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/n;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/n$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/n;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/n;)V
    .locals 0

    .prologue
    .line 103
    .local p0, "this":Lcom/bumptech/glide/n$1;, "Lcom/bumptech/glide/n.1;"
    iput-object p1, p0, Lcom/bumptech/glide/n$1;->a:Lcom/bumptech/glide/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/bumptech/glide/n$1;, "Lcom/bumptech/glide/n.1;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/n$1;->a:Lcom/bumptech/glide/n;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/bumptech/glide/n$1;, "Lcom/bumptech/glide/n.1;"
    iget-object v0, p0, Lcom/bumptech/glide/n$1;->a:Lcom/bumptech/glide/n;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/n;->a(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
