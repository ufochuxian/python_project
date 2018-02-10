.class Lcom/squareup/okhttp/internal/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a;->b(Lcom/squareup/okhttp/internal/a;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 172
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    return-void

    .line 175
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a;->c(Lcom/squareup/okhttp/internal/a;)V

    .line 176
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a;->d(Lcom/squareup/okhttp/internal/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a;->e(Lcom/squareup/okhttp/internal/a;)V

    .line 178
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$1;->a:Lcom/squareup/okhttp/internal/a;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
