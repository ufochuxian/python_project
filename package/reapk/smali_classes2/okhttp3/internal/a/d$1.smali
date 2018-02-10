.class Lokhttp3/internal/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/a/d;


# direct methods
.method constructor <init>(Lokhttp3/internal/a/d;)V
    .locals 0
    .param p1, "this$0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 170
    iput-object p1, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    iget-object v4, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    monitor-enter v4

    .line 173
    :try_start_0
    iget-object v5, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    invoke-static {v5}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    iget-object v3, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    invoke-static {v3}, Lokhttp3/internal/a/d;->b(Lokhttp3/internal/a/d;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 174
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 173
    goto :goto_0

    .line 178
    :cond_1
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    invoke-static {v2}, Lokhttp3/internal/a/d;->c(Lokhttp3/internal/a/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :goto_2
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    invoke-static {v2}, Lokhttp3/internal/a/d;->d(Lokhttp3/internal/a/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    invoke-static {v2}, Lokhttp3/internal/a/d;->e(Lokhttp3/internal/a/d;)V

    .line 186
    iget-object v2, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "ignored":Ljava/io/IOException;
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d;Z)Z

    goto :goto_2

    .line 188
    .end local v1    # "ignored":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/a/d;->b(Lokhttp3/internal/a/d;Z)Z

    .line 190
    iget-object v2, p0, Lokhttp3/internal/a/d$1;->a:Lokhttp3/internal/a/d;

    invoke-static {}, Lokhttp3/internal/a/d;->i()Lokio/w;

    move-result-object v3

    invoke-static {v3}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d;Lokio/d;)Lokio/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
