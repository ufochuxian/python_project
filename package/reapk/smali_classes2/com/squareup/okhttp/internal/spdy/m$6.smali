.class Lcom/squareup/okhttp/internal/spdy/m$6;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/m;->a(ILokio/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lokio/c;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/squareup/okhttp/internal/spdy/m;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ILokio/c;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->c:Lokio/c;

    iput p6, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->d:I

    iput-boolean p7, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->e:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 6

    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->f:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/m;->h(Lcom/squareup/okhttp/internal/spdy/m;)Lcom/squareup/okhttp/internal/spdy/j;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->a:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->c:Lokio/c;

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->d:I

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->e:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/squareup/okhttp/internal/spdy/j;->a(ILokio/e;IZ)Z

    move-result v0

    .line 849
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->a:I

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 850
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->e:Z

    if-eqz v1, :cond_2

    .line 851
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->f:Lcom/squareup/okhttp/internal/spdy/m;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->f:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/m;->i(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Set;

    move-result-object v1

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/m$6;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 853
    monitor-exit v2

    .line 857
    .end local v0    # "cancel":Z
    :cond_2
    :goto_0
    return-void

    .line 853
    .restart local v0    # "cancel":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 855
    .end local v0    # "cancel":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
