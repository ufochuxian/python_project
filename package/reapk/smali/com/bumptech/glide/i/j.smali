.class public Lcom/bumptech/glide/i/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/b/k;
.implements Lcom/bumptech/glide/n$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/i/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/b/k;",
        "Lcom/bumptech/glide/n$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:Lcom/bumptech/glide/i/j$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/bumptech/glide/i/j;, "Lcom/bumptech/glide/i/j<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    .local p0, "this":Lcom/bumptech/glide/i/j;, "Lcom/bumptech/glide/i/j<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i/j;->a(Landroid/view/View;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 54
    .local p0, "this":Lcom/bumptech/glide/i/j;, "Lcom/bumptech/glide/i/j<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/bumptech/glide/i/j;->a:[I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/i/j;->b:Lcom/bumptech/glide/i/j$a;

    .line 56
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    .local p0, "this":Lcom/bumptech/glide/i/j;, "Lcom/bumptech/glide/i/j<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/i/j;->a:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/i/j;->b:Lcom/bumptech/glide/i/j$a;

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/bumptech/glide/i/j$a;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/i/j$a;-><init>(Landroid/view/View;Lcom/bumptech/glide/g/b/k;)V

    iput-object v0, p0, Lcom/bumptech/glide/i/j;->b:Lcom/bumptech/glide/i/j$a;

    goto :goto_0
.end method

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/i/j;, "Lcom/bumptech/glide/i/j<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/i/j;->a:[I

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/i/j;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/i/j;->a:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method
