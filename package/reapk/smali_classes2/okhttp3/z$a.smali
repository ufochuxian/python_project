.class final Lokhttp3/z$a;
.super Lokhttp3/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/z;

.field private final c:Lokhttp3/f;


# direct methods
.method private constructor <init>(Lokhttp3/z;Lokhttp3/f;)V
    .locals 4
    .param p1, "this$0"    # Lokhttp3/z;
    .param p2, "responseCallback"    # Lokhttp3/f;

    .prologue
    .line 100
    iput-object p1, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    .line 101
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokhttp3/z;->h()Lokhttp3/u;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-object p2, p0, Lokhttp3/z$a;->c:Lokhttp3/f;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/z;Lokhttp3/f;Lokhttp3/z$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/z;
    .param p2, "x1"    # Lokhttp3/f;
    .param p3, "x2"    # Lokhttp3/z$1;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lokhttp3/z$a;-><init>(Lokhttp3/z;Lokhttp3/f;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    iget-object v0, v0, Lokhttp3/z;->a:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Lokhttp3/aa;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    iget-object v0, v0, Lokhttp3/z;->a:Lokhttp3/aa;

    return-object v0
.end method

.method c()Lokhttp3/z;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    return-object v0
.end method

.method protected d()V
    .locals 7

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "signalledCallback":Z
    :try_start_0
    iget-object v3, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-static {v3}, Lokhttp3/z;->a(Lokhttp3/z;)Lokhttp3/ac;

    move-result-object v1

    .line 121
    .local v1, "response":Lokhttp3/ac;
    iget-object v3, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-static {v3}, Lokhttp3/z;->b(Lokhttp3/z;)Lokhttp3/internal/b/l;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/b/l;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const/4 v2, 0x1

    .line 123
    iget-object v3, p0, Lokhttp3/z$a;->c:Lokhttp3/f;

    iget-object v4, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lokhttp3/f;->onFailure(Lokhttp3/e;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    iget-object v3, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-static {v3}, Lokhttp3/z;->d(Lokhttp3/z;)Lokhttp3/y;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/y;->t()Lokhttp3/p;

    move-result-object v3

    invoke-virtual {v3, p0}, Lokhttp3/p;->b(Lokhttp3/z$a;)V

    .line 138
    .end local v1    # "response":Lokhttp3/ac;
    :goto_1
    return-void

    .line 125
    .restart local v1    # "response":Lokhttp3/ac;
    :cond_0
    const/4 v2, 0x1

    .line 126
    :try_start_1
    iget-object v3, p0, Lokhttp3/z$a;->c:Lokhttp3/f;

    iget-object v4, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-interface {v3, v4, v1}, Lokhttp3/f;->onResponse(Lokhttp3/e;Lokhttp3/ac;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    .end local v1    # "response":Lokhttp3/ac;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 131
    :try_start_2
    invoke-static {}, Lokhttp3/internal/d/e;->b()Lokhttp3/internal/d/e;

    move-result-object v3

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback failure for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-static {v6}, Lokhttp3/z;->c(Lokhttp3/z;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lokhttp3/internal/d/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :goto_2
    iget-object v3, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-static {v3}, Lokhttp3/z;->d(Lokhttp3/z;)Lokhttp3/y;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/y;->t()Lokhttp3/p;

    move-result-object v3

    invoke-virtual {v3, p0}, Lokhttp3/p;->b(Lokhttp3/z$a;)V

    goto :goto_1

    .line 133
    :cond_1
    :try_start_3
    iget-object v3, p0, Lokhttp3/z$a;->c:Lokhttp3/f;

    iget-object v4, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-interface {v3, v4, v0}, Lokhttp3/f;->onFailure(Lokhttp3/e;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lokhttp3/z$a;->a:Lokhttp3/z;

    invoke-static {v4}, Lokhttp3/z;->d(Lokhttp3/z;)Lokhttp3/y;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/y;->t()Lokhttp3/p;

    move-result-object v4

    invoke-virtual {v4, p0}, Lokhttp3/p;->b(Lokhttp3/z$a;)V

    throw v3
.end method
