.class public Lorg/jsoup/helper/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/b$1;,
        Lorg/jsoup/helper/b$b;,
        Lorg/jsoup/helper/b$d;,
        Lorg/jsoup/helper/b$c;,
        Lorg/jsoup/helper/b$a;
    }
.end annotation


# instance fields
.field private a:Lorg/jsoup/Connection$c;

.field private b:Lorg/jsoup/Connection$d;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/jsoup/helper/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jsoup/helper/b$c;-><init>(Lorg/jsoup/helper/b$1;)V

    iput-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    .line 48
    new-instance v0, Lorg/jsoup/helper/b$d;

    invoke-direct {v0}, Lorg/jsoup/helper/b$d;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$d;

    .line 49
    return-void
.end method

.method public static b(Ljava/net/URL;)Lorg/jsoup/Connection;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 32
    new-instance v0, Lorg/jsoup/helper/b;

    invoke-direct {v0}, Lorg/jsoup/helper/b;-><init>()V

    .line 33
    .local v0, "con":Lorg/jsoup/Connection;
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->a(Ljava/net/URL;)Lorg/jsoup/Connection;

    .line 34
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lorg/jsoup/helper/b;

    invoke-direct {v0}, Lorg/jsoup/helper/b;-><init>()V

    .line 27
    .local v0, "con":Lorg/jsoup/Connection;
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->a(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 28
    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lorg/jsoup/helper/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->a(I)Lorg/jsoup/Connection$c;

    .line 74
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v1, "Must supply a valid URL"

    invoke-static {p1, v1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    new-instance v2, Ljava/net/URL;

    invoke-static {p1}, Lorg/jsoup/helper/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/jsoup/Connection$c;->a(Ljava/net/URL;)Lorg/jsoup/Connection$a;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-static {p1, p2}, Lorg/jsoup/helper/b$b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/b$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$b;)Lorg/jsoup/Connection$c;

    .line 110
    return-object p0
.end method

.method public a(Ljava/net/URL;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->a(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    .line 53
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lorg/jsoup/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/Connection$b;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/Connection$b;>;"
    const-string v2, "Data collection must not be null"

    invoke-static {p1, v2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$b;

    .line 137
    .local v0, "entry":Lorg/jsoup/Connection$b;
    iget-object v2, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v2, v0}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$b;)Lorg/jsoup/Connection$c;

    goto :goto_0

    .line 139
    .end local v0    # "entry":Lorg/jsoup/Connection$b;
    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Data map must not be null"

    invoke-static {p1, v2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jsoup/helper/b$b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/b$b;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$b;)Lorg/jsoup/Connection$c;

    goto :goto_0

    .line 118
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public a(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "method"    # Lorg/jsoup/Connection$Method;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 95
    return-object p0
.end method

.method public a(Lorg/jsoup/Connection$c;)Lorg/jsoup/Connection;
    .locals 0
    .param p1, "request"    # Lorg/jsoup/Connection$c;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    .line 188
    return-object p0
.end method

.method public a(Lorg/jsoup/Connection$d;)Lorg/jsoup/Connection;
    .locals 0
    .param p1, "response"    # Lorg/jsoup/Connection$d;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$d;

    .line 197
    return-object p0
.end method

.method public a(Lorg/jsoup/b/f;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "parser"    # Lorg/jsoup/b/f;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/b/f;)Lorg/jsoup/Connection$c;

    .line 162
    return-object p0
.end method

.method public a(Z)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->a(Z)Lorg/jsoup/Connection$c;

    .line 84
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 5
    .param p1, "keyvals"    # [Ljava/lang/String;

    .prologue
    .line 122
    const-string v3, "Data key value pairs must not be null"

    invoke-static {p1, v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Must supply an even number of key value pairs"

    invoke-static {v3, v4}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 125
    aget-object v1, p1, v0

    .line 126
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 127
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Data key must not be empty"

    invoke-static {v1, v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "Data value must not be null"

    invoke-static {v2, v3}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-static {v1, v2}, Lorg/jsoup/helper/b$b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/b$b;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$b;)Lorg/jsoup/Connection$c;

    .line 124
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 123
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 131
    .restart local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public a()Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-interface {v0, v1}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 167
    invoke-virtual {p0}, Lorg/jsoup/helper/b;->c()Lorg/jsoup/Connection$d;

    .line 168
    iget-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$d;

    invoke-interface {v0}, Lorg/jsoup/Connection$d;->i()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "bytes"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->b(I)Lorg/jsoup/Connection$c;

    .line 79
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "User agent must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p1}, Lorg/jsoup/Connection$c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 69
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1, p2}, Lorg/jsoup/Connection$c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 144
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Cookie map must not be null"

    invoke-static {p1, v2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Lorg/jsoup/Connection$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    .line 157
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public b(Z)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "ignoreHttpErrors"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->b(Z)Lorg/jsoup/Connection$c;

    .line 100
    return-object p0
.end method

.method public b()Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    sget-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    invoke-interface {v0, v1}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 173
    invoke-virtual {p0}, Lorg/jsoup/helper/b;->c()Lorg/jsoup/Connection$d;

    .line 174
    iget-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$d;

    invoke-interface {v0}, Lorg/jsoup/Connection$d;->i()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/jsoup/Connection$d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-static {v0}, Lorg/jsoup/helper/b$d;->a(Lorg/jsoup/Connection$c;)Lorg/jsoup/helper/b$d;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$d;

    .line 179
    iget-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$d;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 2
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "Referrer must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    const-string v1, "Referer"

    invoke-interface {v0, v1, p1}, Lorg/jsoup/Connection$c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 90
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1, p2}, Lorg/jsoup/Connection$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 149
    return-object p0
.end method

.method public c(Z)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "ignoreContentType"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$c;->c(Z)Lorg/jsoup/Connection$c;

    .line 105
    return-object p0
.end method

.method public d()Lorg/jsoup/Connection$c;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$c;

    return-object v0
.end method

.method public e()Lorg/jsoup/Connection$d;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$d;

    return-object v0
.end method
