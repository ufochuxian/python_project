.class final Lcom/squareup/okhttp/e$b;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/e;

.field private final c:Lcom/squareup/okhttp/f;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/f;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/squareup/okhttp/e;
    .param p2, "responseCallback"    # Lcom/squareup/okhttp/f;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 133
    iput-object p1, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    .line 134
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    invoke-virtual {v3}, Lcom/squareup/okhttp/v;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lcom/squareup/okhttp/e$b;->c:Lcom/squareup/okhttp/f;

    .line 136
    iput-boolean p3, p0, Lcom/squareup/okhttp/e$b;->d:Z

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/f;ZLcom/squareup/okhttp/e$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/e;
    .param p2, "x1"    # Lcom/squareup/okhttp/f;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/squareup/okhttp/e$1;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/e$b;-><init>(Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/f;Z)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    iget-object v0, v0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/squareup/okhttp/v;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    iget-object v0, v0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    return-object v0
.end method

.method c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    iget-object v0, v0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/e;->c()V

    .line 153
    return-void
.end method

.method e()Lcom/squareup/okhttp/e;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    return-object v0
.end method

.method protected f()V
    .locals 7

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "signalledCallback":Z
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    iget-boolean v4, p0, Lcom/squareup/okhttp/e$b;->d:Z

    invoke-static {v3, v4}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/e;Z)Lcom/squareup/okhttp/x;

    move-result-object v1

    .line 163
    .local v1, "response":Lcom/squareup/okhttp/x;
    iget-object v3, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    iget-boolean v3, v3, Lcom/squareup/okhttp/e;->a:Z

    if-eqz v3, :cond_0

    .line 164
    const/4 v2, 0x1

    .line 165
    iget-object v3, p0, Lcom/squareup/okhttp/e$b;->c:Lcom/squareup/okhttp/f;

    iget-object v4, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    iget-object v4, v4, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/v;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    invoke-static {v3}, Lcom/squareup/okhttp/e;->b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/squareup/okhttp/m;->b(Lcom/squareup/okhttp/e$b;)V

    .line 180
    .end local v1    # "response":Lcom/squareup/okhttp/x;
    :goto_1
    return-void

    .line 167
    .restart local v1    # "response":Lcom/squareup/okhttp/x;
    :cond_0
    const/4 v2, 0x1

    .line 168
    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/e$b;->c:Lcom/squareup/okhttp/f;

    invoke-interface {v3, v1}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/x;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v1    # "response":Lcom/squareup/okhttp/x;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 173
    :try_start_2
    sget-object v3, Lcom/squareup/okhttp/internal/c;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback failure for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    invoke-static {v6}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/e;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :goto_2
    iget-object v3, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    invoke-static {v3}, Lcom/squareup/okhttp/e;->b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/squareup/okhttp/m;->b(Lcom/squareup/okhttp/e$b;)V

    goto :goto_1

    .line 175
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/squareup/okhttp/e$b;->c:Lcom/squareup/okhttp/f;

    iget-object v4, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    iget-object v4, v4, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->g()Lcom/squareup/okhttp/v;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/v;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/squareup/okhttp/e$b;->a:Lcom/squareup/okhttp/e;

    invoke-static {v4}, Lcom/squareup/okhttp/e;->b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/squareup/okhttp/m;->b(Lcom/squareup/okhttp/e$b;)V

    throw v3
.end method
