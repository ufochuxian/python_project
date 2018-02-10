.class Lcom/squareup/okhttp/internal/spdy/m$b$1;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/m$b;->a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/spdy/n;

.field final synthetic c:Lcom/squareup/okhttp/internal/spdy/m$b;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/m$b;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/n;)V
    .locals 0
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/spdy/m$b;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/m$b$1;->c:Lcom/squareup/okhttp/internal/spdy/m$b;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/m$b$1;->a:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    .prologue
    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b$1;->c:Lcom/squareup/okhttp/internal/spdy/m$b;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/m;->f(Lcom/squareup/okhttp/internal/spdy/m;)Lcom/squareup/okhttp/internal/spdy/g;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$b$1;->a:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/spdy/g;->a(Lcom/squareup/okhttp/internal/spdy/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
