.class abstract Lorg/jsoup/helper/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/jsoup/Connection$a;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jsoup/Connection$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/net/URL;

.field b:Lorg/jsoup/Connection$Method;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/b$a;->c:Ljava/util/Map;

    .line 209
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/b$a;->d:Ljava/util/Map;

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/b$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/helper/b$1;

    .prologue
    .line 201
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    invoke-direct {p0}, Lorg/jsoup/helper/b$a;-><init>()V

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 263
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v2, "Header name must not be null"

    invoke-static {p1, v2}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lorg/jsoup/helper/b$a;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 267
    iget-object v2, p0, Lorg/jsoup/helper/b$a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 268
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 269
    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$a;->h(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 270
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 273
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private h(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "lc":Ljava/lang/String;
    iget-object v3, p0, Lorg/jsoup/helper/b$a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Header name must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/URL;
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->a:Ljava/net/URL;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "Header value must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$a;->c(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 241
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-object p0
.end method

.method public a(Ljava/net/URL;)Lorg/jsoup/Connection$a;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "URL must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lorg/jsoup/helper/b$a;->a:Ljava/net/URL;

    .line 219
    return-object p0
.end method

.method public a(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;
    .locals 1
    .param p1, "method"    # Lorg/jsoup/Connection$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/Connection$Method;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Method must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lorg/jsoup/helper/b$a;->b:Lorg/jsoup/Connection$Method;

    .line 229
    return-object p0
.end method

.method public b()Lorg/jsoup/Connection$Method;
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->b:Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "Cookie value must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-object p0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v1, "Header name must not be empty"

    invoke-static {p1, v1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$a;->h(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 253
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lorg/jsoup/helper/b$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Cookie name must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 298
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Cookie name must not be empty"

    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lorg/jsoup/helper/b$a;, "Lorg/jsoup/helper/b$a<TT;>;"
    const-string v0, "Cookie name must not be empty"

    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lorg/jsoup/helper/b$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-object p0
.end method
