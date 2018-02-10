.class public final Lcom/squareup/okhttp/internal/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/squareup/okhttp/internal/a/j$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/j$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/a/j;->e:Ljava/util/Comparator;

    .line 40
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/a/j;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/a/j;->b:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/a/j;->c:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/a/j;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static a(Lcom/squareup/okhttp/p;)J
    .locals 2
    .param p0, "headers"    # Lcom/squareup/okhttp/p;

    .prologue
    .line 70
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/squareup/okhttp/v;)J
    .locals 2
    .param p0, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->e()Lcom/squareup/okhttp/p;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/squareup/okhttp/x;)J
    .locals 2
    .param p0, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/x;Ljava/net/Proxy;)Lcom/squareup/okhttp/v;
    .locals 2
    .param p0, "authenticator"    # Lcom/squareup/okhttp/b;
    .param p1, "response"    # Lcom/squareup/okhttp/x;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->c()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    .line 261
    invoke-interface {p0, p2, p1}, Lcom/squareup/okhttp/b;->b(Ljava/net/Proxy;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/v;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/squareup/okhttp/b;->a(Ljava/net/Proxy;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/v;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    :goto_0
    return-object v3

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 126
    if-lez v0, :cond_1

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Lcom/squareup/okhttp/p;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "headers"    # Lcom/squareup/okhttp/p;
    .param p1, "valueForNullKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/p;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v4, Ljava/util/TreeMap;

    sget-object v7, Lcom/squareup/okhttp/internal/a/j;->e:Ljava/util/Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 90
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->a()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 91
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "value":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 96
    .local v3, "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v3    # "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    const/4 v7, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    return-object v7
.end method

.method public static a(Lcom/squareup/okhttp/v$a;Ljava/util/Map;)V
    .locals 4
    .param p0, "builder"    # Lcom/squareup/okhttp/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/v$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "key":Ljava/lang/String;
    const-string v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 116
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/v;)Z
    .locals 4
    .param p0, "cachedResponse"    # Lcom/squareup/okhttp/x;
    .param p1, "cachedRequest"    # Lcom/squareup/okhttp/p;
    .param p2, "newRequest"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 138
    invoke-static {p0}, Lcom/squareup/okhttp/internal/a/j;->d(Lcom/squareup/okhttp/x;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 141
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 74
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-wide v2

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static b(Lcom/squareup/okhttp/p;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "responseHeaders"    # Lcom/squareup/okhttp/p;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/p;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/h;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->a()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v6, v11, :cond_2

    .line 219
    invoke-virtual {p0, v6}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0, v6}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 224
    .local v2, "pos":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 225
    move v12, v2

    .line 226
    .local v12, "tokenStart":I
    const-string v1, " "

    invoke-static {v0, v2, v1}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 228
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "scheme":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;I)I

    move-result v2

    .line 235
    const/4 v1, 0x1

    const-string v3, "realm=\""

    const/4 v4, 0x0

    const-string v5, "realm=\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "realm=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 240
    move v8, v2

    .line 241
    .local v8, "realmStart":I
    const-string v1, "\""

    invoke-static {v0, v2, v1}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 242
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "realm":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 244
    const-string v1, ","

    invoke-static {v0, v2, v1}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    .line 246
    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;I)I

    move-result v2

    .line 247
    new-instance v1, Lcom/squareup/okhttp/h;

    invoke-direct {v1, v10, v7}, Lcom/squareup/okhttp/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "realmStart":I
    .end local v10    # "scheme":Ljava/lang/String;
    .end local v12    # "tokenStart":I
    :cond_2
    return-object v9
.end method

.method public static b(Lcom/squareup/okhttp/x;)Z
    .locals 2
    .param p0, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/squareup/okhttp/internal/a/j;->d(Lcom/squareup/okhttp/x;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/p;
    .locals 7
    .param p0, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/squareup/okhttp/internal/a/j;->d(Lcom/squareup/okhttp/x;)Ljava/util/Set;

    move-result-object v5

    .line 175
    .local v5, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/squareup/okhttp/p$a;

    invoke-direct {v6}, Lcom/squareup/okhttp/p$a;-><init>()V

    invoke-virtual {v6}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v6

    .line 189
    :goto_0
    return-object v6

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->k()Lcom/squareup/okhttp/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/v;->e()Lcom/squareup/okhttp/p;

    move-result-object v2

    .line 182
    .local v2, "requestHeaders":Lcom/squareup/okhttp/p;
    new-instance v3, Lcom/squareup/okhttp/p$a;

    invoke-direct {v3}, Lcom/squareup/okhttp/p$a;-><init>()V

    .line 183
    .local v3, "result":Lcom/squareup/okhttp/p$a;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->a()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 184
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 183
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v6

    goto :goto_0
.end method

.method private static d(Lcom/squareup/okhttp/x;)Ljava/util/Set;
    .locals 10
    .param p0, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/x;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 154
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v0

    .line 155
    .local v0, "headers":Lcom/squareup/okhttp/p;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->a()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 156
    const-string v6, "Vary"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    new-instance v2, Ljava/util/TreeSet;

    .end local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 162
    .restart local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v5, v7, v6

    .line 163
    .local v5, "varyField":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 166
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "varyField":Ljava/lang/String;
    :cond_3
    return-object v2
.end method
