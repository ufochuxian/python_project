.class public abstract Lcom/bumptech/glide/g/b/j;
.super Lcom/bumptech/glide/g/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/g/b/b",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/bumptech/glide/g/b/j;, "Lcom/bumptech/glide/g/b/j<TZ;>;"
    const/high16 v0, -0x80000000

    .line 36
    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/g/b/j;-><init>(II)V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 45
    .local p0, "this":Lcom/bumptech/glide/g/b/j;, "Lcom/bumptech/glide/g/b/j<TZ;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/g/b/b;-><init>()V

    .line 46
    iput p1, p0, Lcom/bumptech/glide/g/b/j;->b:I

    .line 47
    iput p2, p0, Lcom/bumptech/glide/g/b/j;->c:I

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/g/b/k;)V
    .locals 3
    .param p1, "cb"    # Lcom/bumptech/glide/g/b/k;

    .prologue
    .line 57
    .local p0, "this":Lcom/bumptech/glide/g/b/j;, "Lcom/bumptech/glide/g/b/j<TZ;>;"
    iget v0, p0, Lcom/bumptech/glide/g/b/j;->b:I

    iget v1, p0, Lcom/bumptech/glide/g/b/j;->c:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/i/i;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/g/b/j;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/g/b/j;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", either provide dimensions in the constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or call override()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/g/b/j;->b:I

    iget v1, p0, Lcom/bumptech/glide/g/b/j;->c:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/g/b/k;->a(II)V

    .line 63
    return-void
.end method
