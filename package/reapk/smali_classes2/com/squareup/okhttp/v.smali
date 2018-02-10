.class public final Lcom/squareup/okhttp/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/v$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/squareup/okhttp/p;

.field private final d:Lcom/squareup/okhttp/w;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/net/URL;

.field private volatile g:Ljava/net/URI;

.field private volatile h:Lcom/squareup/okhttp/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/v$a;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/v$a;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/squareup/okhttp/v$a;->a(Lcom/squareup/okhttp/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/squareup/okhttp/v$a;->b(Lcom/squareup/okhttp/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v;->b:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/squareup/okhttp/v$a;->c(Lcom/squareup/okhttp/v$a;)Lcom/squareup/okhttp/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v;->c:Lcom/squareup/okhttp/p;

    .line 47
    invoke-static {p1}, Lcom/squareup/okhttp/v$a;->d(Lcom/squareup/okhttp/v$a;)Lcom/squareup/okhttp/w;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v;->d:Lcom/squareup/okhttp/w;

    .line 48
    invoke-static {p1}, Lcom/squareup/okhttp/v$a;->e(Lcom/squareup/okhttp/v$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/v$a;->e(Lcom/squareup/okhttp/v$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/v;->e:Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Lcom/squareup/okhttp/v$a;->f(Lcom/squareup/okhttp/v$a;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v;->f:Ljava/net/URL;

    .line 50
    return-void

    :cond_0
    move-object v0, p0

    .line 48
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/v$a;Lcom/squareup/okhttp/v$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/v$a;
    .param p2, "x1"    # Lcom/squareup/okhttp/v$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/v;-><init>(Lcom/squareup/okhttp/v$a;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/v;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/v;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/v;->f:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/v;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/w;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/v;->d:Lcom/squareup/okhttp/w;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/v;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/v;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/p;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/v;->c:Lcom/squareup/okhttp/p;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/v;->c:Lcom/squareup/okhttp/p;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/URL;
    .locals 5

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/v;->f:Ljava/net/URL;

    .line 55
    .local v1, "result":Ljava/net/URL;
    if-eqz v1, :cond_0

    .end local v1    # "result":Ljava/net/URL;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/net/URL;
    :cond_0
    new-instance v1, Ljava/net/URL;

    .end local v1    # "result":Ljava/net/URL;
    iget-object v2, p0, Lcom/squareup/okhttp/v;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/squareup/okhttp/v;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public b()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/v;->g:Ljava/net/URI;

    .line 64
    .local v1, "result":Ljava/net/URI;
    if-eqz v1, :cond_0

    .end local v1    # "result":Ljava/net/URI;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/net/URI;
    :cond_0
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/h;->a(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v1

    .end local v1    # "result":Ljava/net/URI;
    iput-object v1, p0, Lcom/squareup/okhttp/v;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
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
    .line 87
    iget-object v0, p0, Lcom/squareup/okhttp/v;->c:Lcom/squareup/okhttp/p;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/p;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/squareup/okhttp/p;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/v;->c:Lcom/squareup/okhttp/p;

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/w;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/squareup/okhttp/v;->d:Lcom/squareup/okhttp/w;

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/v;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Lcom/squareup/okhttp/v$a;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/squareup/okhttp/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/v$a;-><init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/v$1;)V

    return-object v0
.end method

.method public i()Lcom/squareup/okhttp/d;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/okhttp/v;->h:Lcom/squareup/okhttp/d;

    .line 108
    .local v0, "result":Lcom/squareup/okhttp/d;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/squareup/okhttp/d;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/squareup/okhttp/d;
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/v;->c:Lcom/squareup/okhttp/p;

    invoke-static {v1}, Lcom/squareup/okhttp/d;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/d;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/okhttp/d;
    iput-object v0, p0, Lcom/squareup/okhttp/v;->h:Lcom/squareup/okhttp/d;

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/squareup/okhttp/v;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
