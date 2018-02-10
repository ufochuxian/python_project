.class public final Lcom/squareup/okhttp/internal/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/a/e$f;,
        Lcom/squareup/okhttp/internal/a/e$c;,
        Lcom/squareup/okhttp/internal/a/e$e;,
        Lcom/squareup/okhttp/internal/a/e$a;,
        Lcom/squareup/okhttp/internal/a/e$b;,
        Lcom/squareup/okhttp/internal/a/e$d;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static final g:I = 0x6

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2


# instance fields
.field private final k:Lcom/squareup/okhttp/j;

.field private final l:Lcom/squareup/okhttp/i;

.field private final m:Ljava/net/Socket;

.field private final n:Lokio/e;

.field private final o:Lokio/d;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;Ljava/net/Socket;)V
    .locals 1
    .param p1, "pool"    # Lcom/squareup/okhttp/j;
    .param p2, "connection"    # Lcom/squareup/okhttp/i;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 82
    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->q:I

    .line 86
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/e;->k:Lcom/squareup/okhttp/j;

    .line 87
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/e;->l:Lcom/squareup/okhttp/i;

    .line 88
    iput-object p3, p0, Lcom/squareup/okhttp/internal/a/e;->m:Ljava/net/Socket;

    .line 89
    invoke-static {p3}, Lokio/o;->b(Ljava/net/Socket;)Lokio/x;

    move-result-object v0

    invoke-static {v0}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->n:Lokio/e;

    .line 90
    invoke-static {p3}, Lokio/o;->a(Ljava/net/Socket;)Lokio/w;

    move-result-object v0

    invoke-static {v0}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a/e;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    return p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a/e;)Lokio/d;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/a/e;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/squareup/okhttp/internal/a/e;->q:I

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/a/e;)Lokio/e;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->n:Lokio/e;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/a/e;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;

    .prologue
    .line 62
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/a/e;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;

    .prologue
    .line 62
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->q:I

    return v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/a/e;)Lcom/squareup/okhttp/j;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->k:Lcom/squareup/okhttp/j;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/a/e;)Lcom/squareup/okhttp/i;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/e;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->l:Lcom/squareup/okhttp/i;

    return-object v0
.end method


# virtual methods
.method public a(J)Lokio/w;
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 231
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 233
    new-instance v0, Lcom/squareup/okhttp/internal/a/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/a/e$d;-><init>(Lcom/squareup/okhttp/internal/a/e;JLcom/squareup/okhttp/internal/a/e$1;)V

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/internal/a/g;)Lokio/x;
    .locals 3
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 251
    new-instance v0, Lcom/squareup/okhttp/internal/a/e$c;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/a/e$c;-><init>(Lcom/squareup/okhttp/internal/a/e;Lcom/squareup/okhttp/internal/a/g;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->q:I

    .line 110
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->q:I

    .line 112
    sget-object v0, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/e;->k:Lcom/squareup/okhttp/j;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/e;->l:Lcom/squareup/okhttp/i;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;)V

    .line 114
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 4
    .param p1, "readTimeoutMillis"    # I
    .param p2, "writeTimeoutMillis"    # I

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->n:Lokio/e;

    invoke-interface {v0}, Lokio/e;->timeout()Lokio/y;

    move-result-object v0

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/y;->a(JLjava/util/concurrent/TimeUnit;)Lokio/y;

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    invoke-interface {v0}, Lokio/d;->timeout()Lokio/y;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/y;->a(JLjava/util/concurrent/TimeUnit;)Lokio/y;

    .line 100
    :cond_1
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/a/m;)V
    .locals 3
    .param p1, "requestBody"    # Lcom/squareup/okhttp/internal/a/m;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 239
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/a/m;->a(Lokio/w;)V

    .line 240
    return-void
.end method

.method public a(Lcom/squareup/okhttp/p$a;)V
    .locals 2
    .param p1, "builder"    # Lcom/squareup/okhttp/p$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/e;->n:Lokio/e;

    invoke-interface {v1}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/p$a;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method public a(Lcom/squareup/okhttp/p;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lcom/squareup/okhttp/p;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    invoke-interface {v2, p2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->a()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 173
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const-string v3, ": "

    .line 174
    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    .line 175
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const-string v3, "\r\n"

    .line 176
    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 179
    const/4 v2, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 180
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/e;->l:Lcom/squareup/okhttp/i;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/i;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public b(J)Lokio/x;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 245
    new-instance v0, Lcom/squareup/okhttp/internal/a/e$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/a/e$e;-><init>(Lcom/squareup/okhttp/internal/a/e;J)V

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->q:I

    .line 124
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->l:Lcom/squareup/okhttp/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/i;->e()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 128
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->o:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    .line 141
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/e;->n:Lokio/e;

    invoke-interface {v0}, Lokio/e;->b()Lokio/c;

    move-result-object v0

    invoke-virtual {v0}, Lokio/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 151
    :try_start_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/e;->m:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 153
    .local v2, "readTimeout":I
    :try_start_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/e;->m:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 154
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/e;->n:Lokio/e;

    invoke-interface {v5}, Lokio/e;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    :try_start_2
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/e;->m:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 164
    .end local v2    # "readTimeout":I
    :goto_0
    return v3

    .line 159
    .restart local v2    # "readTimeout":I
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/e;->m:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/a/e;->m:Ljava/net/Socket;

    invoke-virtual {v6, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v5
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .end local v2    # "readTimeout":I
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/net/SocketTimeoutException;
    move v3, v4

    .line 162
    goto :goto_0

    .line 163
    .end local v1    # "ignored":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public g()Lcom/squareup/okhttp/x$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget v5, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 185
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/e;->n:Lokio/e;

    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/p;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v4

    .line 192
    .local v4, "statusLine":Lcom/squareup/okhttp/internal/a/p;
    new-instance v5, Lcom/squareup/okhttp/x$a;

    invoke-direct {v5}, Lcom/squareup/okhttp/x$a;-><init>()V

    iget-object v6, v4, Lcom/squareup/okhttp/internal/a/p;->d:Lcom/squareup/okhttp/Protocol;

    .line 193
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/x$a;

    move-result-object v5

    iget v6, v4, Lcom/squareup/okhttp/internal/a/p;->e:I

    .line 194
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/x$a;->a(I)Lcom/squareup/okhttp/x$a;

    move-result-object v5

    iget-object v6, v4, Lcom/squareup/okhttp/internal/a/p;->f:Ljava/lang/String;

    .line 195
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/x$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    .line 197
    .local v3, "responseBuilder":Lcom/squareup/okhttp/x$a;
    new-instance v2, Lcom/squareup/okhttp/p$a;

    invoke-direct {v2}, Lcom/squareup/okhttp/p$a;-><init>()V

    .line 198
    .local v2, "headersBuilder":Lcom/squareup/okhttp/p$a;
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/a/e;->a(Lcom/squareup/okhttp/p$a;)V

    .line 199
    sget-object v5, Lcom/squareup/okhttp/internal/a/j;->d:Ljava/lang/String;

    iget-object v6, v4, Lcom/squareup/okhttp/internal/a/p;->d:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v6}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 200
    invoke-virtual {v2}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/x$a;

    .line 202
    iget v5, v4, Lcom/squareup/okhttp/internal/a/p;->e:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    .line 203
    const/4 v5, 0x4

    iput v5, p0, Lcom/squareup/okhttp/internal/a/e;->p:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-object v3

    .line 207
    .end local v2    # "headersBuilder":Lcom/squareup/okhttp/p$a;
    .end local v3    # "responseBuilder":Lcom/squareup/okhttp/x$a;
    .end local v4    # "statusLine":Lcom/squareup/okhttp/internal/a/p;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected end of stream on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/a/e;->l:Lcom/squareup/okhttp/i;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (recycle count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/e;->l:Lcom/squareup/okhttp/i;

    .line 210
    invoke-virtual {v6, v7}, Lcom/squareup/okhttp/internal/c;->b(Lcom/squareup/okhttp/i;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    throw v1
.end method

.method public h()Lokio/w;
    .locals 3

    .prologue
    .line 225
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 227
    new-instance v0, Lcom/squareup/okhttp/internal/a/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/a/e$b;-><init>(Lcom/squareup/okhttp/internal/a/e;Lcom/squareup/okhttp/internal/a/e$1;)V

    return-object v0
.end method

.method public i()Lokio/x;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/a/e;->p:I

    .line 257
    new-instance v0, Lcom/squareup/okhttp/internal/a/e$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/a/e$f;-><init>(Lcom/squareup/okhttp/internal/a/e;Lcom/squareup/okhttp/internal/a/e$1;)V

    return-object v0
.end method
