.class final Lcom/youzan/androidsdk/loader/http/f;
.super Lcom/youzan/androidsdk/loader/http/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youzan/androidsdk/loader/http/f$a;
    }
.end annotation


# static fields
.field private static final a:Lokhttp3/y;


# instance fields
.field private final b:Lokhttp3/aa$a;

.field private c:Lokhttp3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 37
    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/y$a;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 39
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/y$a;->c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;

    move-result-object v0

    const-wide/16 v2, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/y$a;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lokhttp3/y$a;->c()Lokhttp3/y;

    move-result-object v0

    sput-object v0, Lcom/youzan/androidsdk/loader/http/f;->a:Lokhttp3/y;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/youzan/androidsdk/loader/http/e;-><init>()V

    .line 45
    new-instance v0, Lokhttp3/aa$a;

    invoke-direct {v0}, Lokhttp3/aa$a;-><init>()V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/f;->b:Lokhttp3/aa$a;

    .line 115
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f;->c:Lokhttp3/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f;->c:Lokhttp3/e;

    invoke-interface {v0}, Lokhttp3/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f;->c:Lokhttp3/e;

    invoke-interface {v0}, Lokhttp3/e;->c()V

    .line 113
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Class;Lcom/youzan/androidsdk/loader/http/b;Landroid/content/Context;Z)V
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p2    # Lcom/youzan/androidsdk/loader/http/b;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4, "onUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MODE",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TMODE",
            "L;",
            ">;",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TMODEL;>;"
    .local p2, "query":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    sget-object v0, Lcom/youzan/androidsdk/loader/http/f;->a:Lokhttp3/y;

    iget-object v1, p0, Lcom/youzan/androidsdk/loader/http/f;->b:Lokhttp3/aa$a;

    invoke-virtual {v1}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/y;->a(Lokhttp3/aa;)Lokhttp3/e;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/f;->c:Lokhttp3/e;

    .line 105
    iget-object v6, p0, Lcom/youzan/androidsdk/loader/http/f;->c:Lokhttp3/e;

    new-instance v0, Lcom/youzan/androidsdk/loader/http/f$a;

    move-object v1, p3

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/youzan/androidsdk/loader/http/f$a;-><init>(Landroid/content/Context;Ljava/lang/Class;ZLcom/youzan/androidsdk/loader/http/b;Lcom/youzan/androidsdk/loader/http/interfaces/c;)V

    invoke-interface {v6, v0}, Lokhttp3/e;->a(Lokhttp3/f;)V

    .line 106
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/f;->b:Lokhttp3/aa$a;

    invoke-virtual {v0, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    .line 87
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 92
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/youzan/androidsdk/loader/http/f;->b:Lokhttp3/aa$a;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, ""

    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v1, v2}, Lokhttp3/aa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    goto :goto_0

    .line 100
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local p2, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 51
    new-instance v0, Lokhttp3/x$a;

    invoke-direct {v0}, Lokhttp3/x$a;-><init>()V

    .line 52
    .local v0, "builder":Lokhttp3/x$a;
    sget-object v6, Lokhttp3/x;->e:Lokhttp3/w;

    invoke-virtual {v0, v6}, Lokhttp3/x$a;->a(Lokhttp3/w;)Lokhttp3/x$a;

    .line 54
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 56
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 57
    .local v5, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 58
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, ""

    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4, v5}, Lokhttp3/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/x$a;

    goto :goto_0

    .line 62
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 65
    .local v3, "file":Ljava/io/File;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_3

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/octet-stream"

    invoke-static {v8}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v8

    invoke-static {v8, v3}, Lokhttp3/ab;->create(Lokhttp3/w;Ljava/io/File;)Lokhttp3/ab;

    move-result-object v8

    invoke-virtual {v0, v4, v7, v8}, Lokhttp3/x$a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/x$a;

    goto :goto_1

    .line 69
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/youzan/androidsdk/loader/http/f;->b:Lokhttp3/aa$a;

    invoke-virtual {v0}, Lokhttp3/x$a;->a()Lokhttp3/x;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    .line 82
    .end local v0    # "builder":Lokhttp3/x$a;
    :goto_2
    return-void

    .line 72
    :cond_5
    new-instance v0, Lokhttp3/r$a;

    invoke-direct {v0}, Lokhttp3/r$a;-><init>()V

    .line 73
    .local v0, "builder":Lokhttp3/r$a;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 75
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 76
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v5, ""

    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0, v4, v5}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    goto :goto_3

    .line 80
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/youzan/androidsdk/loader/http/f;->b:Lokhttp3/aa$a;

    invoke-virtual {v0}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    goto :goto_2
.end method
