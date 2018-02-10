.class public final Lokhttp3/internal/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/v;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lokhttp3/internal/connection/f;

.field private final c:Lokhttp3/internal/b/h;

.field private final d:Lokhttp3/j;

.field private final e:I

.field private final f:Lokhttp3/aa;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/h;Lokhttp3/j;ILokhttp3/aa;)V
    .locals 0
    .param p2, "streamAllocation"    # Lokhttp3/internal/connection/f;
    .param p3, "httpStream"    # Lokhttp3/internal/b/h;
    .param p4, "connection"    # Lokhttp3/j;
    .param p5, "index"    # I
    .param p6, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/v;",
            ">;",
            "Lokhttp3/internal/connection/f;",
            "Lokhttp3/internal/b/h;",
            "Lokhttp3/j;",
            "I",
            "Lokhttp3/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/v;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/internal/b/i;->a:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lokhttp3/internal/b/i;->d:Lokhttp3/j;

    .line 44
    iput-object p2, p0, Lokhttp3/internal/b/i;->b:Lokhttp3/internal/connection/f;

    .line 45
    iput-object p3, p0, Lokhttp3/internal/b/i;->c:Lokhttp3/internal/b/h;

    .line 46
    iput p5, p0, Lokhttp3/internal/b/i;->e:I

    .line 47
    iput-object p6, p0, Lokhttp3/internal/b/i;->f:Lokhttp3/aa;

    .line 48
    return-void
.end method

.method private a(Lokhttp3/u;)Z
    .locals 2
    .param p1, "url"    # Lokhttp3/u;

    .prologue
    .line 109
    invoke-virtual {p1}, Lokhttp3/u;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/b/i;->d:Lokhttp3/j;

    invoke-interface {v1}, Lokhttp3/j;->a()Lokhttp3/ae;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lokhttp3/u;->j()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/b/i;->d:Lokhttp3/j;

    invoke-interface {v1}, Lokhttp3/j;->a()Lokhttp3/ae;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lokhttp3/aa;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lokhttp3/internal/b/i;->f:Lokhttp3/aa;

    return-object v0
.end method

.method public a(Lokhttp3/aa;)Lokhttp3/ac;
    .locals 3
    .param p1, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lokhttp3/internal/b/i;->b:Lokhttp3/internal/connection/f;

    iget-object v1, p0, Lokhttp3/internal/b/i;->c:Lokhttp3/internal/b/h;

    iget-object v2, p0, Lokhttp3/internal/b/i;->d:Lokhttp3/j;

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/b/i;->a(Lokhttp3/aa;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/h;Lokhttp3/j;)Lokhttp3/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/aa;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/h;Lokhttp3/j;)Lokhttp3/ac;
    .locals 10
    .param p1, "request"    # Lokhttp3/aa;
    .param p2, "streamAllocation"    # Lokhttp3/internal/connection/f;
    .param p3, "httpStream"    # Lokhttp3/internal/b/h;
    .param p4, "connection"    # Lokhttp3/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 72
    iget v1, p0, Lokhttp3/internal/b/i;->e:I

    iget-object v2, p0, Lokhttp3/internal/b/i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 74
    :cond_0
    iget v1, p0, Lokhttp3/internal/b/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/b/i;->g:I

    .line 77
    iget-object v1, p0, Lokhttp3/internal/b/i;->c:Lokhttp3/internal/b/h;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/internal/b/i;->a(Lokhttp3/u;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/b/i;->a:Ljava/util/List;

    iget v4, p0, Lokhttp3/internal/b/i;->e:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must retain the same host and port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/b/i;->c:Lokhttp3/internal/b/h;

    if-eqz v1, :cond_2

    iget v1, p0, Lokhttp3/internal/b/i;->g:I

    if-le v1, v9, :cond_2

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/b/i;->a:Ljava/util/List;

    iget v4, p0, Lokhttp3/internal/b/i;->e:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must call proceed() exactly once"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_2
    new-instance v0, Lokhttp3/internal/b/i;

    iget-object v1, p0, Lokhttp3/internal/b/i;->a:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/b/i;->e:I

    add-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/b/i;-><init>(Ljava/util/List;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/h;Lokhttp3/j;ILokhttp3/aa;)V

    .line 91
    .local v0, "next":Lokhttp3/internal/b/i;
    iget-object v1, p0, Lokhttp3/internal/b/i;->a:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/b/i;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/v;

    .line 92
    .local v7, "interceptor":Lokhttp3/v;
    invoke-interface {v7, v0}, Lokhttp3/v;->a(Lokhttp3/v$a;)Lokhttp3/ac;

    move-result-object v8

    .line 95
    .local v8, "response":Lokhttp3/ac;
    if-eqz p3, :cond_3

    iget v1, p0, Lokhttp3/internal/b/i;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/b/i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, v0, Lokhttp3/internal/b/i;->g:I

    if-eq v1, v9, :cond_3

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must call proceed() exactly once"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_3
    if-nez v8, :cond_4

    .line 102
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_4
    return-object v8
.end method

.method public b()Lokhttp3/j;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lokhttp3/internal/b/i;->d:Lokhttp3/j;

    return-object v0
.end method

.method public c()Lokhttp3/internal/connection/f;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/b/i;->b:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public d()Lokhttp3/internal/b/h;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lokhttp3/internal/b/i;->c:Lokhttp3/internal/b/h;

    return-object v0
.end method
