.class public final Lcom/google/android/exoplayer/upstream/UdpDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0


# instance fields
.field private address:Ljava/net/InetAddress;

.field private dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;

    .prologue
    .line 52
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/UdpDataSource;-><init>(Lcom/google/android/exoplayer/upstream/TransferListener;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/TransferListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p2, "maxPacketSize"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 63
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    .line 64
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    .line 65
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 130
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 132
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 133
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 134
    iput v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    .line 135
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 136
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->opened:Z

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 141
    :cond_2
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 7
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3a

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 70
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "uri":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, "port":I
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 76
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v4, v5, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 77
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    new-instance v4, Ljava/net/MulticastSocket;

    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 79
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 80
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->opened:Z

    .line 89
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v4}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 92
    :cond_0
    const-wide/16 v4, -0x1

    return-wide v4

    .line 82
    :cond_1
    :try_start_1
    new-instance v4, Ljava/net/DatagramSocket;

    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v4
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .prologue
    .line 97
    iget v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    if-nez v3, :cond_0

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    .line 106
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    iget v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    sub-int v2, v3, v4

    .line 112
    .local v2, "packetOffset":I
    iget v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    .local v0, "bytesToRead":I
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v3, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    .line 115
    return v0

    .line 101
    .end local v0    # "bytesToRead":I
    .end local v2    # "packetOffset":I
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
