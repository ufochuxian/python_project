.class public abstract Lcom/c/a/a/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:I = -0xff


# instance fields
.field private b:Landroid/util/SparseIntArray;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "layouts"    # Landroid/util/SparseIntArray;

    .prologue
    .line 25
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/c/a/a/a/f/a;->b:Landroid/util/SparseIntArray;

    .line 27
    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 86
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t mess two register mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "layoutResId"    # I
        .annotation build Landroid/support/annotation/w;
        .end annotation
    .end param

    .prologue
    .line 50
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    iget-object v0, p0, Lcom/c/a/a/a/f/a;->b:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/f/a;->b:Landroid/util/SparseIntArray;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/f/a;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    iget-object v0, p0, Lcom/c/a/a/a/f/a;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final a(Ljava/util/List;I)I
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)I"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/f/a;->a(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, -0xff

    goto :goto_0
.end method

.method public a(II)Lcom/c/a/a/a/f/a;
    .locals 1
    .param p1, "type"    # I
    .param p2, "layoutResId"    # I
        .annotation build Landroid/support/annotation/w;
        .end annotation
    .end param

    .prologue
    .line 79
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/f/a;->d:Z

    .line 80
    iget-boolean v0, p0, Lcom/c/a/a/a/f/a;->c:Z

    invoke-direct {p0, v0}, Lcom/c/a/a/a/f/a;->a(Z)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/c/a/a/a/f/a;->b(II)V

    .line 82
    return-object p0
.end method

.method public varargs a([I)Lcom/c/a/a/a/f/a;
    .locals 2
    .param p1, "layoutResIds"    # [I
        .annotation build Landroid/support/annotation/w;
        .end annotation
    .end param

    .prologue
    .line 63
    .local p0, "this":Lcom/c/a/a/a/f/a;, "Lcom/c/a/a/a/f/a<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/c/a/a/a/f/a;->c:Z

    .line 64
    iget-boolean v1, p0, Lcom/c/a/a/a/f/a;->d:Z

    invoke-direct {p0, v1}, Lcom/c/a/a/a/f/a;->a(Z)V

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 66
    aget v1, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/a/f/a;->b(II)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object p0
.end method
