.class Lcom/squareup/okhttp/internal/a$a$1;
.super Lcom/squareup/okhttp/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/a$a;->b(I)Lokio/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a$a;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a$a;Lokio/w;)V
    .locals 0
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/a$a;
    .param p2, "delegate"    # Lokio/w;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a$a$1;->a:Lcom/squareup/okhttp/internal/a$a;

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/b;-><init>(Lokio/w;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a$1;->a:Lcom/squareup/okhttp/internal/a$a;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a$a;->a:Lcom/squareup/okhttp/internal/a;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$a$1;->a:Lcom/squareup/okhttp/internal/a$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/a$a;->a(Lcom/squareup/okhttp/internal/a$a;Z)Z

    .line 884
    monitor-exit v1

    .line 885
    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
