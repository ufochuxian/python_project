.class public final Lokhttp3/internal/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/b/d$a;
    }
.end annotation


# static fields
.field private static final b:Lokio/ByteString;

.field private static final c:Lokio/ByteString;

.field private static final d:Lokio/ByteString;

.field private static final e:Lokio/ByteString;

.field private static final f:Lokio/ByteString;

.field private static final g:Lokio/ByteString;

.field private static final h:Lokio/ByteString;

.field private static final i:Lokio/ByteString;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final n:Lokhttp3/y;

.field private final o:Lokhttp3/internal/connection/f;

.field private final p:Lokhttp3/internal/framed/c;

.field private q:Lokhttp3/internal/framed/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->b:Lokio/ByteString;

    .line 56
    const-string v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->c:Lokio/ByteString;

    .line 57
    const-string v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->d:Lokio/ByteString;

    .line 58
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->e:Lokio/ByteString;

    .line 59
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->f:Lokio/ByteString;

    .line 60
    const-string v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->g:Lokio/ByteString;

    .line 61
    const-string v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->h:Lokio/ByteString;

    .line 62
    const-string v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->i:Lokio/ByteString;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/d;->b:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/d;->c:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/d;->d:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/d;->e:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/d;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/framed/e;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/framed/e;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/framed/e;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/e;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/e;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/e;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->j:Ljava/util/List;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/d;->b:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/d;->c:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/d;->d:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/d;->e:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/d;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->k:Ljava/util/List;

    .line 85
    const/16 v0, 0xe

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/d;->b:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/d;->c:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/d;->d:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/d;->e:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/d;->g:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/b/d;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/b/d;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/b/d;->i:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/e;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/e;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/e;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/framed/e;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/internal/framed/e;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lokhttp3/internal/framed/e;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->l:Ljava/util/List;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/d;->b:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/d;->c:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/d;->d:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/d;->e:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/d;->g:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/b/d;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/b/d;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/b/d;->i:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/d;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/y;Lokhttp3/internal/connection/f;Lokhttp3/internal/framed/c;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/y;
    .param p2, "streamAllocation"    # Lokhttp3/internal/connection/f;
    .param p3, "framedConnection"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lokhttp3/internal/b/d;->n:Lokhttp3/y;

    .line 118
    iput-object p2, p0, Lokhttp3/internal/b/d;->o:Lokhttp3/internal/connection/f;

    .line 119
    iput-object p3, p0, Lokhttp3/internal/b/d;->p:Lokhttp3/internal/framed/c;

    .line 120
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lokhttp3/ac$a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;)",
            "Lokhttp3/ac$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    const/4 v6, 0x0

    .line 215
    .local v6, "status":Ljava/lang/String;
    const-string v10, "HTTP/1.1"

    .line 216
    .local v10, "version":Ljava/lang/String;
    new-instance v1, Lokhttp3/t$a;

    invoke-direct {v1}, Lokhttp3/t$a;-><init>()V

    .line 217
    .local v1, "headersBuilder":Lokhttp3/t$a;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 218
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/internal/framed/e;

    iget-object v3, v11, Lokhttp3/internal/framed/e;->h:Lokio/ByteString;

    .line 220
    .local v3, "name":Lokio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/internal/framed/e;

    iget-object v11, v11, Lokhttp3/internal/framed/e;->i:Lokio/ByteString;

    invoke-virtual {v11}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "values":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 222
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 223
    .local v0, "end":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_0

    .line 224
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 226
    :cond_0
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "value":Ljava/lang/String;
    sget-object v11, Lokhttp3/internal/framed/e;->a:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    move-object v6, v8

    .line 234
    :cond_1
    :goto_2
    add-int/lit8 v5, v0, 0x1

    .line 235
    goto :goto_1

    .line 229
    :cond_2
    sget-object v11, Lokhttp3/internal/framed/e;->g:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 230
    move-object v10, v8

    goto :goto_2

    .line 231
    :cond_3
    sget-object v11, Lokhttp3/internal/b/d;->k:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 232
    sget-object v11, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12, v8}, Lokhttp3/internal/a;->a(Lokhttp3/t$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 217
    .end local v0    # "end":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "name":Lokio/ByteString;
    .end local v5    # "start":I
    .end local v9    # "values":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    new-instance v11, Ljava/net/ProtocolException;

    const-string v12, "Expected \':status\' header not present"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 239
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/b/m;->a(Ljava/lang/String;)Lokhttp3/internal/b/m;

    move-result-object v7

    .line 240
    .local v7, "statusLine":Lokhttp3/internal/b/m;
    new-instance v11, Lokhttp3/ac$a;

    invoke-direct {v11}, Lokhttp3/ac$a;-><init>()V

    sget-object v12, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    .line 241
    invoke-virtual {v11, v12}, Lokhttp3/ac$a;->a(Lokhttp3/Protocol;)Lokhttp3/ac$a;

    move-result-object v11

    iget v12, v7, Lokhttp3/internal/b/m;->e:I

    .line 242
    invoke-virtual {v11, v12}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v11

    iget-object v12, v7, Lokhttp3/internal/b/m;->f:Ljava/lang/String;

    .line 243
    invoke-virtual {v11, v12}, Lokhttp3/ac$a;->a(Ljava/lang/String;)Lokhttp3/ac$a;

    move-result-object v11

    .line 244
    invoke-virtual {v1}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/ac$a;->a(Lokhttp3/t;)Lokhttp3/ac$a;

    move-result-object v11

    .line 240
    return-object v11
.end method

.method static synthetic a(Lokhttp3/internal/b/d;)Lokhttp3/internal/connection/f;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/b/d;

    .prologue
    .line 54
    iget-object v0, p0, Lokhttp3/internal/b/d;->o:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public static b(Lokhttp3/aa;)Ljava/util/List;
    .locals 13
    .param p0, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/aa;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lokhttp3/aa;->c()Lokhttp3/t;

    move-result-object v1

    .line 156
    .local v1, "headers":Lokhttp3/t;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lokhttp3/t;->a()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    new-instance v9, Lokhttp3/internal/framed/e;

    sget-object v10, Lokhttp3/internal/framed/e;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v9, Lokhttp3/internal/framed/e;

    sget-object v10, Lokhttp3/internal/framed/e;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/b/k;->a(Lokhttp3/u;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v9, Lokhttp3/internal/framed/e;

    sget-object v10, Lokhttp3/internal/framed/e;->g:Lokio/ByteString;

    const-string v11, "HTTP/1.1"

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v9, Lokhttp3/internal/framed/e;

    sget-object v10, Lokhttp3/internal/framed/e;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lokhttp3/internal/c;->a(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v9, Lokhttp3/internal/framed/e;

    sget-object v10, Lokhttp3/internal/framed/e;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/u;->c()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 164
    .local v5, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lokhttp3/t;->a()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v2, v7, :cond_4

    .line 166
    invoke-virtual {v1, v2}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    .line 169
    .local v4, "name":Lokio/ByteString;
    sget-object v9, Lokhttp3/internal/b/d;->j:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v1, v2}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 174
    new-instance v9, Lokhttp3/internal/framed/e;

    invoke-direct {v9, v4, v8}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 180
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/internal/framed/e;

    iget-object v9, v9, Lokhttp3/internal/framed/e;->h:Lokio/ByteString;

    invoke-virtual {v9, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 181
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/internal/framed/e;

    iget-object v9, v9, Lokhttp3/internal/framed/e;->i:Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lokhttp3/internal/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v9, Lokhttp3/internal/framed/e;

    invoke-direct {v9, v4, v0}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 187
    .end local v3    # "j":I
    .end local v4    # "name":Lokio/ByteString;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-object v6
.end method

.method public static b(Ljava/util/List;)Lokhttp3/ac$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;)",
            "Lokhttp3/ac$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    const/4 v4, 0x0

    .line 251
    .local v4, "status":Ljava/lang/String;
    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    .line 252
    .local v0, "headersBuilder":Lokhttp3/t$a;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 253
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/framed/e;

    iget-object v2, v7, Lokhttp3/internal/framed/e;->h:Lokio/ByteString;

    .line 255
    .local v2, "name":Lokio/ByteString;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/framed/e;

    iget-object v7, v7, Lokhttp3/internal/framed/e;->i:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "value":Ljava/lang/String;
    sget-object v7, Lokhttp3/internal/framed/e;->a:Lokio/ByteString;

    invoke-virtual {v2, v7}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    move-object v4, v6

    .line 252
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_1
    sget-object v7, Lokhttp3/internal/b/d;->m:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 259
    sget-object v7, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v6}, Lokhttp3/internal/a;->a(Lokhttp3/t$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v2    # "name":Lokio/ByteString;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    new-instance v7, Ljava/net/ProtocolException;

    const-string v8, "Expected \':status\' header not present"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 264
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/b/m;->a(Ljava/lang/String;)Lokhttp3/internal/b/m;

    move-result-object v5

    .line 265
    .local v5, "statusLine":Lokhttp3/internal/b/m;
    new-instance v7, Lokhttp3/ac$a;

    invoke-direct {v7}, Lokhttp3/ac$a;-><init>()V

    sget-object v8, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 266
    invoke-virtual {v7, v8}, Lokhttp3/ac$a;->a(Lokhttp3/Protocol;)Lokhttp3/ac$a;

    move-result-object v7

    iget v8, v5, Lokhttp3/internal/b/m;->e:I

    .line 267
    invoke-virtual {v7, v8}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v7

    iget-object v8, v5, Lokhttp3/internal/b/m;->f:Ljava/lang/String;

    .line 268
    invoke-virtual {v7, v8}, Lokhttp3/ac$a;->a(Ljava/lang/String;)Lokhttp3/ac$a;

    move-result-object v7

    .line 269
    invoke-virtual {v0}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/ac$a;->a(Lokhttp3/t;)Lokhttp3/ac$a;

    move-result-object v7

    .line 265
    return-object v7
.end method

.method public static c(Lokhttp3/aa;)Ljava/util/List;
    .locals 9
    .param p0, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/aa;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lokhttp3/aa;->c()Lokhttp3/t;

    move-result-object v0

    .line 196
    .local v0, "headers":Lokhttp3/t;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/t;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    new-instance v5, Lokhttp3/internal/framed/e;

    sget-object v6, Lokhttp3/internal/framed/e;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v5, Lokhttp3/internal/framed/e;

    sget-object v6, Lokhttp3/internal/framed/e;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/b/k;->a(Lokhttp3/u;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v5, Lokhttp3/internal/framed/e;

    sget-object v6, Lokhttp3/internal/framed/e;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lokhttp3/internal/c;->a(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v5, Lokhttp3/internal/framed/e;

    sget-object v6, Lokhttp3/internal/framed/e;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/u;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lokhttp3/t;->a()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 204
    invoke-virtual {v0, v1}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    .line 205
    .local v2, "name":Lokio/ByteString;
    sget-object v5, Lokhttp3/internal/b/d;->l:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    new-instance v5, Lokhttp3/internal/framed/e;

    invoke-virtual {v0, v1}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "name":Lokio/ByteString;
    :cond_1
    return-object v3
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
    .line 273
    new-instance v0, Lokhttp3/internal/b/d$a;

    iget-object v1, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    invoke-virtual {v1}, Lokhttp3/internal/framed/d;->j()Lokio/x;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/b/d$a;-><init>(Lokhttp3/internal/b/d;Lokio/x;)V

    .line 274
    .local v0, "source":Lokio/x;
    new-instance v1, Lokhttp3/internal/b/j;

    invoke-virtual {p1}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v2

    invoke-static {v0}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/b/j;-><init>(Lokhttp3/t;Lokio/e;)V

    return-object v1
.end method

.method public a(Lokhttp3/aa;J)Lokio/w;
    .locals 1
    .param p1, "request"    # Lokhttp3/aa;
    .param p2, "contentLength"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    invoke-virtual {v0}, Lokhttp3/internal/framed/d;->k()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/d;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 279
    :cond_0
    return-void
.end method

.method public a(Lokhttp3/aa;)V
    .locals 7
    .param p1, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v3, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    if-eqz v3, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    .line 130
    .local v1, "permitsRequestBody":Z
    iget-object v3, p0, Lokhttp3/internal/b/d;->p:Lokhttp3/internal/framed/c;

    invoke-virtual {v3}, Lokhttp3/internal/framed/c;->a()Lokhttp3/Protocol;

    move-result-object v3

    sget-object v4, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_1

    .line 131
    invoke-static {p1}, Lokhttp3/internal/b/d;->c(Lokhttp3/aa;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    :goto_1
    const/4 v0, 0x1

    .line 134
    .local v0, "hasResponseBody":Z
    iget-object v3, p0, Lokhttp3/internal/b/d;->p:Lokhttp3/internal/framed/c;

    invoke-virtual {v3, v2, v1, v0}, Lokhttp3/internal/framed/c;->a(Ljava/util/List;ZZ)Lokhttp3/internal/framed/d;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    .line 135
    iget-object v3, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    invoke-virtual {v3}, Lokhttp3/internal/framed/d;->h()Lokio/y;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/b/d;->n:Lokhttp3/y;

    invoke-virtual {v4}, Lokhttp3/y;->b()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/y;->a(JLjava/util/concurrent/TimeUnit;)Lokio/y;

    .line 136
    iget-object v3, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    invoke-virtual {v3}, Lokhttp3/internal/framed/d;->i()Lokio/y;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/b/d;->n:Lokhttp3/y;

    invoke-virtual {v4}, Lokhttp3/y;->c()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/y;->a(JLjava/util/concurrent/TimeUnit;)Lokio/y;

    goto :goto_0

    .line 132
    .end local v0    # "hasResponseBody":Z
    .end local v2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/b/d;->b(Lokhttp3/aa;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method public b()Lokhttp3/ac$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/internal/b/d;->p:Lokhttp3/internal/framed/c;

    invoke-virtual {v0}, Lokhttp3/internal/framed/c;->a()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/framed/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/d;->b(Ljava/util/List;)Lokhttp3/ac$a;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    .line 146
    invoke-virtual {v0}, Lokhttp3/internal/framed/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/d;->a(Ljava/util/List;)Lokhttp3/ac$a;

    move-result-object v0

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
    iget-object v0, p0, Lokhttp3/internal/b/d;->q:Lokhttp3/internal/framed/d;

    invoke-virtual {v0}, Lokhttp3/internal/framed/d;->k()Lokio/w;

    move-result-object v0

    invoke-interface {v0}, Lokio/w;->close()V

    .line 141
    return-void
.end method
