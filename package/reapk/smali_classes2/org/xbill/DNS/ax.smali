.class final Lorg/xbill/DNS/ax;
.super Lorg/xbill/DNS/c;
.source "SourceFile"


# static fields
.field private static final c:I = 0x400

.field private static final d:I = 0xffff

.field private static final e:I = 0xfbff

.field private static f:Ljava/security/SecureRandom;

.field private static volatile g:Z


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/xbill/DNS/ax;->f:Ljava/security/SecureRandom;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xbill/DNS/ax;->g:Z

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/xbill/DNS/ay;

    invoke-direct {v1}, Lorg/xbill/DNS/ay;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/c;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/ax;->h:Z

    .line 48
    return-void
.end method

.method private a(Ljava/net/InetSocketAddress;)V
    .locals 6
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    sget-boolean v4, Lorg/xbill/DNS/ax;->g:Z

    if-eqz v4, :cond_1

    .line 55
    const-wide/16 v4, 0x2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    sget-boolean v4, Lorg/xbill/DNS/ax;->g:Z

    if-eqz v4, :cond_1

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 63
    :cond_1
    iget-object v4, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 66
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v4, 0x400

    if-ge v1, v4, :cond_0

    .line 68
    :try_start_1
    sget-object v4, Lorg/xbill/DNS/ax;->f:Ljava/security/SecureRandom;

    const v5, 0xfbff

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    add-int/lit16 v2, v4, 0x400

    .line 70
    .local v2, "port":I
    if-eqz p1, :cond_2

    .line 71
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 75
    .local v3, "temp":Ljava/net/InetSocketAddress;
    :goto_3
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 76
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/xbill/DNS/ax;->h:Z

    goto :goto_1

    .line 79
    .end local v2    # "port":I
    .end local v3    # "temp":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v4

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 74
    .restart local v2    # "port":I
    :cond_2
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "temp":Ljava/net/InetSocketAddress;
    goto :goto_3

    .line 57
    .end local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    .end local v1    # "i":I
    .end local v2    # "port":I
    .end local v3    # "temp":Ljava/net/InetSocketAddress;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 11
    sput-boolean p0, Lorg/xbill/DNS/ax;->g:Z

    return p0
.end method

.method static a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B
    .locals 2
    .param p0, "local"    # Ljava/net/SocketAddress;
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "data"    # [B
    .param p3, "max"    # I
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lorg/xbill/DNS/ax;

    invoke-direct {v0, p4, p5}, Lorg/xbill/DNS/ax;-><init>(J)V

    .line 149
    .local v0, "client":Lorg/xbill/DNS/ax;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/ax;->a(Ljava/net/SocketAddress;)V

    .line 150
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/ax;->b(Ljava/net/SocketAddress;)V

    .line 151
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/ax;->a([B)V

    .line 152
    invoke-virtual {v0, p3}, Lorg/xbill/DNS/ax;->a(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Lorg/xbill/DNS/ax;->a()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/xbill/DNS/ax;->a()V

    throw v1
.end method

.method static a(Ljava/net/SocketAddress;[BIJ)[B
    .locals 7
    .param p0, "addr"    # Ljava/net/SocketAddress;
    .param p1, "data"    # [B
    .param p2, "max"    # I
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/ax;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v0

    return-object v0
.end method

.method static b()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/xbill/DNS/ax;->f:Ljava/security/SecureRandom;

    return-object v0
.end method


# virtual methods
.method a(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v1, p1

    .line 90
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ax;->a(Ljava/net/InetSocketAddress;)V

    .line 91
    iget-boolean v1, p0, Lorg/xbill/DNS/ax;->h:Z

    if-eqz v1, :cond_2

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    if-eqz p1, :cond_1

    .line 96
    iget-object v1, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 97
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xbill/DNS/ax;->h:Z

    goto :goto_0
.end method

.method a([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 113
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    const-string v1, "UDP write"

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v1, v2, v3, p1}, Lorg/xbill/DNS/ax;->a(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 115
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 116
    return-void
.end method

.method a(I)[B
    .locals 11
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 120
    iget-object v6, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 121
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    new-array v3, p1, [B

    .line 122
    .local v3, "temp":[B
    iget-object v6, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 124
    :goto_0
    :try_start_0
    iget-object v6, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    iget-object v6, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    iget-wide v8, p0, Lorg/xbill/DNS/ax;->a:J

    invoke-static {v6, v8, v9}, Lorg/xbill/DNS/ax;->a(Ljava/nio/channels/SelectionKey;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    iget-object v7, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_0
    throw v6

    .line 128
    :cond_1
    iget-object v6, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 131
    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v4, v6

    .line 132
    .local v4, "ret":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    .line 133
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 134
    :cond_3
    long-to-int v2, v4

    .line 135
    .local v2, "len":I
    new-array v1, v2, [B

    .line 136
    .local v1, "data":[B
    invoke-static {v3, v10, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    const-string v6, "UDP read"

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {v6, v7, v8, v1}, Lorg/xbill/DNS/ax;->a(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 139
    return-object v1
.end method

.method b(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v1, p0, Lorg/xbill/DNS/ax;->h:Z

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/ax;->a(Ljava/net/SocketAddress;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ax;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 107
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 108
    return-void
.end method
