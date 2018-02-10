.class final Lokio/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lokio/y;

.field final synthetic b:Lokio/q;


# direct methods
.method constructor <init>(Lokio/q;)V
    .locals 1
    .param p1, "this$0"    # Lokio/q;

    .prologue
    .line 59
    iput-object p1, p0, Lokio/q$a;->b:Lokio/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lokio/y;

    invoke-direct {v0}, Lokio/y;-><init>()V

    iput-object v0, p0, Lokio/q$a;->a:Lokio/y;

    return-void
.end method


# virtual methods
.method public a(Lokio/c;J)V
    .locals 12
    .param p1, "source"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 63
    iget-object v4, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v5, v4, Lokio/q;->b:Lokio/c;

    monitor-enter v5

    .line 64
    :try_start_0
    iget-object v4, p0, Lokio/q$a;->b:Lokio/q;

    iget-boolean v4, v4, Lokio/q;->c:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "closed"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 69
    :cond_0
    :try_start_1
    iget-object v4, p0, Lokio/q$a;->b:Lokio/q;

    iget-wide v6, v4, Lokio/q;->a:J

    iget-object v4, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v4, v4, Lokio/q;->b:Lokio/c;

    invoke-virtual {v4}, Lokio/c;->a()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 70
    .local v0, "bufferSpaceAvailable":J
    cmp-long v4, v0, v10

    if-nez v4, :cond_2

    .line 71
    iget-object v4, p0, Lokio/q$a;->a:Lokio/y;

    iget-object v6, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v6, v6, Lokio/q;->b:Lokio/c;

    invoke-virtual {v4, v6}, Lokio/y;->a(Ljava/lang/Object;)V

    .line 66
    .end local v0    # "bufferSpaceAvailable":J
    :cond_1
    :goto_0
    cmp-long v4, p2, v10

    if-lez v4, :cond_3

    .line 67
    iget-object v4, p0, Lokio/q$a;->b:Lokio/q;

    iget-boolean v4, v4, Lokio/q;->d:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v6, "source is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    .restart local v0    # "bufferSpaceAvailable":J
    :cond_2
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 76
    .local v2, "bytesToWrite":J
    iget-object v4, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v4, v4, Lokio/q;->b:Lokio/c;

    invoke-virtual {v4, p1, v2, v3}, Lokio/c;->a(Lokio/c;J)V

    .line 77
    sub-long/2addr p2, v2

    .line 78
    iget-object v4, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v4, v4, Lokio/q;->b:Lokio/c;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 80
    .end local v0    # "bufferSpaceAvailable":J
    .end local v2    # "bytesToWrite":J
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v1, v0, Lokio/q;->b:Lokio/c;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    iget-boolean v0, v0, Lokio/q;->c:Z

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokio/q$a;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    :try_start_2
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokio/q;->c:Z

    .line 101
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v0, v0, Lokio/q;->b:Lokio/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100
    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lokio/q$a;->b:Lokio/q;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/q;->c:Z

    .line 101
    iget-object v2, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v2, v2, Lokio/q;->b:Lokio/c;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v1, v0, Lokio/q;->b:Lokio/c;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    iget-boolean v0, v0, Lokio/q;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokio/q$a;->a:Lokio/y;

    iget-object v2, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v2, v2, Lokio/q;->b:Lokio/c;

    invoke-virtual {v0, v2}, Lokio/y;->a(Ljava/lang/Object;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    iget-object v0, v0, Lokio/q;->b:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 88
    iget-object v0, p0, Lokio/q$a;->b:Lokio/q;

    iget-boolean v0, v0, Lokio/q;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    return-void
.end method

.method public timeout()Lokio/y;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lokio/q$a;->a:Lokio/y;

    return-object v0
.end method
