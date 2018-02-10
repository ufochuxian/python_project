.class Lcom/squareup/okhttp/internal/spdy/m$b;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/squareup/okhttp/internal/spdy/a;

.field final synthetic c:Lcom/squareup/okhttp/internal/spdy/m;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/m;)V
    .locals 4
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    .line 563
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/m;Lcom/squareup/okhttp/internal/spdy/m$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/m$1;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/m$b;-><init>(Lcom/squareup/okhttp/internal/spdy/m;)V

    return-void
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/k;)V
    .locals 6
    .param p1, "peerSettings"    # Lcom/squareup/okhttp/internal/spdy/k;

    .prologue
    .line 707
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/m;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/m$b$2;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/spdy/m$b$2;-><init>(Lcom/squareup/okhttp/internal/spdy/m$b;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public a(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 772
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v0, p2, p3}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;ILjava/util/List;)V

    .line 777
    return-void
.end method

.method public a(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 754
    if-nez p1, :cond_1

    .line 755
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    monitor-enter v2

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-wide v4, v1, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    .line 757
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 758
    monitor-exit v2

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/spdy/m;->a(I)Lcom/squareup/okhttp/internal/spdy/n;

    move-result-object v0

    .line 761
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/n;
    if-eqz v0, :cond_0

    .line 762
    monitor-enter v0

    .line 763
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/squareup/okhttp/internal/spdy/n;->a(J)V

    .line 764
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 665
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p1}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p1, p2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/spdy/m;->b(I)Lcom/squareup/okhttp/internal/spdy/n;

    move-result-object v0

    .line 670
    .local v0, "rstStream":Lcom/squareup/okhttp/internal/spdy/n;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/n;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .prologue
    .line 734
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 739
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    monitor-enter v3

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/m;->e(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/m;->e(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/spdy/n;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/squareup/okhttp/internal/spdy/n;

    .line 741
    .local v1, "streamsCopy":[Lcom/squareup/okhttp/internal/spdy/n;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/squareup/okhttp/internal/spdy/m;->b(Lcom/squareup/okhttp/internal/spdy/m;Z)Z

    .line 742
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 746
    .local v0, "spdyStream":Lcom/squareup/okhttp/internal/spdy/n;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->a()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 747
    sget-object v4, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/internal/spdy/n;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 748
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/spdy/m;->b(I)Lcom/squareup/okhttp/internal/spdy/n;

    .line 745
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    .end local v0    # "spdyStream":Lcom/squareup/okhttp/internal/spdy/n;
    .end local v1    # "streamsCopy":[Lcom/squareup/okhttp/internal/spdy/n;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 751
    .restart local v1    # "streamsCopy":[Lcom/squareup/okhttp/internal/spdy/n;
    :cond_2
    return-void
.end method

.method public a(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 782
    return-void
.end method

.method public a(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 722
    if-eqz p1, :cond_1

    .line 723
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/m;->c(Lcom/squareup/okhttp/internal/spdy/m;I)Lcom/squareup/okhttp/internal/spdy/i;

    move-result-object v0

    .line 724
    .local v0, "ping":Lcom/squareup/okhttp/internal/spdy/i;
    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/i;->b()V

    .line 731
    .end local v0    # "ping":Lcom/squareup/okhttp/internal/spdy/i;
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, p3, v3}, Lcom/squareup/okhttp/internal/spdy/m;->b(Lcom/squareup/okhttp/internal/spdy/m;ZIILcom/squareup/okhttp/internal/spdy/i;)V

    goto :goto_0
.end method

.method public a(ZILokio/e;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/e;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;ILokio/e;IZ)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1, p2}, Lcom/squareup/okhttp/internal/spdy/m;->a(I)Lcom/squareup/okhttp/internal/spdy/n;

    move-result-object v0

    .line 597
    .local v0, "dataStream":Lcom/squareup/okhttp/internal/spdy/n;
    if-nez v0, :cond_2

    .line 598
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 599
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/e;->h(J)V

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/n;->a(Lokio/e;I)V

    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->l()V

    goto :goto_0
.end method

.method public a(ZLcom/squareup/okhttp/internal/spdy/k;)V
    .locals 11
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/squareup/okhttp/internal/spdy/k;

    .prologue
    .line 676
    const-wide/16 v2, 0x0

    .line 677
    .local v2, "delta":J
    const/4 v7, 0x0

    .line 678
    .local v7, "streamsToNotify":[Lcom/squareup/okhttp/internal/spdy/n;
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    monitor-enter v9

    .line 679
    :try_start_0
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lcom/squareup/okhttp/internal/spdy/k;->l(I)I

    move-result v5

    .line 680
    .local v5, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/spdy/k;->a()V

    .line 681
    :cond_0
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    invoke-virtual {v8, p2}, Lcom/squareup/okhttp/internal/spdy/k;->a(Lcom/squareup/okhttp/internal/spdy/k;)V

    .line 682
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/spdy/m;->a()Lcom/squareup/okhttp/Protocol;

    move-result-object v8

    sget-object v10, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v8, v10, :cond_1

    .line 683
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/spdy/m$b;->a(Lcom/squareup/okhttp/internal/spdy/k;)V

    .line 685
    :cond_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lcom/squareup/okhttp/internal/spdy/k;->l(I)I

    move-result v4

    .line 686
    .local v4, "peerInitialWindowSize":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    if-eq v4, v5, :cond_3

    .line 687
    sub-int v8, v4, v5

    int-to-long v2, v8

    .line 688
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v8}, Lcom/squareup/okhttp/internal/spdy/m;->g(Lcom/squareup/okhttp/internal/spdy/m;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 689
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v8, v2, v3}, Lcom/squareup/okhttp/internal/spdy/m;->a(J)V

    .line 690
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;Z)Z

    .line 692
    :cond_2
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v8}, Lcom/squareup/okhttp/internal/spdy/m;->e(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 693
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v8}, Lcom/squareup/okhttp/internal/spdy/m;->e(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v10}, Lcom/squareup/okhttp/internal/spdy/m;->e(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lcom/squareup/okhttp/internal/spdy/n;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/n;

    move-object v7, v0

    .line 696
    :cond_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    if-eqz v7, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_4

    .line 698
    array-length v9, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v6, v7, v8

    .line 699
    .local v6, "stream":Lcom/squareup/okhttp/internal/spdy/n;
    monitor-enter v6

    .line 700
    :try_start_1
    invoke-virtual {v6, v2, v3}, Lcom/squareup/okhttp/internal/spdy/n;->a(J)V

    .line 701
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 696
    .end local v4    # "peerInitialWindowSize":I
    .end local v5    # "priorWriteWindowSize":I
    .end local v6    # "stream":Lcom/squareup/okhttp/internal/spdy/n;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 701
    .restart local v4    # "peerInitialWindowSize":I
    .restart local v5    # "priorWriteWindowSize":I
    .restart local v6    # "stream":Lcom/squareup/okhttp/internal/spdy/n;
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 704
    .end local v6    # "stream":Lcom/squareup/okhttp/internal/spdy/n;
    :cond_4
    return-void
.end method

.method public a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/squareup/okhttp/internal/spdy/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 610
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p3}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p3, p5, p2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;ILjava/util/List;Z)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    monitor-enter v7

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/m;->b(Lcom/squareup/okhttp/internal/spdy/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v7

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 619
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1, p3}, Lcom/squareup/okhttp/internal/spdy/m;->a(I)Lcom/squareup/okhttp/internal/spdy/n;

    move-result-object v6

    .line 621
    .local v6, "stream":Lcom/squareup/okhttp/internal/spdy/n;
    if-nez v6, :cond_6

    .line 623
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, p3, v2}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 625
    monitor-exit v7

    goto :goto_0

    .line 629
    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/m;->c(Lcom/squareup/okhttp/internal/spdy/m;)I

    move-result v1

    if-gt p3, v1, :cond_4

    monitor-exit v7

    goto :goto_0

    .line 632
    :cond_4
    rem-int/lit8 v1, p3, 0x2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/m;->d(Lcom/squareup/okhttp/internal/spdy/m;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_5

    monitor-exit v7

    goto :goto_0

    .line 635
    :cond_5
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/n;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/n;-><init>(ILcom/squareup/okhttp/internal/spdy/m;ZZLjava/util/List;)V

    .line 637
    .local v0, "newStream":Lcom/squareup/okhttp/internal/spdy/n;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1, p3}, Lcom/squareup/okhttp/internal/spdy/m;->b(Lcom/squareup/okhttp/internal/spdy/m;I)I

    .line 638
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/m;->e(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/m;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/m$b$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v8}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/squareup/okhttp/internal/spdy/m$b$1;-><init>(Lcom/squareup/okhttp/internal/spdy/m$b;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/n;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 648
    monitor-exit v7

    goto :goto_0

    .line 650
    .end local v0    # "newStream":Lcom/squareup/okhttp/internal/spdy/n;
    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 654
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v6, v1}, Lcom/squareup/okhttp/internal/spdy/n;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 655
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1, p3}, Lcom/squareup/okhttp/internal/spdy/m;->b(I)Lcom/squareup/okhttp/internal/spdy/n;

    goto/16 :goto_0

    .line 660
    :cond_7
    invoke-virtual {v6, p5, p6}, Lcom/squareup/okhttp/internal/spdy/n;->a(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 661
    if-eqz p2, :cond_0

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/spdy/n;->l()V

    goto/16 :goto_0
.end method

.method protected f()V
    .locals 6

    .prologue
    .line 567
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 568
    .local v0, "connectionErrorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 570
    .local v2, "streamErrorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/spdy/m;->g:Lcom/squareup/okhttp/internal/spdy/o;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/m;->h:Ljava/net/Socket;

    invoke-static {v4}, Lokio/o;->b(Ljava/net/Socket;)Lokio/x;

    move-result-object v4

    invoke-static {v4}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-boolean v5, v5, Lcom/squareup/okhttp/internal/spdy/m;->b:Z

    invoke-interface {v3, v4, v5}, Lcom/squareup/okhttp/internal/spdy/o;->a(Lokio/e;Z)Lcom/squareup/okhttp/internal/spdy/a;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->a:Lcom/squareup/okhttp/internal/spdy/a;

    .line 571
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/spdy/m;->b:Z

    if-nez v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->a:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/spdy/a;->a()V

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->a:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-interface {v3, p0}, Lcom/squareup/okhttp/internal/spdy/a;->a(Lcom/squareup/okhttp/internal/spdy/a$a;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 576
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 577
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v3, v0, v2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->a:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 588
    :goto_1
    return-void

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 580
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    :try_start_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v3, v0, v2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 586
    :goto_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->a:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 582
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 583
    :try_start_4
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->c:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {v4, v0, v2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/m;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 586
    :goto_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m$b;->a:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    throw v3

    .line 584
    :catch_1
    move-exception v4

    goto :goto_3

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method
