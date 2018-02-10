.class public final Lokhttp3/internal/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/b/c$f;,
        Lokhttp3/internal/b/c$c;,
        Lokhttp3/internal/b/c$e;,
        Lokhttp3/internal/b/c$a;,
        Lokhttp3/internal/b/c$b;,
        Lokhttp3/internal/b/c$d;
    }
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static final g:I = 0x5

.field private static final h:I = 0x6


# instance fields
.field private final i:Lokhttp3/y;

.field private final j:Lokhttp3/internal/connection/f;

.field private final k:Lokio/e;

.field private final l:Lokio/d;

.field private m:I


# direct methods
.method public constructor <init>(Lokhttp3/y;Lokhttp3/internal/connection/f;Lokio/e;Lokio/d;)V
    .locals 1
    .param p1, "client"    # Lokhttp3/y;
    .param p2, "streamAllocation"    # Lokhttp3/internal/connection/f;
    .param p3, "source"    # Lokio/e;
    .param p4, "sink"    # Lokio/d;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/b/c;->m:I

    .line 84
    iput-object p1, p0, Lokhttp3/internal/b/c;->i:Lokhttp3/y;

    .line 85
    iput-object p2, p0, Lokhttp3/internal/b/c;->j:Lokhttp3/internal/connection/f;

    .line 86
    iput-object p3, p0, Lokhttp3/internal/b/c;->k:Lokio/e;

    .line 87
    iput-object p4, p0, Lokhttp3/internal/b/c;->l:Lokio/d;

    .line 88
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/b/c;I)I
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/b/c;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lokhttp3/internal/b/c;->m:I

    return p1
.end method

.method static synthetic a(Lokhttp3/internal/b/c;)Lokio/d;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/b/c;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/b/c;->l:Lokio/d;

    return-object v0
.end method

.method static synthetic a(Lokhttp3/internal/b/c;Lokio/i;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/b/c;
    .param p1, "x1"    # Lokio/i;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lokhttp3/internal/b/c;->a(Lokio/i;)V

    return-void
.end method

.method private a(Lokio/i;)V
    .locals 2
    .param p1, "timeout"    # Lokio/i;

    .prologue
    .line 255
    invoke-virtual {p1}, Lokio/i;->a()Lokio/y;

    move-result-object v0

    .line 256
    .local v0, "oldDelegate":Lokio/y;
    sget-object v1, Lokio/y;->b:Lokio/y;

    invoke-virtual {p1, v1}, Lokio/i;->a(Lokio/y;)Lokio/i;

    .line 257
    invoke-virtual {v0}, Lokio/y;->f()Lokio/y;

    .line 258
    invoke-virtual {v0}, Lokio/y;->h_()Lokio/y;

    .line 259
    return-void
.end method

.method static synthetic b(Lokhttp3/internal/b/c;)Lokio/e;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/b/c;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/b/c;->k:Lokio/e;

    return-object v0
.end method

.method private b(Lokhttp3/ac;)Lokio/x;
    .locals 4
    .param p1, "response"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lokhttp3/internal/b/f;->d(Lokhttp3/ac;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/b/c;->b(J)Lokio/x;

    move-result-object v2

    .line 152
    :goto_0
    return-object v2

    .line 140
    :cond_0
    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p1, v3}, Lokhttp3/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {p0, v2}, Lokhttp3/internal/b/c;->a(Lokhttp3/u;)Lokio/x;

    move-result-object v2

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/b/f;->a(Lokhttp3/ac;)J

    move-result-wide v0

    .line 145
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/b/c;->b(J)Lokio/x;

    move-result-object v2

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/b/c;->h()Lokio/x;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic c(Lokhttp3/internal/b/c;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/b/c;

    .prologue
    .line 64
    iget v0, p0, Lokhttp3/internal/b/c;->m:I

    return v0
.end method

.method static synthetic d(Lokhttp3/internal/b/c;)Lokhttp3/internal/connection/f;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/b/c;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/b/c;->j:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/internal/b/c;)Lokhttp3/y;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/b/c;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/b/c;->i:Lokhttp3/y;

    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/ac;)Lokhttp3/ad;
    .locals 4
    .param p1, "response"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lokhttp3/internal/b/c;->b(Lokhttp3/ac;)Lokio/x;

    move-result-object v0

    .line 132
    .local v0, "source":Lokio/x;
    new-instance v1, Lokhttp3/internal/b/j;

    invoke-virtual {p1}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v2

    invoke-static {v0}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/b/j;-><init>(Lokhttp3/t;Lokio/e;)V

    return-object v1
.end method

.method public a(J)Lokio/w;
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 224
    iget v0, p0, Lokhttp3/internal/b/c;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/b/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/b/c;->m:I

    .line 226
    new-instance v0, Lokhttp3/internal/b/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lokhttp3/internal/b/c$d;-><init>(Lokhttp3/internal/b/c;JLokhttp3/internal/b/c$1;)V

    return-object v0
.end method

.method public a(Lokhttp3/aa;J)Lokio/w;
    .locals 2
    .param p1, "request"    # Lokhttp3/aa;
    .param p2, "contentLength"    # J

    .prologue
    .line 91
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lokhttp3/internal/b/c;->g()Lokio/w;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0, p2, p3}, Lokhttp3/internal/b/c;->a(J)Lokio/w;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lokhttp3/u;)Lokio/x;
    .locals 3
    .param p1, "url"    # Lokhttp3/u;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lokhttp3/internal/b/c;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/b/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/b/c;->m:I

    .line 238
    new-instance v0, Lokhttp3/internal/b/c$c;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/b/c$c;-><init>(Lokhttp3/internal/b/c;Lokhttp3/u;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lokhttp3/internal/b/c;->j:Lokhttp3/internal/connection/f;

    invoke-virtual {v1}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 107
    .local v0, "connection":Lokhttp3/internal/connection/c;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->e()V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Lokhttp3/aa;)V
    .locals 2
    .param p1, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lokhttp3/internal/b/c;->j:Lokhttp3/internal/connection/f;

    .line 122
    invoke-virtual {v1}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/c;->a()Lokhttp3/ae;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    .line 121
    invoke-static {p1, v1}, Lokhttp3/internal/b/k;->a(Lokhttp3/aa;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/aa;->c()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/b/c;->a(Lokhttp3/t;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public a(Lokhttp3/t;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lokhttp3/t;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget v2, p0, Lokhttp3/internal/b/c;->m:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/b/c;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/b/c;->l:Lokio/d;

    invoke-interface {v2, p2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lokhttp3/t;->a()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Lokhttp3/internal/b/c;->l:Lokio/d;

    invoke-virtual {p1, v0}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const-string v3, ": "

    .line 170
    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    .line 171
    invoke-virtual {p1, v0}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const-string v3, "\r\n"

    .line 172
    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/b/c;->l:Lokio/d;

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 175
    const/4 v2, 0x1

    iput v2, p0, Lokhttp3/internal/b/c;->m:I

    .line 176
    return-void
.end method

.method public b()Lokhttp3/ac$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lokhttp3/internal/b/c;->e()Lokhttp3/ac$a;

    move-result-object v0

    return-object v0
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
    .line 230
    iget v0, p0, Lokhttp3/internal/b/c;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/b/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/b/c;->m:I

    .line 232
    new-instance v0, Lokhttp3/internal/b/c$e;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/b/c$e;-><init>(Lokhttp3/internal/b/c;J)V

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lokhttp3/internal/b/c;->m:I

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
    .line 161
    iget-object v0, p0, Lokhttp3/internal/b/c;->l:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    .line 162
    return-void
.end method

.method public e()Lokhttp3/ac$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v4, p0, Lokhttp3/internal/b/c;->m:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lokhttp3/internal/b/c;->m:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 181
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lokhttp3/internal/b/c;->m:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_0
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/b/c;->k:Lokio/e;

    invoke-interface {v4}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/b/m;->a(Ljava/lang/String;)Lokhttp3/internal/b/m;

    move-result-object v3

    .line 188
    .local v3, "statusLine":Lokhttp3/internal/b/m;
    new-instance v4, Lokhttp3/ac$a;

    invoke-direct {v4}, Lokhttp3/ac$a;-><init>()V

    iget-object v5, v3, Lokhttp3/internal/b/m;->d:Lokhttp3/Protocol;

    .line 189
    invoke-virtual {v4, v5}, Lokhttp3/ac$a;->a(Lokhttp3/Protocol;)Lokhttp3/ac$a;

    move-result-object v4

    iget v5, v3, Lokhttp3/internal/b/m;->e:I

    .line 190
    invoke-virtual {v4, v5}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v4

    iget-object v5, v3, Lokhttp3/internal/b/m;->f:Ljava/lang/String;

    .line 191
    invoke-virtual {v4, v5}, Lokhttp3/ac$a;->a(Ljava/lang/String;)Lokhttp3/ac$a;

    move-result-object v4

    .line 192
    invoke-virtual {p0}, Lokhttp3/internal/b/c;->f()Lokhttp3/t;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/ac$a;->a(Lokhttp3/t;)Lokhttp3/ac$a;

    move-result-object v2

    .line 194
    .local v2, "responseBuilder":Lokhttp3/ac$a;
    iget v4, v3, Lokhttp3/internal/b/m;->e:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    .line 195
    const/4 v4, 0x4

    iput v4, p0, Lokhttp3/internal/b/c;->m:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v2

    .line 199
    .end local v2    # "responseBuilder":Lokhttp3/ac$a;
    .end local v3    # "statusLine":Lokhttp3/internal/b/m;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end of stream on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/b/c;->j:Lokhttp3/internal/connection/f;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public f()Lokhttp3/t;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    .line 211
    .local v0, "headers":Lokhttp3/t$a;
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/b/c;->k:Lokio/e;

    invoke-interface {v2}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/a;->a(Lokhttp3/t$a;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v2

    return-object v2
.end method

.method public g()Lokio/w;
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lokhttp3/internal/b/c;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/b/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/b/c;->m:I

    .line 220
    new-instance v0, Lokhttp3/internal/b/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/b/c$b;-><init>(Lokhttp3/internal/b/c;Lokhttp3/internal/b/c$1;)V

    return-object v0
.end method

.method public h()Lokio/x;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lokhttp3/internal/b/c;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/b/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/b/c;->j:Lokhttp3/internal/connection/f;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/b/c;->m:I

    .line 245
    iget-object v0, p0, Lokhttp3/internal/b/c;->j:Lokhttp3/internal/connection/f;

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 246
    new-instance v0, Lokhttp3/internal/b/c$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/b/c$f;-><init>(Lokhttp3/internal/b/c;Lokhttp3/internal/b/c$1;)V

    return-object v0
.end method
