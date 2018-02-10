.class Lorg/xbill/DNS/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lorg/xbill/DNS/aa;


# instance fields
.field protected a:J

.field protected b:Ljava/nio/channels/SelectionKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lorg/xbill/DNS/c;->c:Lorg/xbill/DNS/aa;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/SelectableChannel;J)V
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "done":Z
    const/4 v1, 0x0

    .line 24
    .local v1, "selector":Ljava/nio/channels/Selector;
    iput-wide p2, p0, Lorg/xbill/DNS/c;->a:J

    .line 26
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 27
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 28
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/c;->b:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v0, 0x1

    .line 32
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    .line 34
    :cond_0
    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 37
    :cond_1
    return-void

    .line 32
    :catchall_0
    move-exception v2

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    .line 34
    :cond_2
    if-nez v0, :cond_3

    .line 35
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V

    :cond_3
    throw v2
.end method

.method protected static a(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "remote"    # Ljava/net/SocketAddress;
    .param p3, "data"    # [B

    .prologue
    .line 55
    const-string v0, "verbosemsg"

    invoke-static {v0}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, p3}, Lorg/xbill/DNS/b/e;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_0
    sget-object v0, Lorg/xbill/DNS/c;->c:Lorg/xbill/DNS/aa;

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lorg/xbill/DNS/c;->c:Lorg/xbill/DNS/aa;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/xbill/DNS/aa;->a(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 59
    :cond_1
    return-void
.end method

.method protected static a(Ljava/nio/channels/SelectionKey;J)V
    .locals 9
    .param p0, "key"    # Ljava/nio/channels/SelectionKey;
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, p1, v4

    .line 42
    .local v2, "timeout":J
    const/4 v0, 0x0

    .line 43
    .local v0, "nkeys":I
    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    .line 47
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 48
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v1

    .line 45
    :cond_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method static a(Lorg/xbill/DNS/aa;)V
    .locals 0
    .param p0, "logger"    # Lorg/xbill/DNS/aa;

    .prologue
    .line 69
    sput-object p0, Lorg/xbill/DNS/c;->c:Lorg/xbill/DNS/aa;

    .line 70
    return-void
.end method


# virtual methods
.method a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/xbill/DNS/c;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 64
    iget-object v0, p0, Lorg/xbill/DNS/c;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 65
    return-void
.end method
