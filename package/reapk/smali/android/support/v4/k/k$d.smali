.class final Landroid/support/v4/k/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v4/k/k;


# direct methods
.method constructor <init>(Landroid/support/v4/k/k;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/k/k;

    .prologue
    .line 75
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    iput-object p1, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/k/k$d;->c:Z

    .line 76
    invoke-virtual {p1}, Landroid/support/v4/k/k;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/k/k$d;->a:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/k/k$d;->b:I

    .line 78
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    iget v0, p0, Landroid/support/v4/k/k$d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/k/k$d;->b:I

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/k/k$d;->c:Z

    .line 89
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    iget-boolean v3, p0, Landroid/support/v4/k/k$d;->c:Z

    if-nez v3, :cond_0

    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This container does not support retaining Map.Entry objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_0
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 141
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 139
    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v5, p0, Landroid/support/v4/k/k$d;->b:I

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/k/k;->a(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/k/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v5, p0, Landroid/support/v4/k/k$d;->b:I

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/k/k;->a(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/k/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    iget-boolean v0, p0, Landroid/support/v4/k/k$d;->c:Z

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v1, p0, Landroid/support/v4/k/k$d;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/k;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    iget-boolean v0, p0, Landroid/support/v4/k/k$d;->c:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v1, p0, Landroid/support/v4/k/k$d;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/k;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    iget v0, p0, Landroid/support/v4/k/k$d;->b:I

    iget v1, p0, Landroid/support/v4/k/k$d;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    const/4 v2, 0x0

    .line 146
    iget-boolean v3, p0, Landroid/support/v4/k/k$d;->c:Z

    if-nez v3, :cond_0

    .line 147
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    iget-object v3, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v4, p0, Landroid/support/v4/k/k$d;->b:I

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/k/k;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "key":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v4, p0, Landroid/support/v4/k/k$d;->b:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/k/k;->a(II)Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    move v3, v2

    :goto_0
    if-nez v1, :cond_2

    .line 153
    :goto_1
    xor-int/2addr v2, v3

    return v2

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    invoke-virtual {p0}, Landroid/support/v4/k/k$d;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    iget-boolean v0, p0, Landroid/support/v4/k/k$d;->c:Z

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v1, p0, Landroid/support/v4/k/k$d;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/k/k;->a(I)V

    .line 98
    iget v0, p0, Landroid/support/v4/k/k$d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/k/k$d;->b:I

    .line 99
    iget v0, p0, Landroid/support/v4/k/k$d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/k/k$d;->a:I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/k/k$d;->c:Z

    .line 101
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Landroid/support/v4/k/k$d;->c:Z

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/k$d;->d:Landroid/support/v4/k/k;

    iget v1, p0, Landroid/support/v4/k/k$d;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/k/k;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    .local p0, "this":Landroid/support/v4/k/k$d;, "Landroid/support/v4/k/k<TK;TV;>.d;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/k/k$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/k/k$d;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
