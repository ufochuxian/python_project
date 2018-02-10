.class public final Lokhttp3/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ac$a;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/aa;

.field private final b:Lokhttp3/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lokhttp3/s;

.field private final f:Lokhttp3/t;

.field private final g:Lokhttp3/ad;

.field private final h:Lokhttp3/ac;

.field private final i:Lokhttp3/ac;

.field private final j:Lokhttp3/ac;

.field private final k:J

.field private final l:J

.field private volatile m:Lokhttp3/d;


# direct methods
.method private constructor <init>(Lokhttp3/ac$a;)V
    .locals 2
    .param p1, "builder"    # Lokhttp3/ac$a;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lokhttp3/ac$a;->a(Lokhttp3/ac$a;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->a:Lokhttp3/aa;

    .line 60
    invoke-static {p1}, Lokhttp3/ac$a;->b(Lokhttp3/ac$a;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->b:Lokhttp3/Protocol;

    .line 61
    invoke-static {p1}, Lokhttp3/ac$a;->c(Lokhttp3/ac$a;)I

    move-result v0

    iput v0, p0, Lokhttp3/ac;->c:I

    .line 62
    invoke-static {p1}, Lokhttp3/ac$a;->d(Lokhttp3/ac$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->d:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lokhttp3/ac$a;->e(Lokhttp3/ac$a;)Lokhttp3/s;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->e:Lokhttp3/s;

    .line 64
    invoke-static {p1}, Lokhttp3/ac$a;->f(Lokhttp3/ac$a;)Lokhttp3/t$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->f:Lokhttp3/t;

    .line 65
    invoke-static {p1}, Lokhttp3/ac$a;->g(Lokhttp3/ac$a;)Lokhttp3/ad;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->g:Lokhttp3/ad;

    .line 66
    invoke-static {p1}, Lokhttp3/ac$a;->h(Lokhttp3/ac$a;)Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->h:Lokhttp3/ac;

    .line 67
    invoke-static {p1}, Lokhttp3/ac$a;->i(Lokhttp3/ac$a;)Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->i:Lokhttp3/ac;

    .line 68
    invoke-static {p1}, Lokhttp3/ac$a;->j(Lokhttp3/ac$a;)Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac;->j:Lokhttp3/ac;

    .line 69
    invoke-static {p1}, Lokhttp3/ac$a;->k(Lokhttp3/ac$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ac;->k:J

    .line 70
    invoke-static {p1}, Lokhttp3/ac$a;->l(Lokhttp3/ac$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ac;->l:J

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/ac$a;Lokhttp3/ac$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/ac$a;
    .param p2, "x1"    # Lokhttp3/ac$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lokhttp3/ac;-><init>(Lokhttp3/ac$a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/ac;)Lokhttp3/aa;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->a:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/ac;)Lokhttp3/Protocol;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/ac;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget v0, p0, Lokhttp3/ac;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/ac;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/ac;)Lokhttp3/s;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->e:Lokhttp3/s;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/ac;)Lokhttp3/t;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->f:Lokhttp3/t;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/ac;)Lokhttp3/ad;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->g:Lokhttp3/ad;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/ac;)Lokhttp3/ac;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->h:Lokhttp3/ac;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/ac;)Lokhttp3/ac;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->i:Lokhttp3/ac;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/ac;)Lokhttp3/ac;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ac;->j:Lokhttp3/ac;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/ac;)J
    .locals 2
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/ac;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/ac;)J
    .locals 2
    .param p0, "x0"    # Lokhttp3/ac;

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/ac;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v1, p0, Lokhttp3/ac;->f:Lokhttp3/t;

    invoke-virtual {v1, p1}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/ac;->f:Lokhttp3/t;

    invoke-virtual {v0, p1}, Lokhttp3/t;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/aa;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/ac;->a:Lokhttp3/aa;

    return-object v0
.end method

.method public a(J)Lokhttp3/ad;
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v3, p0, Lokhttp3/ac;->g:Lokhttp3/ad;

    invoke-virtual {v3}, Lokhttp3/ad;->source()Lokio/e;

    move-result-object v2

    .line 152
    .local v2, "source":Lokio/e;
    invoke-interface {v2, p1, p2}, Lokio/e;->b(J)Z

    .line 153
    invoke-interface {v2}, Lokio/e;->b()Lokio/c;

    move-result-object v3

    invoke-virtual {v3}, Lokio/c;->C()Lokio/c;

    move-result-object v0

    .line 157
    .local v0, "copy":Lokio/c;
    invoke-virtual {v0}, Lokio/c;->a()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_0

    .line 158
    new-instance v1, Lokio/c;

    invoke-direct {v1}, Lokio/c;-><init>()V

    .line 159
    .local v1, "result":Lokio/c;
    invoke-virtual {v1, v0, p1, p2}, Lokio/c;->a(Lokio/c;J)V

    .line 160
    invoke-virtual {v0}, Lokio/c;->x()V

    .line 165
    :goto_0
    iget-object v3, p0, Lokhttp3/ac;->g:Lokhttp3/ad;

    invoke-virtual {v3}, Lokhttp3/ad;->contentType()Lokhttp3/w;

    move-result-object v3

    invoke-virtual {v1}, Lokio/c;->a()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lokhttp3/ad;->create(Lokhttp3/w;JLokio/e;)Lokhttp3/ad;

    move-result-object v3

    return-object v3

    .line 162
    .end local v1    # "result":Lokio/c;
    :cond_0
    move-object v1, v0

    .restart local v1    # "result":Lokio/c;
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lokhttp3/ac;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lokhttp3/ac;->c:I

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/ac;->g:Lokhttp3/ad;

    invoke-virtual {v0}, Lokhttp3/ad;->close()V

    .line 270
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lokhttp3/ac;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/ac;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/ac;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lokhttp3/s;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/ac;->e:Lokhttp3/s;

    return-object v0
.end method

.method public g()Lokhttp3/t;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/ac;->f:Lokhttp3/t;

    return-object v0
.end method

.method public h()Lokhttp3/ad;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lokhttp3/ac;->g:Lokhttp3/ad;

    return-object v0
.end method

.method public i()Lokhttp3/ac$a;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lokhttp3/ac$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/ac$a;-><init>(Lokhttp3/ac;Lokhttp3/ac$1;)V

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lokhttp3/ac;->c:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 188
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public k()Lokhttp3/ac;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lokhttp3/ac;->h:Lokhttp3/ac;

    return-object v0
.end method

.method public l()Lokhttp3/ac;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lokhttp3/ac;->i:Lokhttp3/ac;

    return-object v0
.end method

.method public m()Lokhttp3/ac;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lokhttp3/ac;->j:Lokhttp3/ac;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget v1, p0, Lokhttp3/ac;->c:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 231
    const-string v0, "WWW-Authenticate"

    .line 237
    .local v0, "responseField":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/internal/b/f;->a(Lokhttp3/t;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "responseField":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 232
    :cond_0
    iget v1, p0, Lokhttp3/ac;->c:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_1

    .line 233
    const-string v0, "Proxy-Authenticate"

    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public o()Lokhttp3/d;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lokhttp3/ac;->m:Lokhttp3/d;

    .line 246
    .local v0, "result":Lokhttp3/d;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lokhttp3/d;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lokhttp3/d;
    :cond_0
    iget-object v1, p0, Lokhttp3/ac;->f:Lokhttp3/t;

    invoke-static {v1}, Lokhttp3/d;->a(Lokhttp3/t;)Lokhttp3/d;

    move-result-object v0

    .end local v0    # "result":Lokhttp3/d;
    iput-object v0, p0, Lokhttp3/ac;->m:Lokhttp3/d;

    goto :goto_0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lokhttp3/ac;->k:J

    return-wide v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lokhttp3/ac;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ac;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/ac;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ac;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ac;->a:Lokhttp3/aa;

    .line 280
    invoke-virtual {v1}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method
