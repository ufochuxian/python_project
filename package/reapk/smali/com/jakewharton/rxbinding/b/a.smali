.class public final Lcom/jakewharton/rxbinding/b/a;
.super Lcom/jakewharton/rxbinding/view/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/k",
        "<",
        "Landroid/widget/AbsListView;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "scrollState"    # I
    .param p3, "firstVisibleItem"    # I
    .param p4, "visibleItemCount"    # I
    .param p5, "totalItemCount"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/k;-><init>(Landroid/view/View;)V

    .line 25
    iput p2, p0, Lcom/jakewharton/rxbinding/b/a;->a:I

    .line 26
    iput p3, p0, Lcom/jakewharton/rxbinding/b/a;->b:I

    .line 27
    iput p4, p0, Lcom/jakewharton/rxbinding/b/a;->c:I

    .line 28
    iput p5, p0, Lcom/jakewharton/rxbinding/b/a;->d:I

    .line 29
    return-void
.end method

.method public static a(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding/b/a;
    .locals 6
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "scrollState"    # I
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/jakewharton/rxbinding/b/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding/b/a;-><init>(Landroid/widget/AbsListView;IIII)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/jakewharton/rxbinding/b/a;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/jakewharton/rxbinding/b/a;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/jakewharton/rxbinding/b/a;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/jakewharton/rxbinding/b/a;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 49
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/jakewharton/rxbinding/b/a;

    .line 53
    .local v0, "that":Lcom/jakewharton/rxbinding/b/a;
    iget v3, p0, Lcom/jakewharton/rxbinding/b/a;->a:I

    iget v4, v0, Lcom/jakewharton/rxbinding/b/a;->a:I

    if-ne v3, v4, :cond_0

    .line 54
    iget v3, p0, Lcom/jakewharton/rxbinding/b/a;->b:I

    iget v4, v0, Lcom/jakewharton/rxbinding/b/a;->b:I

    if-ne v3, v4, :cond_0

    .line 55
    iget v3, p0, Lcom/jakewharton/rxbinding/b/a;->c:I

    iget v4, v0, Lcom/jakewharton/rxbinding/b/a;->c:I

    if-ne v3, v4, :cond_0

    .line 56
    iget v3, p0, Lcom/jakewharton/rxbinding/b/a;->d:I

    iget v4, v0, Lcom/jakewharton/rxbinding/b/a;->d:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 60
    iget v0, p0, Lcom/jakewharton/rxbinding/b/a;->a:I

    .line 61
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/jakewharton/rxbinding/b/a;->b:I

    add-int v0, v1, v2

    .line 62
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/jakewharton/rxbinding/b/a;->c:I

    add-int v0, v1, v2

    .line 63
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/jakewharton/rxbinding/b/a;->d:I

    add-int v0, v1, v2

    .line 64
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsListViewScrollEvent{scrollState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstVisibleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/b/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visibleItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/b/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/b/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
