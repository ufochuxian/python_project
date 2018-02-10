.class public final Lcom/squareup/okhttp/internal/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/q;


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
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
.field private final d:Lcom/squareup/okhttp/internal/a/g;

.field private final e:Lcom/squareup/okhttp/internal/spdy/m;

.field private f:Lcom/squareup/okhttp/internal/spdy/n;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/a/o;->b:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    .line 64
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    .line 65
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    .line 66
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    .line 67
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/a/o;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/a/g;Lcom/squareup/okhttp/internal/spdy/m;)V
    .locals 0
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/a/g;
    .param p2, "spdyConnection"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/o;->d:Lcom/squareup/okhttp/internal/a/g;

    .line 75
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/o;->e:Lcom/squareup/okhttp/internal/spdy/m;

    .line 76
    return-void
.end method

.method public static a(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/x$a;
    .locals 13
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;",
            "Lcom/squareup/okhttp/Protocol;",
            ")",
            "Lcom/squareup/okhttp/x$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    const/4 v6, 0x0

    .line 174
    .local v6, "status":Ljava/lang/String;
    const-string v10, "HTTP/1.1"

    .line 176
    .local v10, "version":Ljava/lang/String;
    new-instance v1, Lcom/squareup/okhttp/p$a;

    invoke-direct {v1}, Lcom/squareup/okhttp/p$a;-><init>()V

    .line 177
    .local v1, "headersBuilder":Lcom/squareup/okhttp/p$a;
    sget-object v11, Lcom/squareup/okhttp/internal/a/j;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/squareup/okhttp/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 178
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 179
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/internal/spdy/c;

    iget-object v3, v11, Lcom/squareup/okhttp/internal/spdy/c;->h:Lokio/ByteString;

    .line 180
    .local v3, "name":Lokio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/internal/spdy/c;

    iget-object v11, v11, Lcom/squareup/okhttp/internal/spdy/c;->i:Lokio/ByteString;

    invoke-virtual {v11}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "values":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 182
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 183
    .local v0, "end":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_0

    .line 184
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    :cond_0
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "value":Ljava/lang/String;
    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->a:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 188
    move-object v6, v8

    .line 194
    :cond_1
    :goto_2
    add-int/lit8 v5, v0, 0x1

    .line 195
    goto :goto_1

    .line 189
    :cond_2
    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->g:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 190
    move-object v10, v8

    goto :goto_2

    .line 191
    :cond_3
    invoke-static {p1, v3}, Lcom/squareup/okhttp/internal/a/o;->a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 192
    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v8}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    goto :goto_2

    .line 178
    .end local v0    # "end":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "name":Lokio/ByteString;
    .end local v5    # "start":I
    .end local v9    # "values":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    new-instance v11, Ljava/net/ProtocolException;

    const-string v12, "Expected \':status\' header not present"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 199
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

    invoke-static {v11}, Lcom/squareup/okhttp/internal/a/p;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v7

    .line 200
    .local v7, "statusLine":Lcom/squareup/okhttp/internal/a/p;
    new-instance v11, Lcom/squareup/okhttp/x$a;

    invoke-direct {v11}, Lcom/squareup/okhttp/x$a;-><init>()V

    .line 201
    invoke-virtual {v11, p1}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/x$a;

    move-result-object v11

    iget v12, v7, Lcom/squareup/okhttp/internal/a/p;->e:I

    .line 202
    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/x$a;->a(I)Lcom/squareup/okhttp/x$a;

    move-result-object v11

    iget-object v12, v7, Lcom/squareup/okhttp/internal/a/p;->f:Ljava/lang/String;

    .line 203
    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/x$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    move-result-object v11

    .line 204
    invoke-virtual {v1}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/x$a;

    move-result-object v11

    return-object v11
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 167
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

.method public static a(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "request"    # Lcom/squareup/okhttp/v;
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/v;",
            "Lcom/squareup/okhttp/Protocol;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->e()Lcom/squareup/okhttp/p;

    move-result-object v1

    .line 115
    .local v1, "headers":Lcom/squareup/okhttp/p;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->a()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v12

    invoke-static {v12}, Lcom/squareup/okhttp/internal/a/l;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v10

    invoke-static {v10}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "host":Ljava/lang/String;
    sget-object v10, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v10, p1, :cond_1

    .line 120
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->g:Lokio/ByteString;

    invoke-direct {v10, v11, p2}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->f:Lokio/ByteString;

    invoke-direct {v10, v11, v2}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    .local v6, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->a()I

    move-result v8

    .local v8, "size":I
    :goto_1
    if-ge v3, v8, :cond_6

    .line 132
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    .line 133
    .local v5, "name":Lokio/ByteString;
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "value":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/squareup/okhttp/internal/a/o;->a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 130
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v3    # "i":I
    .end local v5    # "name":Lokio/ByteString;
    .end local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .end local v8    # "size":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v10, p1, :cond_2

    .line 123
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    sget-object v11, Lcom/squareup/okhttp/internal/spdy/c;->e:Lokio/ByteString;

    invoke-direct {v10, v11, v2}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 139
    .restart local v3    # "i":I
    .restart local v5    # "name":Lokio/ByteString;
    .restart local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .restart local v8    # "size":I
    .restart local v9    # "value":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/squareup/okhttp/internal/spdy/c;->b:Lokio/ByteString;

    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/c;->c:Lokio/ByteString;

    .line 140
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/c;->d:Lokio/ByteString;

    .line 141
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/c;->e:Lokio/ByteString;

    .line 142
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/c;->f:Lokio/ByteString;

    .line 143
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/c;->g:Lokio/ByteString;

    .line 144
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 149
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 150
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    invoke-direct {v10, v5, v9}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 156
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/okhttp/internal/spdy/c;

    iget-object v10, v10, Lcom/squareup/okhttp/internal/spdy/c;->h:Lokio/ByteString;

    invoke-virtual {v10, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 157
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/okhttp/internal/spdy/c;

    iget-object v10, v10, Lcom/squareup/okhttp/internal/spdy/c;->i:Lokio/ByteString;

    invoke-virtual {v10}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/squareup/okhttp/internal/a/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v10, Lcom/squareup/okhttp/internal/spdy/c;

    invoke-direct {v10, v5, v0}, Lcom/squareup/okhttp/internal/spdy/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 155
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 163
    .end local v4    # "j":I
    .end local v5    # "name":Lokio/ByteString;
    .end local v9    # "value":Ljava/lang/String;
    :cond_6
    return-object v7
.end method

.method private static a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z
    .locals 1
    .param p0, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .param p1, "name"    # Lokio/ByteString;

    .prologue
    .line 224
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    .line 225
    sget-object v0, Lcom/squareup/okhttp/internal/a/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_1

    .line 227
    sget-object v0, Lcom/squareup/okhttp/internal/a/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/y;
    .locals 3
    .param p1, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/squareup/okhttp/internal/a/k;

    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/n;->j()Lokio/x;

    move-result-object v2

    invoke-static {v2}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/k;-><init>(Lcom/squareup/okhttp/p;Lokio/e;)V

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/v;J)Lokio/w;
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->k()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->k()Lokio/w;

    move-result-object v0

    invoke-interface {v0}, Lokio/w;->close()V

    .line 101
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/a/g;)V
    .locals 2
    .param p1, "engine"    # Lcom/squareup/okhttp/internal/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/n;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 216
    :cond_0
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/a/m;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/squareup/okhttp/internal/a/m;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->k()Lokio/w;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/a/m;->a(Lokio/w;)V

    .line 97
    return-void
.end method

.method public a(Lcom/squareup/okhttp/v;)V
    .locals 7
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    if-eqz v3, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/o;->d:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/g;->b()V

    .line 86
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/o;->d:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/g;->c()Z

    move-result v1

    .line 87
    .local v1, "permitsRequestBody":Z
    const/4 v0, 0x1

    .line 88
    .local v0, "hasResponseBody":Z
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/o;->d:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/g;->i()Lcom/squareup/okhttp/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/i;->m()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a/l;->a(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/o;->e:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/o;->e:Lcom/squareup/okhttp/internal/spdy/m;

    .line 90
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/m;->a()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/squareup/okhttp/internal/a/o;->a(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 89
    invoke-virtual {v3, v4, v1, v0}, Lcom/squareup/okhttp/internal/spdy/m;->a(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/n;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    .line 92
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/n;->h()Lokio/y;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/o;->d:Lcom/squareup/okhttp/internal/a/g;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v4}, Lcom/squareup/okhttp/t;->b()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/y;->a(JLjava/util/concurrent/TimeUnit;)Lokio/y;

    goto :goto_0
.end method

.method public b()Lcom/squareup/okhttp/x$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/o;->f:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/o;->e:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/m;->a()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/a/o;->a(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/x$a;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method
