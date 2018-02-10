.class public Lcom/bumptech/glide/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/n$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/n$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 22
    .local p0, "this":Lcom/bumptech/glide/i/d;, "Lcom/bumptech/glide/i/d<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/bumptech/glide/i/d;->a:[I

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)[I
    .locals 2
    .param p2, "adapterPosition"    # I
    .param p3, "itemPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/i/d;, "Lcom/bumptech/glide/i/d<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/i/d;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/i/d;->a:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
