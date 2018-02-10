.class final Lcom/squareup/wire/f;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/squareup/wire/i;",
        ">",
        "Lcom/squareup/wire/ProtoAdapter",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    invoke-direct {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    .line 31
    iput-object p1, p0, Lcom/squareup/wire/f;->s:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method private c()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 35
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    iget-object v1, p0, Lcom/squareup/wire/f;->t:Ljava/lang/reflect/Method;

    .line 36
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 40
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/squareup/wire/f;->s:Ljava/lang/Class;

    const-string v3, "fromValue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .end local v1    # "method":Ljava/lang/reflect/Method;
    iput-object v1, p0, Lcom/squareup/wire/f;->t:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public a(Lcom/squareup/wire/i;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    .local p1, "value":Lcom/squareup/wire/i;, "TE;"
    invoke-interface {p1}, Lcom/squareup/wire/i;->a()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/e;->c(I)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/squareup/wire/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/wire/f;->b(Lcom/squareup/wire/d;)Lcom/squareup/wire/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/wire/e;Lcom/squareup/wire/i;)V
    .locals 1
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/e;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    .local p2, "value":Lcom/squareup/wire/i;, "TE;"
    invoke-interface {p2}, Lcom/squareup/wire/i;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/e;->g(I)V

    .line 52
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
    .line 25
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    check-cast p2, Lcom/squareup/wire/i;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/f;->a(Lcom/squareup/wire/e;Lcom/squareup/wire/i;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    check-cast p1, Lcom/squareup/wire/i;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/f;->a(Lcom/squareup/wire/i;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/wire/d;)Lcom/squareup/wire/i;
    .locals 8
    .param p1, "reader"    # Lcom/squareup/wire/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/d;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    invoke-virtual {p1}, Lcom/squareup/wire/d;->g()I

    move-result v2

    .line 59
    .local v2, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/wire/f;->c()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/i;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .local v0, "constant":Lcom/squareup/wire/i;, "TE;"
    if-nez v0, :cond_0

    .line 64
    new-instance v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;

    iget-object v4, p0, Lcom/squareup/wire/f;->s:Ljava/lang/Class;

    invoke-direct {v3, v2, v4}, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;-><init>(ILjava/lang/Class;)V

    throw v3

    .line 60
    .end local v0    # "constant":Lcom/squareup/wire/i;, "TE;"
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 66
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v0    # "constant":Lcom/squareup/wire/i;, "TE;"
    :cond_0
    return-object v0

    .line 60
    .end local v0    # "constant":Lcom/squareup/wire/i;, "TE;"
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    instance-of v0, p1, Lcom/squareup/wire/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/wire/f;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/squareup/wire/f;->s:Ljava/lang/Class;

    iget-object v1, p0, Lcom/squareup/wire/f;->s:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/squareup/wire/f;, "Lcom/squareup/wire/f<TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/f;->s:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
