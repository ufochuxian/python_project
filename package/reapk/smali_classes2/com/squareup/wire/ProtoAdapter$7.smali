.class Lcom/squareup/wire/ProtoAdapter$7;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/ProtoAdapter;->d()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic s:Lcom/squareup/wire/ProtoAdapter;


# direct methods
.method constructor <init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/wire/ProtoAdapter;
    .param p2, "fieldEncoding"    # Lcom/squareup/wire/FieldEncoding;

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    .local p3, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/squareup/wire/ProtoAdapter$7;->s:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, p2, p3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)I
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$7;->a(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public a(ILjava/util/List;)I
    .locals 5
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TE;>;)I"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v2, 0x0

    .line 452
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 453
    iget-object v3, p0, Lcom/squareup/wire/ProtoAdapter$7;->s:Lcom/squareup/wire/ProtoAdapter;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/squareup/wire/ProtoAdapter;->a(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_0
    return v2
.end method

.method public a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)I"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Repeated values can only be sized with a tag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic a(Lcom/squareup/wire/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$7;->b(Lcom/squareup/wire/d;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$7;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/squareup/wire/e;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter$7;->a(Lcom/squareup/wire/e;ILjava/util/List;)V

    return-void
.end method

.method public a(Lcom/squareup/wire/e;ILjava/util/List;)V
    .locals 4
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/e;",
            "I",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 465
    iget-object v2, p0, Lcom/squareup/wire/ProtoAdapter$7;->s:Lcom/squareup/wire/ProtoAdapter;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/squareup/wire/ProtoAdapter;->a(Lcom/squareup/wire/e;ILjava/lang/Object;)V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/squareup/wire/e;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$7;->a(Lcom/squareup/wire/e;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/squareup/wire/e;Ljava/util/List;)V
    .locals 2
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/e;",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Repeated values can only be encoded with a tag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$7;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/wire/d;)Ljava/util/List;
    .locals 2
    .param p1, "reader"    # Lcom/squareup/wire/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/d;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    iget-object v1, p0, Lcom/squareup/wire/ProtoAdapter$7;->s:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/ProtoAdapter;->a(Lcom/squareup/wire/d;)Ljava/lang/Object;

    move-result-object v0

    .line 471
    .local v0, "value":Ljava/lang/Object;, "TE;"
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lcom/squareup/wire/ProtoAdapter$7;, "Lcom/squareup/wire/ProtoAdapter$7;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
